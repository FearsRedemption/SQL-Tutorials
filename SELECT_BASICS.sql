-- SELECTING ALL DATA --
SELECT * FROM employees;

-- SELECT SPECIFIC DATA --
SELECT first_name, last_name
FROM employees;

-- WHERE --
SELECT *
FROM employees
WHERE employee_id = 1;

SELECT *
FROM employees
WHERE hourly_pay >= 15;

SELECT *
FROM employees
WHERE hire_date <= "2023-01-03";

SELECT *
FROM employees
WHERE employee_id != 1;

SELECT *
FROM employees
WHERE hire_date IS NULL; -- NOTE: IS or IS NOT, don't use equal sign here