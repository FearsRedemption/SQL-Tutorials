SELECT * FROM employees
ORDER BY last_name;
-- ASC == ascending order, this is the default state

SELECT * FROM employees
ORDER BY last_name DESC;
-- DESC == descending order

SELECT * FROM employees
ORDER BY first_name DESC;

SELECT * FROM employees
ORDER BY hire_date;

SELECT * FROM transactions
ORDER BY amount;
-- If two values are the same you can give another order clause

SELECT * FROM transactions
ORDER BY amount, customer_id;

-- CUSTOMIZE ASCENDING OR DESCENDING PER COLUMN NAME
SELECT * FROM transactions
ORDER BY amount ASC, customer_id DESC;