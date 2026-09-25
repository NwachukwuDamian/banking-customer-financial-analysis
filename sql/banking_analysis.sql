CREATE DATABASE bank_analysis_project;

USE bank_analysis_project;
CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    occupation VARCHAR(100),
    income DECIMAL(12,2)
);
INSERT INTO customers
(customer_id, name, age, gender, city, occupation, income)
VALUES
(1, 'John Smith', 28, 'Male', 'Lagos', 'Accountant', 450000),
(2, 'Mary Johnson', 35, 'Female', 'Abuja', 'Teacher', 320000),
(3, 'David Williams', 42, 'Male', 'Lagos', 'Engineer', 750000),
(4, 'Sarah Brown', 31, 'Female', 'Port Harcourt', 'Doctor', 900000),
(5, 'Michael Davis', 25, 'Male', 'Lagos', 'Software Developer', 600000),
(6, 'Grace Wilson', 39, 'Female', 'Abuja', 'Business Owner', 850000),
(7, 'Daniel Moore', 47, 'Male', 'Kano', 'Lawyer', 700000),
(8, 'Jennifer Taylor', 29, 'Female', 'Lagos', 'Marketing Specialist', 400000),
(9, 'Robert Anderson', 52, 'Male', 'Port Harcourt', 'Consultant', 950000),
(10, 'Elizabeth Thomas', 34, 'Female', 'Lagos', 'Banker', 550000),
(11, 'Christopher Jackson', 41, 'Male', 'Abuja', 'Architect', 680000),
(12, 'Patricia White', 27, 'Female', 'Kano', 'Pharmacist', 500000),
(13, 'Anthony Harris', 36, 'Male', 'Lagos', 'Entrepreneur', 1200000),
(14, 'Linda Martin', 44, 'Female', 'Abuja', 'Civil Servant', 380000),
(15, 'Matthew Thompson', 30, 'Male', 'Port Harcourt', 'Data Analyst', 650000),
(16, 'Barbara Garcia', 38, 'Female', 'Lagos', 'HR Manager', 720000),
(17, 'James Martinez', 26, 'Male', 'Kano', 'Teacher', 300000),
(18, 'Susan Robinson', 33, 'Female', 'Lagos', 'Nurse', 480000),
(19, 'Charles Clark', 49, 'Male', 'Abuja', 'Business Owner', 1100000),
(20, 'Jessica Rodriguez', 24, 'Female', 'Port Harcourt', 'Graphic Designer', 350000),
(21, 'Joseph Lewis', 45, 'Male', 'Lagos', 'Financial Analyst', 800000),
(22, 'Karen Lee', 37, 'Female', 'Abuja', 'Accountant', 520000),
(23, 'Thomas Walker', 32, 'Male', 'Kano', 'Engineer', 670000),
(24, 'Nancy Hall', 29, 'Female', 'Lagos', 'Content Creator', 450000),
(25, 'Mark Allen', 40, 'Male', 'Port Harcourt', 'Doctor', 980000),
(26, 'Betty Young', 51, 'Female', 'Abuja', 'Business Owner', 1250000),
(27, 'Steven Hernandez', 28, 'Male', 'Lagos', 'Software Developer', 620000),
(28, 'Helen King', 43, 'Female', 'Kano', 'Lawyer', 780000),
(29, 'Paul Wright', 34, 'Male', 'Lagos', 'Sales Manager', 590000),
(30, 'Dorothy Lopez', 36, 'Female', 'Port Harcourt', 'Pharmacist', 540000),
(31, 'Andrew Hill', 46, 'Male', 'Abuja', 'Consultant', 880000),
(32, 'Sandra Scott', 27, 'Female', 'Lagos', 'Teacher', 330000),
(33, 'Joshua Green', 39, 'Male', 'Kano', 'Architect', 730000),
(34, 'Ashley Adams', 31, 'Female', 'Lagos', 'Banker', 570000),
(35, 'Kevin Baker', 53, 'Male', 'Port Harcourt', 'Entrepreneur', 1350000),
(36, 'Michelle Nelson', 42, 'Female', 'Abuja', 'Marketing Manager', 690000),
(37, 'Brian Carter', 30, 'Male', 'Lagos', 'Accountant', 470000),
(38, 'Amanda Mitchell', 35, 'Female', 'Kano', 'Nurse', 460000),
(39, 'George Perez', 48, 'Male', 'Lagos', 'Business Owner', 1050000),
(40, 'Rebecca Roberts', 26, 'Female', 'Port Harcourt', 'Data Analyst', 610000);
SELECT *
FROM customers;
CREATE TABLE accounts (
    account_id INT,
    customer_id INT,
    account_type VARCHAR(50),
    balance DECIMAL(12,2),
    date_opened DATE,
    status VARCHAR(20)
);
INSERT INTO accounts
(account_id, customer_id, account_type, balance, date_opened, status)
VALUES
(1001, 1, 'Savings', 450000, '2023-02-15', 'Active'),
(1002, 2, 'Savings', 280000, '2022-08-10', 'Active'),
(1003, 3, 'Current', 1250000, '2021-11-05', 'Active'),
(1004, 4, 'Savings', 850000, '2023-06-20', 'Active'),
(1005, 5, 'Savings', 620000, '2024-01-12', 'Active'),
(1006, 6, 'Business', 1850000, '2021-05-18', 'Active'),
(1007, 7, 'Current', 730000, '2022-03-22', 'Active'),
(1008, 8, 'Savings', 390000, '2023-09-14', 'Active'),
(1009, 9, 'Current', 2100000, '2020-12-01', 'Active'),
(1010, 10, 'Salary', 510000, '2024-02-10', 'Active'),
(1011, 11, 'Savings', 680000, '2022-07-19', 'Active'),
(1012, 12, 'Savings', 420000, '2023-04-25', 'Active'),
(1013, 13, 'Business', 3200000, '2020-09-11', 'Active'),
(1014, 14, 'Salary', 310000, '2024-03-15', 'Active'),
(1015, 15, 'Savings', 760000, '2022-11-30', 'Active'),
(1016, 16, 'Current', 920000, '2021-08-16', 'Active'),
(1017, 17, 'Savings', 250000, '2023-10-05', 'Active'),
(1018, 18, 'Savings', 510000, '2022-05-27', 'Active'),
(1019, 19, 'Business', 2750000, '2020-06-13', 'Active'),
(1020, 20, 'Savings', 180000, '2024-04-08', 'Active'),
(1021, 21, 'Current', 1450000, '2021-02-17', 'Active'),
(1022, 22, 'Savings', 570000, '2023-01-29', 'Active'),
(1023, 23, 'Current', 830000, '2022-09-07', 'Active'),
(1024, 24, 'Savings', 360000, '2024-05-16', 'Active'),
(1025, 25, 'Savings', 1100000, '2021-12-21', 'Active'),
(1026, 26, 'Business', 3500000, '2020-04-14', 'Active'),
(1027, 27, 'Savings', 640000, '2023-07-03', 'Active'),
(1028, 28, 'Current', 980000, '2022-01-26', 'Active'),
(1029, 29, 'Salary', 490000, '2024-06-11', 'Active'),
(1030, 30, 'Savings', 530000, '2023-03-18', 'Active'),
(1031, 31, 'Current', 1320000, '2021-10-09', 'Active'),
(1032, 32, 'Savings', 290000, '2024-02-28', 'Active'),
(1033, 33, 'Current', 870000, '2022-06-15', 'Active'),
(1034, 34, 'Salary', 550000, '2023-12-02', 'Active'),
(1035, 35, 'Business', 4100000, '2020-02-20', 'Active'),
(1036, 36, 'Savings', 710000, '2021-09-13', 'Active'),
(1037, 37, 'Savings', 430000, '2023-05-22', 'Active'),
(1038, 38, 'Savings', 470000, '2022-10-31', 'Active'),
(1039, 39, 'Business', 2950000, '2020-07-07', 'Active'),
(1040, 40, 'Savings', 680000, '2024-01-25', 'Active');
SELECT * FROM accounts;
CREATE TABLE transactions (
    transaction_id INT,
    account_id INT,
    transaction_type VARCHAR(50),
    amount DECIMAL(12,2),
    transaction_date DATE,
    description VARCHAR(100)
);
INSERT INTO transactions
(transaction_id, account_id, transaction_type, amount, transaction_date, description)
VALUES
(5001, 1001, 'Deposit', 150000, '2025-01-05', 'Salary'),
(5002, 1001, 'Withdrawal', 50000, '2025-01-12', 'ATM Withdrawal'),
(5003, 1002, 'Deposit', 100000, '2025-01-07', 'Salary'),
(5004, 1002, 'Payment', 35000, '2025-01-15', 'Utility Bill'),
(5005, 1003, 'Deposit', 500000, '2025-01-10', 'Business Revenue'),
(5006, 1003, 'Transfer', 120000, '2025-01-18', 'Funds Transfer'),
(5007, 1004, 'Deposit', 250000, '2025-01-04', 'Salary'),
(5008, 1004, 'Withdrawal', 70000, '2025-01-20', 'ATM Withdrawal'),
(5009, 1005, 'Deposit', 180000, '2025-01-08', 'Salary'),
(5010, 1005, 'Payment', 45000, '2025-01-22', 'Online Purchase'),

(5011, 1006, 'Deposit', 750000, '2025-01-03', 'Business Revenue'),
(5012, 1006, 'Transfer', 200000, '2025-01-14', 'Supplier Payment'),
(5013, 1007, 'Deposit', 300000, '2025-01-11', 'Business Income'),
(5014, 1007, 'Withdrawal', 80000, '2025-01-25', 'Cash Withdrawal'),
(5015, 1008, 'Deposit', 120000, '2025-01-09', 'Salary'),
(5016, 1008, 'Payment', 30000, '2025-01-19', 'Utility Bill'),
(5017, 1009, 'Deposit', 900000, '2025-01-02', 'Business Revenue'),
(5018, 1009, 'Transfer', 250000, '2025-01-16', 'Funds Transfer'),
(5019, 1010, 'Deposit', 220000, '2025-01-06', 'Salary'),
(5020, 1010, 'Withdrawal', 60000, '2025-01-21', 'ATM Withdrawal'),

(5021, 1011, 'Deposit', 180000, '2025-01-05', 'Salary'),
(5022, 1011, 'Payment', 40000, '2025-01-17', 'Utility Bill'),
(5023, 1012, 'Deposit', 150000, '2025-01-08', 'Salary'),
(5024, 1012, 'Withdrawal', 50000, '2025-01-23', 'ATM Withdrawal'),
(5025, 1013, 'Deposit', 1200000, '2025-01-03', 'Business Revenue'),
(5026, 1013, 'Transfer', 400000, '2025-01-13', 'Supplier Payment'),
(5027, 1014, 'Deposit', 130000, '2025-01-10', 'Salary'),
(5028, 1014, 'Payment', 25000, '2025-01-20', 'Utility Bill'),
(5029, 1015, 'Deposit', 200000, '2025-01-04', 'Salary'),
(5030, 1015, 'Withdrawal', 60000, '2025-01-24', 'ATM Withdrawal'),

(5031, 1016, 'Deposit', 350000, '2025-01-06', 'Business Income'),
(5032, 1016, 'Transfer', 100000, '2025-01-15', 'Funds Transfer'),
(5033, 1017, 'Deposit', 90000, '2025-01-09', 'Salary'),
(5034, 1017, 'Payment', 20000, '2025-01-18', 'Online Purchase'),
(5035, 1018, 'Deposit', 160000, '2025-01-02', 'Salary'),
(5036, 1018, 'Withdrawal', 45000, '2025-01-26', 'ATM Withdrawal'),
(5037, 1019, 'Deposit', 950000, '2025-01-07', 'Business Revenue'),
(5038, 1019, 'Transfer', 300000, '2025-01-22', 'Supplier Payment'),
(5039, 1020, 'Deposit', 80000, '2025-01-11', 'Salary'),
(5040, 1020, 'Payment', 15000, '2025-01-19', 'Utility Bill'),

(5041, 1021, 'Deposit', 450000, '2025-01-05', 'Business Income'),
(5042, 1021, 'Withdrawal', 100000, '2025-01-16', 'Cash Withdrawal'),
(5043, 1022, 'Deposit', 170000, '2025-01-08', 'Salary'),
(5044, 1022, 'Payment', 35000, '2025-01-21', 'Online Purchase'),
(5045, 1023, 'Deposit', 400000, '2025-01-03', 'Business Income'),
(5046, 1023, 'Transfer', 120000, '2025-01-17', 'Funds Transfer'),
(5047, 1024, 'Deposit', 100000, '2025-01-10', 'Salary'),
(5048, 1024, 'Withdrawal', 30000, '2025-01-23', 'ATM Withdrawal'),
(5049, 1025, 'Deposit', 500000, '2025-01-04', 'Business Revenue'),
(5050, 1025, 'Payment', 90000, '2025-01-20', 'Utility Bill'),

(5051, 1026, 'Deposit', 1500000, '2025-01-02', 'Business Revenue'),
(5052, 1026, 'Transfer', 500000, '2025-01-15', 'Supplier Payment'),
(5053, 1027, 'Deposit', 200000, '2025-01-06', 'Salary'),
(5054, 1027, 'Withdrawal', 50000, '2025-01-18', 'ATM Withdrawal'),
(5055, 1028, 'Deposit', 350000, '2025-01-09', 'Business Income'),
(5056, 1028, 'Payment', 70000, '2025-01-24', 'Utility Bill'),
(5057, 1029, 'Deposit', 160000, '2025-01-05', 'Salary'),
(5058, 1029, 'Withdrawal', 40000, '2025-01-22', 'ATM Withdrawal'),
(5059, 1030, 'Deposit', 180000, '2025-01-07', 'Salary'),
(5060, 1030, 'Payment', 30000, '2025-01-19', 'Online Purchase'),

(5061, 1031, 'Deposit', 600000, '2025-01-03', 'Business Revenue'),
(5062, 1031, 'Transfer', 180000, '2025-01-14', 'Supplier Payment'),
(5063, 1032, 'Deposit', 100000, '2025-01-08', 'Salary'),
(5064, 1032, 'Withdrawal', 25000, '2025-01-20', 'ATM Withdrawal'),
(5065, 1033, 'Deposit', 400000, '2025-01-06', 'Business Income'),
(5066, 1033, 'Payment', 60000, '2025-01-17', 'Utility Bill'),
(5067, 1034, 'Deposit', 180000, '2025-01-04', 'Salary'),
(5068, 1034, 'Withdrawal', 50000, '2025-01-23', 'ATM Withdrawal'),
(5069, 1035, 'Deposit', 1800000, '2025-01-02', 'Business Revenue'),
(5070, 1035, 'Transfer', 650000, '2025-01-16', 'Supplier Payment'),

(5071, 1036, 'Deposit', 250000, '2025-01-05', 'Salary'),
(5072, 1036, 'Payment', 50000, '2025-01-18', 'Utility Bill'),
(5073, 1037, 'Deposit', 140000, '2025-01-09', 'Salary'),
(5074, 1037, 'Withdrawal', 40000, '2025-01-21', 'ATM Withdrawal'),
(5075, 1038, 'Deposit', 150000, '2025-01-07', 'Salary'),
(5076, 1038, 'Payment', 30000, '2025-01-19', 'Online Purchase'),
(5077, 1039, 'Deposit', 1100000, '2025-01-03', 'Business Revenue'),
(5078, 1039, 'Transfer', 350000, '2025-01-15', 'Supplier Payment'),
(5079, 1040, 'Deposit', 220000, '2025-01-06', 'Salary'),
(5080, 1040, 'Withdrawal', 50000, '2025-01-22', 'ATM Withdrawal');
SELECT * FROM transactions;
CREATE TABLE loans (
    loan_id INT,
    customer_id INT,
    loan_type VARCHAR(50),
    loan_amount DECIMAL(12,2),
    interest_rate DECIMAL(5,2),
    loan_status VARCHAR(30),
    start_date DATE,
    duration_months INT
);
INSERT INTO loans
(loan_id, customer_id, loan_type, loan_amount, interest_rate, loan_status, start_date, duration_months)
VALUES
(9001, 1, 'Personal', 500000, 18.50, 'Active', '2025-01-10', 12),
(9002, 3, 'Business', 2500000, 16.00, 'Active', '2024-06-15', 24),
(9003, 4, 'Personal', 800000, 19.00, 'Completed', '2023-02-20', 12),
(9004, 6, 'Business', 5000000, 15.50, 'Active', '2024-03-12', 36),
(9005, 7, 'Personal', 1000000, 18.00, 'Active', '2024-08-05', 18),
(9006, 9, 'Business', 7000000, 14.50, 'Active', '2023-11-20', 48),
(9007, 10, 'Personal', 600000, 19.50, 'Completed', '2023-05-10', 12),
(9008, 11, 'Mortgage', 15000000, 12.50, 'Active', '2024-01-15', 60),
(9009, 13, 'Business', 10000000, 14.00, 'Active', '2023-09-01', 48),
(9010, 15, 'Personal', 1200000, 18.50, 'Active', '2024-07-10', 18),

(9011, 16, 'Business', 3500000, 16.00, 'Completed', '2022-04-15', 24),
(9012, 18, 'Personal', 700000, 19.00, 'Active', '2024-09-20', 12),
(9013, 19, 'Business', 8000000, 14.50, 'Active', '2023-06-10', 36),
(9014, 21, 'Mortgage', 12000000, 12.00, 'Active', '2024-02-01', 60),
(9015, 22, 'Personal', 900000, 18.00, 'Completed', '2023-08-15', 12),
(9016, 23, 'Business', 3000000, 16.50, 'Active', '2024-05-10', 24),
(9017, 25, 'Personal', 1500000, 18.50, 'Active', '2024-10-05', 18),
(9018, 26, 'Business', 12000000, 13.50, 'Active', '2023-03-15', 48),
(9019, 28, 'Mortgage', 18000000, 11.50, 'Active', '2024-01-20', 72),
(9020, 29, 'Personal', 800000, 19.00, 'Completed', '2023-04-10', 12),

(9021, 31, 'Business', 4500000, 15.50, 'Active', '2024-06-01', 36),
(9022, 33, 'Personal', 1000000, 18.50, 'Active', '2024-09-15', 18),
(9023, 35, 'Business', 15000000, 13.00, 'Active', '2023-01-10', 60),
(9024, 36, 'Personal', 900000, 19.00, 'Completed', '2022-10-05', 12),
(9025, 37, 'Personal', 600000, 18.50, 'Active', '2024-11-01', 12),
(9026, 39, 'Business', 9000000, 14.00, 'Active', '2023-07-20', 48),
(9027, 40, 'Personal', 1100000, 18.00, 'Active', '2024-08-12', 18),
(9028, 2, 'Personal', 400000, 19.50, 'Completed', '2023-06-01', 12),
(9029, 5, 'Personal', 750000, 18.50, 'Active', '2024-04-15', 12),
(9030, 30, 'Business', 2500000, 16.00, 'Active', '2024-02-20', 24);
SELECT * FROM loans;
CREATE TABLE branches (
    branch_id INT,
    branch_name VARCHAR(100),
    city VARCHAR(50),
    manager_name VARCHAR(100)
);
INSERT INTO branches
(branch_id, branch_name, city, manager_name)
VALUES
(101, 'Lagos Central', 'Lagos', 'Michael Adeyemi'),
(102, 'Ikeja Branch', 'Lagos', 'Sarah Okafor'),
(103, 'Victoria Island', 'Lagos', 'Daniel Eze'),
(104, 'Abuja Central', 'Abuja', 'Grace Ibrahim'),
(105, 'Wuse Branch', 'Abuja', 'David Musa'),
(106, 'Port Harcourt Central', 'Port Harcourt', 'Jennifer Okoro'),
(107, 'GRA Branch', 'Port Harcourt', 'Anthony Nwosu'),
(108, 'Kano Central', 'Kano', 'Mary Bello'),
(109, 'Sabon Gari Branch', 'Kano', 'John Abdullahi'),
(110, 'Lekki Branch', 'Lagos', 'Elizabeth Obi');
SELECT * FROM branches;
SELECT name, city, occupation, income FROM customers;
ALTER TABLE accounts
ADD COLUMN branch_id INT;
UPDATE accounts
SET branch_id = CASE account_id
    WHEN 1001 THEN 101
    WHEN 1002 THEN 104
    WHEN 1003 THEN 101
    WHEN 1004 THEN 106
    WHEN 1005 THEN 102
    WHEN 1006 THEN 105
    WHEN 1007 THEN 108
    WHEN 1008 THEN 103
    WHEN 1009 THEN 107
    WHEN 1010 THEN 102
    WHEN 1011 THEN 104
    WHEN 1012 THEN 109
    WHEN 1013 THEN 101
    WHEN 1014 THEN 105
    WHEN 1015 THEN 106
    WHEN 1016 THEN 103
    WHEN 1017 THEN 108
    WHEN 1018 THEN 102
    WHEN 1019 THEN 104
    WHEN 1020 THEN 107
    WHEN 1021 THEN 103
    WHEN 1022 THEN 105
    WHEN 1023 THEN 108
    WHEN 1024 THEN 110
    WHEN 1025 THEN 106
    WHEN 1026 THEN 104
    WHEN 1027 THEN 101
    WHEN 1028 THEN 109
    WHEN 1029 THEN 102
    WHEN 1030 THEN 107
    WHEN 1031 THEN 103
    WHEN 1032 THEN 110
    WHEN 1033 THEN 108
    WHEN 1034 THEN 102
    WHEN 1035 THEN 101
    WHEN 1036 THEN 105
    WHEN 1037 THEN 106
    WHEN 1038 THEN 109
    WHEN 1039 THEN 103
    WHEN 1040 THEN 110
END;
SELECT * FROM accounts;
SELECT name, occupation, income 
FROM customers 
WHERE income >= 800000;
SELECT name, age, occupation, city 
FROM customers 
WHERE city = 'Lagos';
SELECT name, occupation, income 
FROM customers 
ORDER BY income DESC;
SELECT name, occupation, income 
FROM customers 
ORDER BY income DESC 
LIMIT 5;
SELECT account_id, customer_id, account_type, balance 
FROM accounts 
WHERE balance > 1000000;
SELECT account_id, customer_id, balance, status, account_type 
FROM accounts 
WHERE account_type = 'Savings';
SELECT account_id, customer_id, balance, account_type 
FROM accounts 
WHERE account_type = 'Savings' AND balance > 500000;
SELECT transaction_id, account_id, amount, transaction_date, transaction_type 
FROM transactions 
WHERE transaction_type = 'Deposit' AND amount > 200000;
SELECT transaction_id, account_id, transaction_type, amount, transaction_date
FROM transactions
WHERE transaction_date > '2025-01-15';
SELECT DISTINCT account_type 
FROM accounts;
SELECT COUNT(*) 
FROM customers;
SELECT COUNT(*)
FROM accounts;
SELECT SUM(balance) 
FROM accounts;
SELECT AVG(balance)
FROM accounts;
SELECT MAX(balance)
FROM accounts;
SELECT MIN(balance)
FROM accounts;
SELECT account_type, COUNT(account_type) 
FROM accounts 
GROUP BY account_type;
SELECT account_type, SUM(balance) AS total_balance 
FROM accounts
GROUP BY account_type;
SELECT city, AVG(income) AS average_income 
FROM customers
GROUP BY city;
SELECT account_id, SUM(amount) AS total_deposit
FROM transactions
WHERE transaction_type = 'Deposit'
GROUP BY account_id;
SELECT transaction_type, SUM(amount) AS total_amount
FROM transactions
GROUP BY transaction_type;
SELECT account_type, SUM(balance) AS total_balance
FROM accounts 
GROUP BY account_type
HAVING SUM(balance) > 5000000;
SELECT city, AVG(income) AS average_income
FROM customers
GROUP BY city
HAVING AVG(income) > 600000;
SELECT c.name, c.city, a.account_type, a.balance
FROM customers c 
JOIN accounts a 
ON c.customer_id = a.customer_id;
SELECT c.name, a.account_type, a.balance, b.branch_name, c.city 
FROM customers c
JOIN accounts a 
ON c.customer_id = a.customer_id
JOIN branches b 
ON a.branch_id = b.branch_id;
SELECT c.name, a.account_id, t.transaction_type, t.amount, t.transaction_date
FROM customers c 
JOIN accounts a 
ON c.customer_id = a.customer_id 
JOIN transactions t 
ON a.account_id = t.account_id;
SELECT c.name, c.city, l.loan_type, l.loan_amount, l.interest_rate, l.loan_status
FROM customers c 
JOIN loans l    
ON c.customer_id = l.customer_id;
SELECT c.name, c.city, l.loan_amount
FROM customers c  
LEFT JOIN loans l   
ON c.customer_id = l.customer_id
WHERE l.loan_id IS NULL;
SELECT c.name, SUM(t.amount) AS total_transaction_amount
FROM customers c   
JOIN accounts a   
ON c.customer_id = a.customer_id
JOIN transactions t  
ON a.account_id = t.account_id
GROUP BY c.customer_id, c.name;
SELECT c.name, SUM(t.amount) AS total_transaction_amount
FROM customers c   
JOIN accounts a 
ON c.customer_id = a.customer_id
JOIN transactions t    
ON a.account_id = t.account_id
GROUP BY c.customer_id, c.name
HAVING SUM(t.amount) > 500000;
SELECT loan_type, SUM(loan_amount) AS total_loan_amount 
FROM loans
GROUP BY loan_type;
SELECT loan_type, SUM(loan_amount) AS total_active_loan_amount 
FROM loans
WHERE loan_status = 'Active'
GROUP BY loan_type;
SELECT loan_type, ROUND(AVG(interest_rate), 2) AS average_interest_rate
FROM loans
GROUP BY loan_type;
SELECT loan_status, COUNT(*) AS number_of_loans
FROM loans
GROUP BY loan_status;
SELECT loan_status, SUM(loan_amount) AS total_loan_amount
FROM loans
GROUP BY loan_status;
SELECT loan_id, customer_id, loan_type, loan_amount, loan_status
FROM loans
ORDER BY loan_amount DESC
LIMIT 5;
SELECT b.branch_name, COUNT(*) AS number_of_accounts
FROM branches b   
JOIN accounts a   
ON b.branch_id = a.branch_id
GROUP BY branch_name;
SELECT b.branch_name, SUM(a.balance) AS total_balance
FROM accounts a    
JOIN branches b       
GROUP BY b.branch_name;
SELECT b.branch_name, SUM(t.amount) AS total_transaction_value 
FROM branches b    
JOIN accounts a    
ON b.branch_id = a.branch_id
JOIN transactions t
ON a.account_id = t.account_id
GROUP BY b.branch_name;
SELECT c.name, a.balance, l.loan_amount, l.loan_status
FROM customers c   
JOIN loans l   
ON c.customer_id = l.customer_id
JOIN accounts a  
ON a.customer_id = c.customer_id
WHERE l.loan_status = 'Active' AND a.balance > 1000000
ORDER BY a.balance DESC;
SELECT c.name, SUM(t.amount) AS total_transaction_value
FROM customers c    
JOIN accounts a    
ON c.customer_id = a.customer_id
JOIN transactions t   
ON a.account_id = t.account_id
GROUP BY c.customer_id, c.name
ORDER BY SUM(t.amount) DESC
LIMIT 5;
SELECT b.branch_name, AVG(a.balance) AS average_account_balance
FROM accounts a   
JOIN branches b   
ON a.branch_id = b.branch_id
GROUP BY b.branch_name
ORDER BY AVG(a.balance) DESC
LIMIT 3 OFFSET 3;
SELECT c.name, SUM(CASE WHEN t.transaction_type = 'Deposit' THEN t.amount ELSE 0 END) AS total_deposits, 
SUM(CASE WHEN t.transaction_type = 'Withdrawal' THEN t.amount ELSE 0 END) AS total_withdrawals 
FROM customers c   
JOIN accounts a      
ON c.customer_id = a.customer_id
JOIN transactions t     
ON a.account_id = t.account_id
GROUP BY c.customer_id, c.name
HAVING total_deposits > total_withdrawals;
SELECT name, income, CASE WHEN income >= 1000000 THEN 'High Income' 
WHEN income >= 500000 THEN 'Middlle Income' ELSE 'Low Income' END AS income_category 
FROM customers
ORDER BY income DESC;
SELECT c.city, SUM(l.loan_amount) AS total_active_loan_amount 
FROM customers c    
JOIN loans l      
ON c.customer_id = l.customer_id
WHERE l.loan_status = 'Active'
GROUP BY c.city
HAVING SUM(l.loan_amount) > 15000000
ORDER BY SUM(l.loan_amount) DESC;
SELECT c.name, a.balance 
FROM customers c 
JOIN accounts a      
ON c.customer_id = a.customer_id
WHERE a.balance > (SELECT AVG(balance) FROM accounts)
ORDER BY a.balance DESC;
SELECT c.name, l.loan_type, l.loan_amount
FROM customers c       
JOIN loans l       
ON c.customer_id = l.customer_id
WHERE l.loan_amount > (SELECT AVG(loan_amount) FROM loans)
ORDER BY l.loan_amount;
WITH customer_transactions AS (
    SELECT c.name, SUM(t.amount) AS total_transaction_value 
    FROM customers c      
    JOIN accounts a    
    ON c.customer_id = a.customer_id
    JOIN transactions t  
    ON a.account_id = t.account_id
    GROUP BY c.name
)
SELECT * 
FROM customer_transactions
WHERE total_transaction_value > 1000000
ORDER BY total_transaction_value DESC;
SELECT c.name, SUM(t.amount) AS total_transaction_value, 
DENSE_RANK() OVER (ORDER BY SUM(t.amount) DESC) AS transaction_rank
FROM customers c 
JOIN accounts a 
ON c.customer_id = a.customer_id
JOIN transactions t 
ON a.account_id = t.account_id
GROUP BY c.name;
SELECT c.name, SUM(t.amount) AS total_transaction_value, l.loan_amount AS active_loan_amount
FROM customers c 
JOIN loans l      
ON c.customer_id = l.customer_id
JOIN accounts a     
ON c.customer_id = a.customer_id
JOIN transactions t    
ON a.account_id = t.account_id
WHERE l.loan_status = 'Active'
GROUP BY c.name, c.customer_id, l.loan_amount
HAVING SUM(t.amount) > 1000000 AND l.loan_amount > 3000000
ORDER BY SUM(t.amount) DESC;
WITH ranked_customers AS(
SELECT c.name, c.city, SUM(t.amount) AS total_transaction_value, ROW_NUMBER() OVER (PARTITION BY c.city ORDER BY SUM(t.amount) DESC) AS customer_rank
FROM customers c 
JOIN accounts a 
ON c.customer_id = a.customer_id
JOIN transactions t 
ON a.account_id = t.account_id
GROUP BY c.city, c.name, c.customer_id
)
SELECT name, city, total_transaction_value, customer_rank
FROM ranked_customers
WHERE customer_rank <= 3
ORDER BY city, customer_rank;
SELECT * FROM customers;
