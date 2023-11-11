USE sql_store;
-- SELECT * FROM customers
-- ORDER BY first_name; 

-- methods for selecting an column (order matters)
-- select first_name from customers;
-- select first_name,last_name from customers;
-- select last_name,first_name from customers;

-- we can perform arithmetic operation with columns 
-- select first_name,last_name,points,
-- points+10*100 as discount 
-- from customers;

-- to select distinct element of any col(state)
select distinct state from customers;


-- exercise : return all products - name
-- 								  - unit price
--                                - new price(unit price * 1.1)

use sql_store;

-- select * from products;
select name,
unit_price,
unit_price*1.1 as new_price from products;
