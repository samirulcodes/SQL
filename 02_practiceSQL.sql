-- Create the customer table
use sam;
CREATE TABLE customer (customer_id VARCHAR(20),customer_name VARCHAR(50),customer_street VARCHAR(100),
    customer_city VARCHAR(50)
);
select * from customer;
INSERT INTO customer VALUES 
('192-83-7465', 'Johnson', '12 Alma St.', 'Palo Alto'),
('019-28-3746', 'Smith', '4 North St.', 'Rye'),
('677-89-9011', 'Hayes', '3 Main St.', 'Harrison'),
('182-73-6091', 'Turner', '123 Putnam Ave.', 'Stamford'),
('321-12-3123', 'Jones', '100 Main St.', 'Harrison'),
('336-66-9999', 'Lindsay', '175 Park Ave.', 'Pittsfield'),
('019-28-3746', 'Smith', '72 North St.', 'Rye');

show databases; -- show databse
show tables; -- display tables in particular databse
select * from account; -- show table

select customer_id,customer_name from customer; -- display only particular columns

select * from customer where customer_id=192; -- display particular things like in this particular id records

select * from customer where customer_name ='Hayes'; -- condition ( where clause)

select customer_id,customer_name from customer where customer_id > 677-89-9011; -- specific rows and columns

set sql_safe_updates=0; -- allow permission to update , delete ,etc
update customer set customer_name='Aman' where customer_name='Hayes';    -- update data use update command
select * from customer;
    
alter table customer add address varchar(50);    -- update table structure use alter command or add new columns
update customer set address='delhi' ; -- update entire column   
update customer set address='kolkata' where customer_id='192-83-7465' ;
    
alter table customer drop column email; -- This specifies that you're modifying the structure of the table and removing the column

select * from customer order by customer_name ; -- this will print in ascending order using order by name(by default ascending
select * from customer order by customer_name desc;  -- this will print in descinding order using order by name

delete from customer where customer_id='192-83-7465';	-- delete specifi row


-- pattern printing
select * from customer where customer_name like '%n__';
select * from customer where customer_name like '%s%';
select * from customer where customer_name like '__a%';
select * from customer where customer_name like '_m%';

-- string
select customer_name, upper(customer_name) from customer;
select customer_name, lower(customer_name) from customer;
select customer_name, upper(customer_name) from customer;

-- Group by
select customer_city,count(customer_city) from customer group by  customer_city;
select count(customer_name), customer_city from customer group by customer_city having customer_city='Rye';

-- Group by with where clause
select customer_city,count(customer_city) from customer where customer_name like 'a%' group by  customer_city;

-- Group by with where and having clause
select count(customer_name), customer_city from customer where customer_name like 'a%' group by customer_city having customer_city='Rye';

-- Print data in ascending order
select customer_name,customer_city from customer order by customer_name;

-- Print data in descending order
select customer_name,customer_city from customer order by customer_name desc;

-- where clause with order by
select customer_name,customer_city from customer where customer_name like 'a%' order by customer_name desc;