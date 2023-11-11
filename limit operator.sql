use sql_store;
select * from customers limit 3;
select * from customers limit 6,3;

-- exercise : get the top three loyal customers(max points)
select * from customers order by points desc limit 3;
