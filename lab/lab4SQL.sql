use StudentManagementSystem;

CREATE TABLE BANKACCOUNT (
account_id INT,
account_holder_name VARCHAR(50),
account_balance INT
);

-- task 1 inserting data
INSERT INTO BankAccount VALUES
(101, 'John Doe', 50000),
(102, 'Alice Smith', 30000);

-- task 2 Retrieving data
SELECT account_holder_name, account_balance FROM BankAccount;

-- task 3 Filtering data
SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;

-- task 4 Updating data
UPDATE BankAccount SET account_balance = 60000  WHERE account_id = 101;


-- ChatGPT Exercise
-- Scenario 1: Retrieve Employee Information
SELECT *  FROM employees WHERE department = 'Sales' AND salary > 50000;

-- Scenario 2: Delete Resigned Employee
DELETE FROM employees WHERE emp_id = 123;

-- Scenario 3: Delete Pending Orders Before 2022-01-01
DELETE FROM orders WHERE order_date < '2022-01-01' AND status = 'Pending';

-- Scenario 4: Remove Discontinued Products
DELETE FROM products WHERE category = 'Discontinued';

-- Scenario 5: Add Bonus to Sales Employees
UPDATE employees SET bonus = bonus + 1000 WHERE department = 'Sales';
