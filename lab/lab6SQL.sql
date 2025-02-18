-- Day 6

-- using  StudentManagementSystem DataBAse
use StudentManagementSystem;

CREATE TABLE Employee1 (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT,
    email VARCHAR(255)
);

INSERT INTO Employee1 VALUES 
(1, 'John', 'Doe', 35, 'john.doe@example.com'),
(2, 'Jane', 'Smith', 30, 'janesmith@example.com'),
(3, 'Alice', 'Smith', 26, 'alicesmith@example.com');  

ALTER TABLE Employee1 ADD salary INT;  -- Adjust data type as needed
ALTER TABLE Employee1 ADD department VARCHAR(255); -- Adjust data type and length as needed

UPDATE Employee1 SET salary = 60000, department = 'IT' WHERE emp_id = 1;  
UPDATE Employee1 SET salary = 55000, department = 'HR' WHERE emp_id = 2; 
UPDATE Employee1 SET salary = 50000, department = 'Marketing' WHERE emp_id = 3; 
 

-- Lab 1  Retrieve employees with salary > 50000 and in the IT department
SELECT * FROM Employee1  WHERE salary > 50000 AND department = 'IT';

-- lab 3 average salaries of employee in each department
SELECT department, AVG(salary) AS average_salary FROM Employee1 GROUP BY department;

-- lab 2
-- using ecommerce DataBase
use ecommerce;

CREATE TABLE `PRODUCTS2` (
`product_id` varchar(10) NOT NULL,
`product_name` varchar(100) NOT NULL,
`category` varchar(65) NOT NULL,
`sub_category` varchar(45) NOT NULL,
`original_price` double NOT NULL,
`selling_price` double NOT NULL,
`stock` int NOT NULL,
PRIMARY KEY (`product_id`)
);

INSERT INTO `PRODUCTS2` VALUES ('P102','Chair','furniture','Chairs',20000,15000,10),('P103','Laptop','Electronics','computer',60000,55000,50),('P104','Smartphone','Electronics','phone',45000,40000,20),('P105','Blender','Appliance','Electronics',500,450,10),('P106','Laptop HP','Electronics','Computers',67200,55000.99,50),('P107','Samsung Galaxy','Electronics','Mobiles',60000.99,49000.99,100),('P108','Desk','Furniture','Desks',30000,25000,15),('P109','Tablet','Electronics','Tablets',35000,30000,30),('P110','Microwave','Appliance','Electronics',8000,6000,25),('P111','Television','Electronics','TVs',60000,50000,40),('P112','chair','Furniture','chairs',1000,800,10),('P113','Dining Table','Furniture','Tables',40000,35000,20),('P114','Refrigerator','Appliance','Electronics',20000,18000,12),('P115','Sofa','Furniture','Sofas',45000,40000,18),('P116','Digital Camera','Electronics','Cameras',25000,20000,22),('P117','Vacuum Cleaner','Appliance','Electronics',7000,5000,28),('P118','Headphones','Electronics','Audio',5000,4000,35),('P119','Desk Lamp','Furniture','Lamps',3000,2500,45),('P120','Printer','Electronics','Printers',12000,10000,15),('P121','Recliner','Furniture','Chairs',35000,30000,25),('P122','Tablet','Electronics','Tablets',30000,25000,30),('P123','Microwave Oven','Appliance','Electronics',10000,8000,40),('P124','Gaming Console','Electronics','Consoles',45000,40000,20),('P125','Smartwatch','Electronics','Wearables',15000,12000,50),('P126','Projector','Electronics','Entertainment',50000,45000,15),('P127','Coffee Maker','Appliance','Electronics',10000,8000,20),('P128','Vacuum Cleaner','Appliance','Electronics',12000,10000,25),('P129','Smartwatch','Electronics','Wearables',25000,20000,30),('P130','Television','Electronics','Entertainment',80000,70000,15),('P131','Gaming Console','Electronics','Entertainment',35000,30000,20),('P132','Sofa Set','Furniture','Furniture',50000,45000,10),('P133','Water Purifier','Appliance','Electronics',15000,12000,18),('P134','Tablet','Electronics','Computers',30000,25000,22),('P135','Dishwasher','Appliance','Electronics',18000,15000,12),('P136','Air Purifier','Appliance','Electronics',20000,18000,20),('P137','Fitness Tracker','Electronics','Wearables',15000,12000,25),('P138','Smart Speaker','Appliance','Electronics',18000,15000,30),('P139','Monitor','Electronics','Computers',25000,20000,15),('P140','Digital Camera','Electronics','Photography',30000,25000,20),('P141','Printer','Electronics','Computers',12000,10000,10),('P142','Microwave Oven','Appliance','Electronics',10000,8000,18),('P143','Headphones','Electronics','Audio',8000,6000,22),('P144','External Hard Drive','Electronics','Computers',5000,4000,12),('P145','Bluetooth Speaker','Appliance','Electronics',8000,6500,28),('P146','Coffee Maker','Appliance','Electronics',6000,5000,20),('P147','Wireless Earbuds','Electronics','Audio',5000,4000,15),('P148','Tablet','Electronics','Computers',30000,25000,10),('P149','Portable Charger','Electronics','Accessories',4000,3000,25),('P150','Vacuum Cleaner','Appliance','Electronics',10000,8500,18),('P151','Gaming Mouse','Electronics','Computers',3000,2500,30),('P152','Smartwatch','Electronics','Wearables',15000,12000,22),('P153','Desk Lamp','Furniture','Lamps',5000,4000,20),('P154','Wireless Mouse','Electronics','Computers',2500,2000,30),('P155','External Hard Drive','Electronics','Computers',6000,5000,25),('P156','Fitness Tracker','Electronics','Wearables',8000,6500,20),('P157','Air Purifier','Appliance','Electronics',12000,10000,15),('P158','Electric Toothbrush','Appliance','Electronics',4000,3000,18),('P159','Car Vacuum','Appliance','Electronics',5000,4000,20),('P160','Portable Speaker','Appliance','Electronics',3500,3000,22),('P161','Smart Scale','Appliance','Electronics',3000,2500,20),('P162','Streaming Device','Electronics','Accessories',5000,4000,18);

-- queries for finding category = electronics or price < 70000
SELECT * FROM PRODUCTS2 WHERE category = 'Electronics' OR price < 70000;


