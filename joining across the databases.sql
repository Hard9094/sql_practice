-- joining across the dataabases 
-- suppose we have a table which is in database 1 but not in database2 then if we want to join these across the databases then this method is used
-- here suppose database2 is sql_inventory which have products table but do not have order_items table of sql_store(database1)
-- and we want to join order_items table with products


use sql_store;
-- current database selected is sql_store;
SELECT * from order_items oi 
JOIN sql_inventory.products p
ON oi.product_id=p.product_id;

use sql_inventory;
-- now our current database is sql_inverntory so we dont have to prefix that 
-- but the database with which we want to join that is sql_store so wwe have to prefix that with its table that is order_items

SELECT--  * from sql_store.order_items oi 
-- JOIN products p
-- ON oi.product_id=p.product_id;

-- so query will change according to the current selected database