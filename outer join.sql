USE sql_store;

SELECT * from orders o 
INNER JOIN customers c
ON o.customer_id=c.customer_id;
-- above query is for inner join and that will  return the records which are match in both the tables(intersection) not others records
-- so suppose if we want all the customers wheather they have placed orders or not here the outer join is used 

-- there are 2 types of outer join that are RIGHT OUTER JOIN & LEFT OUTER JOIN 

-- RIGHT OUTER JOIN: OUTER keyword is not compulsory
SELECT
c.customer_id,
c.first_name, 
o.order_id
from orders o 
RIGHT JOIN customers c
ON o.customer_id=c.customer_id
ORDER BY c.customer_id;

-- LEFT OUTER JOIN 
SELECT
c.customer_id,
c.first_name, 
o.order_id
from customers c 
LEFT JOIN orders o
ON c.customer_id=o.customer_id
ORDER BY c.customer_id;

-- JOIN multiple tables using OUTER JOIN
SELECT
c.customer_id,
c.first_name, 
o.order_id,
sh.name as shipper
from customers c
LEFT JOIN orders o 
ON o.customer_id=c.customer_id
LEFT JOIN shippers sh
ON o.shipper_id=sh.shipper_id
ORDER BY c.customer_id;



-- EXERCISE: join product table with the order_items table in such a way that we get all the product_ id wheather for that order has been placed or not ,
-- print only product_id,name and quantity column
-- SELECT 
-- p.product_id,
-- p.name,
-- o.quantity
-- from products p
-- LEFT JOIN order_items o
-- ON p.product_id=o.product_id;


-- exercise
SELECT 
 o.order_id,
 o.order_date,
 c.first_name,
 sh.name as shipper,
 os.name as status
from orders o
LEFT JOIN customers c
ON o.customer_id=c.customer_id
LEFT JOIN shippers sh
ON o.shipper_id=sh.shipper_id
LEFT JOIN order_statuses os
ON o.status= os.order_status_id;