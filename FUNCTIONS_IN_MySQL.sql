SELECT * FROM transactions;
-- 1000, 4.99, 3
-- 1001, 2.89, 2
-- 1002, 3.38, 3
-- 1004, 4.99, 1
-- 1005, 1.00, NULL

-- Count Function --
SELECT COUNT(amount) AS "Today's Transactions"
FROM transactions;
-- Could add WHERE 
-- Returns: 5

SELECT MAX(amount) AS Maximum
FROM transactions;
-- Returns: 4.99

SELECT MIN(amount) AS Minimum
FROM transactions;
-- Returns: 1.00

SELECT AVG(amount) AS Average
FROM transactions;
-- Returns: 3.450000

SELECT SUM(amount) AS Sum
FROM transactions;
-- Returns: 17.25

SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM employees;
-- This will return list of names
-- Example: Eugine Krabs, Squidward Tentacles, Spongebob Squarepants, ...etc