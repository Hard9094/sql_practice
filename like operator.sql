-- used when want to retrive string with specific pattern

use sql_store;
-- select * from customers where last_name like 'b%';
-- select * from customers where last_name like '%y';
-- select * from customers where last_name like '%b%';
 -- select * from customers where state like '_a';
 -- % for any number of characters 
 -- _ for single character
 
 -- exercise : get the customer whose  addresses contain TRAIL or AVENUE phone number end with 9
--  
--  select * from customers where address like '%trail%' 
-- 								or address like '%avenue%';
-- select * from customers where phone like '%9';
select * from customers where phone not like '%9';