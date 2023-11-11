use sql_store;
-- between is used when range 
 
-- select * from customers where points > 1000 and points < 3000;
-- select * from customers where points between 1000 and 3000;

-- exercise : return customer born between 1990/01/01 and 1/1/2000

select * from customers where birth_date between '1990-01-01' and '2000-01-01';

