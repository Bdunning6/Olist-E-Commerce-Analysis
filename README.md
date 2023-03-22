# Olist-E-Commerce-Analysis

## Table of Contents
1. [Introduction](#introduction)
2. [Dataset](#dataset)
3. [SQL Code](#sql-code)
4. [Visualizations](#visualizations)
5. [Summary](#summary)


## Introduction
Olist is an online e-commerce platform that operates out of Brazil allowing for sellers to offer a variety of products to customers. Through this project, I will analyze an Olist data set in order to answer the following four broad questions:

1. How did Olist perform sales wise? Where is Olist the most successful?

2. Where in does Olist perform poorly in Brazil? Why? 

3. What products are the most popular? Which products recieve the most sales?

4. How well reviewed are Olist products? Can the delivery length of an item positively or negatively affect reviews?

Besides these questions, other insights about the Brazilian E-commerce market and Olist will be developed as well.


## Dataset 
The dataset holds around a 100,000 orders from 2016 to 2018. It is made up of a schema that holds 9 tables. The 9 tables are:

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

### Which cities had the largest amount of orders and which states did they belong to?
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

### What are the average shipping/freight costs for each state?
![image](https://user-images.githubusercontent.com/115194266/227033060-ad14b72b-8ff1-40af-9288-ab34e2d9ae6d.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227033139-79d3ea8c-fea9-4334-8fc1-d8674c16dc7d.png)

### Looking at the sellers with the highest number of sales on Olist and their most sold product.
![image](https://user-images.githubusercontent.com/115194266/227033568-209e4bbd-4e5e-43f3-9f21-67cf41086db4.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227033485-9c917a7a-68a0-415c-805f-1651359186c0.png)

### What's average review score rating on Olist?
![image](https://user-images.githubusercontent.com/115194266/227033658-6ce41c59-a255-426e-97df-a9f952e443d2.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227033725-9e0ad009-b282-4b12-9a3f-7797fc1b45d4.png)

### Using a case function to find out if a product ordered arrived before or after the estimated delivery date.
![image](https://user-images.githubusercontent.com/115194266/227033835-47445788-85ce-4518-b237-25fed5c4d343.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227033920-e3298470-f6bf-457b-9f6d-997d1d67b995.png)

### AVG difference between estimated and actual delivery date.
![image](https://user-images.githubusercontent.com/115194266/227034025-94dacae0-22fd-4397-858e-308370201a67.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227034119-7aff67c8-3481-48bb-a462-e1387203853a.png)

### Do the reviews reflect negatively on the the item arriving later then estimated?
![image](https://user-images.githubusercontent.com/115194266/227034205-57faf39d-6890-4490-b6fe-f76e49e01818.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227034298-4ce7ac7b-d846-48cd-9ba3-e3288bd646ad.png)

### Are the reviews better for orders than arrived before the estimated arrival date?
![image](https://user-images.githubusercontent.com/115194266/227034416-971301a9-7c77-419a-ab90-178056ba17cb.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227034587-65f08426-f725-4c86-92b8-1087d8f2061f.png)

### A view that shows which orders came before or after the estimated delivery time. 
![image](https://user-images.githubusercontent.com/115194266/227034728-6d149e31-db5e-4299-b4d7-2afd0e14f181.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227034976-6a6b53dc-c1ce-4271-bef8-7f1a2b7d29cf.png)

### Second view that shows the difference between the estimated and actual delivery date along with the review_score. 
![image](https://user-images.githubusercontent.com/115194266/227035091-ff1c6971-65ec-4c96-9e55-d83e27af96eb.png)

### Output
![image](https://user-images.githubusercontent.com/115194266/227035162-7a712fe3-47e4-48db-83f6-1c2ec2db9b36.png)


## Visualizations 

[Link to Published Dashboard](https://app.powerbi.com/groups/ec280147-b21d-47d5-9dd9-0c3563bbde5c/reports/5ded60d6-8e8e-48f8-bcf0-d0f2f9f691b0/ReportSection)

### Olist Sales Performance Overview
![image](https://user-images.githubusercontent.com/115194266/227039046-7d844287-c44f-4986-ad0a-08d749c451f5.png)


### Why Are Sales Lower in Other Regions?
![image](https://user-images.githubusercontent.com/115194266/227039476-199a246a-9a39-4371-acea-2c501b8792bb.png)


### Olist Product Orders Overview
![image](https://user-images.githubusercontent.com/115194266/227039691-d48379d3-ec41-4bf7-a99d-36f88520c472.png)


### Olist Customer Shipment and Reviews
![image](https://user-images.githubusercontent.com/115194266/227039863-5a1b7dd7-9ec3-4dd9-9d03-132de304a675.png)




