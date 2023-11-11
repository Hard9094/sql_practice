-- in-not in operator 
-- can be used when multiple conditions are there
use sql_store;
-- select * from customers where state in ('va','fl','ga');
-- select * from customers where state not in ('va','fl','ga');

-- exercise : return products with quantity in stock equal to 49,38,72

select * from products where quantity_in_stock in (49,38,72);