-- explicit join syntax
SELECT * from customers c
JOIN orders o
ON c.customer_id=o.customer_id;

-- implicit join syntax
SELECT * from customers,orders -- cross join without where clause
WHERE customers.customer_id=orders.customer_id;