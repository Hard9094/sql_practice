use sql_store;

select * from customers order by first_name;
select * from customers order by state,first_name;
select  first_name,last_name from customers order by birth_date;
select  first_name,last_name from customers order by state;
select  first_name,last_name,10 as points from customers order by points,birth_date;

-- exercise : print given data

select *,quantity*unit_price as total_price from order_items where order_id = 2 order by quantity*unit_price desc;