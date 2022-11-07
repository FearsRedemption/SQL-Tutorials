-- SELF JOIN
-- Join another copy of a table to itself
-- Used to compare rows of the same table
-- Helps to display a heirarchy of data

ALTER TABLE customers
ADD referral_id INT;

UPDATE customers
SET referral_id = 1
WHERE customer_id = 2;

UPDATE customers
SET referral_id = 2
WHERE customer_id = 3;

UPDATE customers
SET referral_id = 2
WHERE customer_id = 4;

SELECT * FROM customers;

-- SELF JOIN --
SELECT  a.customer_id, CONCAT(a.first_name, " ", a.last_name) AS "Referer",
		CONCAT(b.first_name, " ", b.last_name) AS "Referred By"
FROM customers AS a
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;

-- ANOTHER EXAMPLE --
ALTER TABLE employees
ADD supervisor_id INT;

UPDATE employees
SET supervisor_id = 5
WHERE employee_id = 2 OR employee_id = 3 OR employee_id = 4 OR employee_id = 6;

UPDATE employees
SET supervisor_id = 1
WHERE employee_id = 5;

SELECT * FROM employees;

SELECT a.first_name, a.last_name,
		concat(b.first_name, " ", b.last_name) AS "Reports To"
FROM employees AS a
LEFT JOIN employees AS b
ON a.supervisor_id = b.employee_id;