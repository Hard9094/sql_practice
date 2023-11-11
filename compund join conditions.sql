USE sql_store;

-- when we can not indentify records using single unique column
-- suppose we have a order_items table in that with only one unique column(order_id) we can not uniquely indetify all the datas coz order_id is repeated 
-- so here we use the combination of two columns that can be used for uniquely ideantify the data 
-- IN THAT , that both column will be our primary key in one table that is called as composite primary key 
-- (combination of 2 columns with primary key to identidy the data uniquely)

-- for joining the order_items and order_item_notes based on columns order_id and product_id

SELECT * from order_items oi
JOIN order_item_notes oin
ON oi.order_id = oin.order_id 
 AND oi.product_id = oin.product_id;