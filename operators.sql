use sql_store;
-- select * from customers where birth_date > '1990-01-01' and points > 1000;
-- select * from customers where birth_date > '1990-01-01' or points > 1000;
-- select * from customers where (birth_date > '1990-01-01' or points > 1000) and state='va' ;

-- select * from customers where not(birth_date > '1990-01-01' or points > 1000) ;
-- select * from customers where birth_date <= '1990-01-01' and points <= 1000 ; -- uper query's simplified query

-- exercise : from the order_items table get the items for order #6 where the total price is greater than 30

select* from order_items where order_id=6 and (quantity*unit_price)>30;