-- select * from customers where points>3000;
-- select * from customers where state = 'va';
-- select * from customers where state != 'va';
-- select * from customers where state <> 'va';
-- select * from customers where birth_date > '1990-01-01';
--                                          year-month-date

-- exercise : get order placed this year
select * from orders where order_date >= '2019-01-01'; 
