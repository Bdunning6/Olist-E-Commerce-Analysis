/* Olist project */

-- Skills used

USE Olist


-- What's the average sales amount?

SELECT ROUND(AVG(payment_value), 2) as avg_sales
FROM olist_order_payments_dataset$;



-- Looking at the most common form of payment.

SELECT payment_type, COUNT(payment_type) as payment_type_count
FROM olist_order_payments_dataset$
GROUP BY payment_type
ORDER BY 2 desc;



-- What's the average payment for each category of good? Which category had the highest avergage sales?

WITH average_sales_category AS
(
SELECT p.product_id, oi.order_id,product_category_name_english, payment_value
FROM olist_products_dataset$ p
	JOIN product_category_name_translati$ e
	ON p.product_category_name = e.product_category_name
	JOIN olist_order_items_dataset$ oi
	ON p.product_id = oi.product_id
	JOIN olist_order_payments_dataset$ op
	ON oi.order_id = op.order_id
)
SELECT product_category_name_english, ROUND(AVG(payment_value),2) as avg_payment
FROM average_sales_category
GROUP BY product_category_name_english
ORDER BY avg_payment desc;



-- What's the average price for each product category?

WITH product_category_average_price AS
(
SELECT oi.product_id, p.product_category_name, price, product_category_name_english
FROM olist_order_items_dataset$ oi
	JOIN olist_products_dataset$ p
	ON oi.product_id = p.product_id
	JOIN product_category_name_translati$ e
	ON p.product_category_name = e.product_category_name
)
SELECT product_category_name_english, AVG(price) as avg_category_price
FROM product_category_average_price
GROUP BY product_category_name_english
ORDER BY avg_category_price desc;



-- Which Brazilian states have the most orders? 

SELECT customer_state, COUNT(customer_state) as num_of_orders
FROM olist_customers_dataset$ c
	JOIN olist_orders_dataset$ o
	ON c.customer_id=o.customer_id
GROUP by customer_state
ORDER BY num_of_orders desc;



--Looking at Brazilian state orders percentages.

SELECT customer_state, COUNT(*) * 100 / SUM(COUNT(*)) over() as percentage_orders
FROM olist_customers_dataset$
GROUP BY customer_state
ORDER BY 2 desc;


--Which cities had the largest amount of orders and which states did they belong to?

WITH olist_customer_state_orders AS
(
SELECT a.customer_id, order_id, customer_city, customer_state
FROM olist_customers_dataset$ a
	JOIN olist_orders_dataset$ b
	ON a.customer_id =b.customer_id
)
SELECT customer_city, customer_state, COUNT(customer_city) as number_orders
FROM olist_customer_state_orders
GROUP by customer_city, customer_state
ORDER BY number_orders desc;



-- Looking at highest valued purchases.

SELECT DISTINCT(o.order_id), product_category_name_english, payment_value,  payment_type, payment_sequential
FROM olist_orders_dataset$ o
	JOIN olist_order_items_dataset$ oi
	ON o.order_id=oi.order_id
	JOIN olist_products_dataset$ p
	ON oi.product_id=p.product_id
	JOIN olist_order_payments_dataset$ op
	ON o.order_id = op.order_id
	JOIN product_category_name_translati$ e
	ON e.product_category_name = p.product_category_name
ORDER BY payment_value desc;



-- Looking at the most ordered products.

SELECT product_category_name_english, COUNT(p.product_category_name) as number_of_products_sold
FROM olist_products_dataset$ p
	JOIN product_category_name_translati$ e
	ON p.product_category_name = e.product_category_name
GROUP BY product_category_name_english
ORDER BY number_of_products_sold desc;



-- Total sales value and count for each category of product. Ordered by total sales value.

WITH olist_total_sales AS 
(
SELECT p.product_id, p.product_category_name, oi.order_id, payment_value, product_category_name_english
FROM olist_products_dataset$ p 
	JOIN olist_order_items_dataset$ oi
	ON p.product_id = oi.product_id
	JOIN olist_order_payments_dataset$ op
	ON oi.order_id = op.order_id
	JOIN product_category_name_translati$ e
	ON p.product_category_name = e.product_category_name
)
SELECT product_category_name_english, ROUND(SUM(payment_value),2) as total_sales_value, COUNT(product_category_name) as number_sold
FROM olist_total_sales
GROUP BY product_category_name_english
ORDER BY total_sales_value desc;



-- What are the average shipping/freight costs for each state?

WITH shipping_costs AS
(
SELECT customer_state, o.order_id, freight_value
FROM olist_orders_dataset$ o
	JOIN olist_customers_dataset$ c
	ON o.customer_id =c.customer_id
	JOIN olist_order_items_dataset$ oi
	ON o.order_id = oi.order_id
)
SELECT customer_state, AVG(freight_value) as avg_freight_value, count(order_id) as number_of_orders
FROM shipping_costs
GROUP BY customer_state
ORDER BY 2 desc;


-- Looking at the sellers with the highest number of sales on Olist and their most sold product.

WITH highest_sellers AS
(
SELECT s.seller_id, payment_value, oi.order_id, oi.product_id, product_category_name_english
FROM olist_sellers_dataset$ s
	JOIN olist_order_items_dataset$ oi
	ON s.seller_id= oi.seller_id
	JOIN olist_order_payments_dataset$ op
	ON oi.order_id = op.order_id
	JOIN olist_products_dataset$ p
	ON oi.product_id = p.product_id
	JOIN product_category_name_translati$ e
	ON p.product_category_name = e.product_category_name
)
SELECT seller_id, product_category_name_english, COUNT(order_id) as order_count, RANK() over (ORDER BY COUNT(order_id) desc) as total_rank
FROM highest_sellers
GROUP BY seller_id, product_category_name_english
ORDER BY order_count desc;



-- What's average review score rating on Olist?

SELECT ROUND(AVG(review_score),2) as avg_olist_rating
FROM olist_order_reviews_dataset$;



-- Using a case function to find out if a product ordered arrived before or after the estimated delivery date.

SELECT o.order_id, CONVERT(varchar, order_delivered_customer_date,1) as actual_delivery_date, CONVERT(varchar, order_estimated_delivery_date,1) as order_estimated_deliver_date,
	CASE
	WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 'Late'
	WHEN order_delivered_customer_date < order_estimated_delivery_date THEN 'Early'
	END as early_or_late_delivery,
review_score
FROM olist_orders_dataset$ o
	JOIN olist_order_reviews_dataset$ r
	ON o.order_id=r.order_id



-- AVG difference between estimated and actual delivery date.

SELECT AVG(DATEDIFF(Day,CONVERT(varchar, order_delivered_customer_date,1), CONVERT(varchar, order_estimated_delivery_date,1))) as average_difference_between_dates
FROM olist_orders_dataset$
WHERE order_delivered_customer_date IS NOT null 
ORDER BY 1 asc;



-- Do the reviews reflect negatively on the the item arriving later then estimated?

WITH negative_reviews_compared AS
(
SELECT o.order_id, review_score, order_delivered_customer_date, order_estimated_delivery_date
FROM olist_orders_dataset$ o
JOIN olist_order_reviews_dataset$ order_r
ON o.order_id = order_r.order_id
)
SELECT DATEDIFF(Day,CONVERT(varchar, order_delivered_customer_date,1), CONVERT(varchar, order_estimated_delivery_date,1)) as different_between_estimtated_actual_delievered_date,
CONVERT(varchar,order_delivered_customer_date,1) as actual_delivered_date, CONVERT(varchar, order_estimated_delivery_date,1) as estimated_delivered_date, review_score
FROM negative_reviews_compared
WHERE order_delivered_customer_date is NOT NULL
GROUP by order_delivered_customer_date, order_estimated_delivery_date, review_score
ORDER BY 1;



-- Are the reviews better for orders than arrived before the estimated arrival date?

WITH positive_reviews_compared AS
(
SELECT o.order_id, review_score, order_delivered_customer_date, order_estimated_delivery_date
FROM olist_orders_dataset$ o
JOIN olist_order_reviews_dataset$ order_r
ON o.order_id = order_r.order_id
)
SELECT  DATEDIFF(Day,CONVERT(varchar, order_delivered_customer_date,1), CONVERT(varchar, order_estimated_delivery_date,1)) as different_between_estimtated_actual_delievered_date,
CONVERT(varchar,order_delivered_customer_date,1) as actual_delivered_date, CONVERT(varchar, order_estimated_delivery_date,1) as estimated_delivered_date, review_score 
FROM positive_reviews_compared
WHERE order_delivered_customer_date is NOT NULL
GROUP by order_delivered_customer_date, order_estimated_delivery_date, review_score
ORDER BY 1 desc;



-- A view that shows which orders came before or after the estimated delivery time. 
DROP VIEW IF EXISTS Early_or_Late

CREATE VIEW Early_or_Late AS
SELECT o.order_id, CONVERT(varchar, order_delivered_customer_date,1) as actual_delivery_date, CONVERT(varchar, order_estimated_delivery_date,1) as order_estimated_deliver_date,
	CASE
	WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 'Late'
	WHEN order_delivered_customer_date < order_estimated_delivery_date THEN 'Early'
	END as early_or_late_delivery,
review_score
FROM olist_orders_dataset$ o
	JOIN olist_order_reviews_dataset$ r
	ON o.order_id=r.order_id

SELECT *
FROM Early_or_Late;



-- Second view that shows the difference between the estimated and actual delivery date along with the review_score. 

DROP VIEW IF EXISTS Delivery_Difference

CREATE VIEW Delivery_Difference AS
WITH negative_reviews_compared AS
(
SELECT o.order_id, review_score, order_delivered_customer_date, order_estimated_delivery_date
FROM olist_orders_dataset$ o
JOIN olist_order_reviews_dataset$ order_r
ON o.order_id = order_r.order_id
)
SELECT DATEDIFF(Day,CONVERT(varchar, order_delivered_customer_date,1), CONVERT(varchar, order_estimated_delivery_date,1)) as different_between_estimtated_actual_delievered_date,
CONVERT(varchar,order_delivered_customer_date,1) as actual_delivered_date, CONVERT(varchar, order_estimated_delivery_date,1) as estimated_delivered_date, review_score
FROM negative_reviews_compared
WHERE order_delivered_customer_date is NOT NULL
GROUP by order_delivered_customer_date, order_estimated_delivery_date, review_score;

SELECT *
FROM Delivery_Difference
ORDER BY 1;



