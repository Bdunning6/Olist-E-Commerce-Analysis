# Olist-E-Commerce-Analysis-Project
![image](https://user-images.githubusercontent.com/115194266/227637365-07170c78-d2bd-421b-885f-200b4a05af63.png)

## Table of Contents
1. [Introduction](#introduction)
2. [Dataset](#dataset)
3. [SQL Code](#sql-code)
4. [Visualizations](#visualizations)
5. [Summary](#summary)

### My entire portfolio can be found [here](https://github.com/Bdunning6/Portfolio).

## Introduction
Olist is an e-commerce platform based in Brazil that enables sellers to offer a wide range of products to customers. In this project, I will analyze an Olist dataset to evaluate the company's performance and gain insights into the Brazilian e-commerce market. To achieve this, I will focus on answering four key questions:

1. What are Olist's sales performance metrics and where is the company most successful in Brazil?

2. Which regions and states in Brazil have lower sales for Olist? And what factors contribute to this trend?

3. What are the most popular product categories on Olist? And which categories generate the highest sales?

4. How do customers review Olist products? And does the delivery length of an item affect these reviews positively or negatively?

In addition to addressing these questions, I will also explore other relevant insights about the Brazilian e-commerce market and Olist's performance. Through this project, I aim to leverage my analytical skills and tools such as SQL and Power BI to derive meaningful insights that can help drive business success.



## Dataset 
The dataset holds around 100,000 orders from 2016 to 2018. It is made up of a schema that holds nine tables. The nine tables are:

* olist_order_reviews_dataset
* olist_orders_dataset
* olist_order_payment_dataset
* olist_order_item_dataset
* olist_product_dataset
* olist_sellers_dataset
* olist_geolocation_dataset
* olist_order_customer_dataset
* product_category_name_translation

## SQL Code 

### What's the average sales value?
![image](https://user-images.githubusercontent.com/115194266/227030011-adac6a19-f751-4972-a22e-d85204a71e90.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227030130-c20384cf-9c5f-4cf6-b5b3-0df30a7ac8cf.png)

### Looking at the most common form of payment on Olist
![image](https://user-images.githubusercontent.com/115194266/227030449-ec5bc065-67ba-4051-a8f2-82aaa2367280.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227030578-1b050e87-4ec1-4f2e-9005-c1bbc639a2d6.png)

### What's the average payment for each category of good? Which category had the highest avergage sales?
![image](https://user-images.githubusercontent.com/115194266/227031111-af182261-9ff8-4115-a553-b0ea86a71689.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227031063-f8bd22c0-d92d-47d8-9b35-70bd4a849d18.png)

### What's the average price for each product category?
![image](https://user-images.githubusercontent.com/115194266/227031253-cc0ed45f-f976-4440-8043-c43e7f251045.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227031377-e4b8b3e9-4091-4e10-af7f-36f1566a99cd.png)

### Which Brazilian states have the most orders? 
![image](https://user-images.githubusercontent.com/115194266/227031489-5f2573c5-0150-4c14-a4ed-970148466a35.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227031574-5fdcc6c9-1d53-43b7-82f4-ae7d3727469a.png)

### Looking at Brazilian state orders percentages.
![image](https://user-images.githubusercontent.com/115194266/227031683-72a8691f-fe3d-4e3c-bd2d-0d6f38f53fc1.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227031771-082219ab-c1a8-47c3-8641-55887d045251.png)

### Which cities had the largest amount of orders? And which states did they belong to?
![image](https://user-images.githubusercontent.com/115194266/227031949-6f953b5d-d8f3-4245-88a7-b3b447c20ce6.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227032041-e97395cd-86ab-48c8-a739-98373592df4a.png)

### Looking at highest valued purchases.
![image](https://user-images.githubusercontent.com/115194266/227032279-773b1b3a-c05c-48c2-a083-156bc67b3363.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227032522-b58bb5a9-ead1-4950-9ae1-85f4406b972d.png)

### Looking at the most ordered products.
![image](https://user-images.githubusercontent.com/115194266/227032657-a706f8b1-a981-4b1d-88d6-0a22670ba58f.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227032765-fa3509ca-c339-4ef7-af83-7b6b7bf6988e.png)

### Total sales value and count for each category of product. Ordered by total sales value.
![image](https://user-images.githubusercontent.com/115194266/227032891-1d314a83-88f2-4b47-a65c-953f4632b288.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227032994-d4698224-3dfa-4484-83fd-58946c631390.png)

### What are the average shipping costs for each state?
![image](https://user-images.githubusercontent.com/115194266/227033060-ad14b72b-8ff1-40af-9288-ab34e2d9ae6d.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227033139-79d3ea8c-fea9-4334-8fc1-d8674c16dc7d.png)

### Looking at the sellers with the highest number of sales on Olist and their most-sold product.
![image](https://user-images.githubusercontent.com/115194266/227033568-209e4bbd-4e5e-43f3-9f21-67cf41086db4.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227033485-9c917a7a-68a0-415c-805f-1651359186c0.png)

### What's average review rating on Olist?
![image](https://user-images.githubusercontent.com/115194266/227033658-6ce41c59-a255-426e-97df-a9f952e443d2.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227033725-9e0ad009-b282-4b12-9a3f-7797fc1b45d4.png)

### Using a case function to find out if a product ordered arrived before or after the estimated delivery date.
![image](https://user-images.githubusercontent.com/115194266/227033835-47445788-85ce-4518-b237-25fed5c4d343.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227033920-e3298470-f6bf-457b-9f6d-997d1d67b995.png)

### AVG difference between the estimated and actual delivery dates.
![image](https://user-images.githubusercontent.com/115194266/227034025-94dacae0-22fd-4397-858e-308370201a67.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227034119-7aff67c8-3481-48bb-a462-e1387203853a.png)

### Do the reviews reflect negatively on the item arriving later estimated?
![image](https://user-images.githubusercontent.com/115194266/227034205-57faf39d-6890-4490-b6fe-f76e49e01818.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227034298-4ce7ac7b-d846-48cd-9ba3-e3288bd646ad.png)

### Are the reviews better for orders that arrived before the estimated arrival date?
![image](https://user-images.githubusercontent.com/115194266/227034416-971301a9-7c77-419a-ab90-178056ba17cb.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227034587-65f08426-f725-4c86-92b8-1087d8f2061f.png)

### A view that shows which orders came before or after the estimated delivery time. 
![image](https://user-images.githubusercontent.com/115194266/227034728-6d149e31-db5e-4299-b4d7-2afd0e14f181.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227034976-6a6b53dc-c1ce-4271-bef8-7f1a2b7d29cf.png)

### Second view shows the difference between the estimated and actual delivery dates along with the review score.
![image](https://user-images.githubusercontent.com/115194266/227035091-ff1c6971-65ec-4c96-9e55-d83e27af96eb.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227035162-7a712fe3-47e4-48db-83f6-1c2ec2db9b36.png)


## Visualizations 

[Link to Published Dashboard](https://app.powerbi.com/groups/ec280147-b21d-47d5-9dd9-0c3563bbde5c/reports/5ded60d6-8e8e-48f8-bcf0-d0f2f9f691b0/ReportSection)

### Olist Sales Performance Overview
![image](https://user-images.githubusercontent.com/115194266/229244840-3cd45d7e-f55f-40b6-819b-93d7d6d81f96.png)


### Why Are Sales Lower in Other Regions/States?
![image](https://user-images.githubusercontent.com/115194266/229244869-ca91b482-79e4-4dca-92a2-2d9a7dd20c51.png)


### Olist Product Orders Overview
![image](https://user-images.githubusercontent.com/115194266/229244936-a5ead0d8-6edc-4e12-9d17-0015898e26ca.png)


### Olist Customer Shipment and Reviews
![image](https://user-images.githubusercontent.com/115194266/229244963-171f1505-2ab4-452e-9632-ab9981c86db4.png)


## Summary 

**Question 1: How did Olist perform in sales? Where is Olist the most successful?**

From September 2016 to October 2018, Olist processed a total of 99,440 orders, resulting in $16,008,872 in sales. Interestingly, the average product sale was $154.00. In November 2017, the company recorded the highest number of orders, with 7863 orders and $1,194,820 in sales for the month. This surge in orders and sales may be attributed to the Black Friday shopping event that drives high e-commerce sales. Upon analyzing sales by region, the Southeastern region emerged as the leader in both orders and sales, with 68,265 orders, making up approximately 68.6% of all orders, and generating $10.34 million in sales, out of the total $16.00 million in sales. When examining the top states in terms of total orders and sales, it becomes clear that São Paulo, Rio de Janeiro, and Minas Gerias are the top three states and are all part of the Southeast region. São Paulo emerges as the most lucrative state in Brazil with approximately 42,000 orders and $6 million in total sales.

**Question 2: Why are Sales Lower in Other Regions?**

To better understand Olist's sales performance across Brazil, we need to examine the price differences across different regions. While Olist has performed well in the Southeast and South regions, sales in the other regions of Brazil have been lower. This could be due to the fact that average prices are much higher in the North, Northeast, and Central regions, compared to the South and Southeastern regions. For instance, Paraiba has the highest average price of $191.48, while São Paulo has the lowest average price of $109.65. It is also important to consider shipping costs, with São Paulo having the lowest average shipping costs of $15.15, while Roraima had the highest at $42.98. This could explain why the price is higher, as higher shipping costs impact the final price of the product. As Olist is based in the state of Paraná in the Southern region, it is closer to the most populated regions of Brazil, the Southeastern region, which may account for its higher sales in these regions. Looking further into shipping costs, the average shipping cost for all of Brazil is around $20, while the Southeast's average shipping cost is $17.36. In contrast, the other regions and states have much higher shipping costs, with the average shipping cost being $36.84 in the North, $32.07 in the Northeast, and $23.08 in the Central regions. These higher shipping costs could be due to the distance from Olist's base, with longer distances resulting in higher shipping costs.

**Question 3: What products categories are the most popular? Which products categories receive the most sales?**

The bed, bath and table category received the most orders at 11,115 orders while the health/beauty and sport leisure products came in second and third. The health and beauty section were the second most ordered product category and brought in the most total sales at about $1.45 million. Watches had the second highest total sales while the bed, bath and table product category had the third highest total sales. Looking at the average sales of each product category, we can see that the computer category had the highest average sales by far, holding an average sales value of $1,182. Although the computer category had the highest average sales, it was towards the bottom of the rankings when it came towards total products sold and total sales with only 203 products sold and 237,937 while being towards the bottom of the total sales and total orders charts with only 203 computers were sold. This may indicate that computers are too expensive for the average Olist customer to purchase. 
Looking at the payment types, the use of credit card dominated the boleto (a payment method in Brazil that's regulated by the Federal Bank), voucher and debit card. Using this information, a potential seller on Olist should look to sell either bed, bath and table products or health/beauty products. The potential seller should also make sure that they can take multiple forms of payment, especially the credit card and boleto since these are the most used forms of payment on Olist.

**Question 4: How well reviewed are Olist products? Can the delivery length of an item positively or negatively affect reviews?**

Delivery and the shipment of products is a vital part of e-commerce. This dataset provided numerous recorded dates, including the date the product was purchased, the date the payment method was approved, the date Olist expected the shipped product to arrive to the customer and the actual delivery date. Using these dates, I was able to find out how many products arrived early (before the estimated delivery date) and late (after the estimated delivery date). Most of the products arrived early, although this may be because Olist gives out estimation dates much later than the date they would arrive. Furthermore, we can investigate the average review score for the orders that arrived early and the orders that arrived late. The average review score for all Olists orders is 4.09. The average review score for the orders that came before the estimated delivery date was 4.29 and the average review score for the orders that can later than the estimated delivery date was 2.57, which tells us that a belated delivery leads to more negative reviews.


