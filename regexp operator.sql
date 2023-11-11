-- used for searching more complex patterns 
-- more powerful in searching the string

use sql_store;

-- SELECT * FROM customers WHERE last_name LIKE '%field%';
-- SELECT * FROM customers WHERE last_name REGEXP 'field';
-- SELECT * FROM customers WHERE last_name REGEXP '^brush';
-- SELECT * FROM customers WHERE last_name REGEXP 'field$';
-- SELECT * FROM customers WHERE last_name REGEXP 'field|mac';
-- SELECT * FROM customers WHERE last_name REGEXP '[afg]a';
-- SELECT * FROM customers WHERE last_name REGEXP '[a-g]a';

-- exercise : get the customers whose - first names are elka or ambur
									-- last name ends with ey or on
                                    -- last name starts with my or contains se
                                    -- last name contain b followed by r or u
	
select * from customers where first_name REGEXP 'elka|ambur' ;
select * from customers where last_name REGEXP 'ey$|on$';
select * from customers where last_name REGEXP '^my|se';
select * from customers where last_name REGEXP 'b[ru]' ;