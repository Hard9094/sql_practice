USE sql_store;

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
 
 
 -- exercise
 
 use sql_invoicing;
 
SELECT 
	c.client_id,
    c.name,
    p.payment_id,
    p.date,
    p.amount,
    pm.name as 'payment method'
from payments p
JOIN clients c
	ON p.client_id=c.client_id
JOIN payment_methods pm
	ON pm.payment_method_id=p.payment_method;