-- Create the depositor table (relationship between customer and account)
use sam;
CREATE TABLE depositor (
    customer_id VARCHAR(20),
    account_number VARCHAR(10)
);
select * from depositor;

INSERT INTO depositor VALUES 
('192-83-7465', 'A-101'),
('192-83-7465', 'A-201'),
('019-28-3746', 'A-215'),
('677-89-9011', 'A-102'),
('182-73-6091', 'A-305'),
('321-12-3123', 'A-217'),
('336-66-9999', 'A-222'),
('019-28-3746', 'A-201');


-- nested query
select * from  depositor where customer_id=(select customer_id from  depositor where account_number='A-305');

select * from customer where customer_id in(select customer_id from depositor where account_number in 
(select account_number from account where balance>500));