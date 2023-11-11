use sql_store;
-- select * from customers where phone is null;
-- select * from customers where phone is not null;

-- exercise : select orders that are not shipped 

select * from orders where shipper_id IS NULL;