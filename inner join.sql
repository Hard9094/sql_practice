USE sql_store;
-- joins are used to retrive data(column) from multiple table
-- inner join returns record that have matching values in both tables(comman column) 
-- inner join will be done based on that 'comman column'
-- defualt join is inner join
-- syntax: 
--         SELECT * from table1_name INNER JOIN table2_name ON table1_name.comman_colname=table2_name.comman_colname;
--         SELECT * from table1_name,table2_name WHERE table1_name.comman_colname=table2_name.comman_colname;
-- word INNER in INNER JOIN is not compulsory 

-- example:
--  getting all the columnscustomers
SELECT * from orders INNER JOIN customers 
ON orders.customer_id=customers.customer_id;
SELECT * from customers JOIN orders 
ON orders.customer_id=customers.customer_id;

-- getting perticular columns
 SELECT order_id,first_name,last_name 
 FROM orders JOIN customers 
 ON orders.customer_id=customers.customer_id;
 
 -- getting that comman column(customer_id) on which we have done a inner join 
SELECT orders.customer_id,order_id,first_name,last_name 
FROM orders JOIN customers 
ON orders.customer_id=customers.customer_id 
ORDER BY customer_id,order_id;

-- joining multiple tables
SELECT 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
from orders o
JOIN customers c 
 ON o.customer_id=c.customer_id
JOIN order_statuses os
 ON o.status=os.order_status_id;
 






 

