-- Create the account table
use sam;

CREATE TABLE account (
    account_number VARCHAR(10) ,
    balance INT
);
select * from account;
INSERT INTO account VALUES 
('A-101', 500),
('A-215', 700),
('A-102', 400),
('A-305', 350),
('A-201', 900),
('A-217', 750),
('A-222', 700);

show databases; -- show databse
show tables; -- display tables in particular databse
select * from account; -- show table

select sum(balance) from account; -- sum
select max(balance) from account; -- max
select avg(balance) from account; -- average
select min(balance) from account; -- mean
select count(balance) from account; -- count

select account_number,balance,(balance+balance*10) "new Salary" from account;
select account_number,balance,(balance+1000)  "new balance" from account;

select * from account where balance<500;
select  * from account where account_number='A-201' and balance>500;
select  * from account where account_number='A-305' or balance>500;


-- pattern printing
select * from account where account_number like 'A%';
select * from account where account_number like '%A';
select * from account where account_number like '%5';
