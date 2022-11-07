-- SETUP FOR TUTORIAL --
ALTER TABLE employees
ADD COLUMN job VARCHAR(25) AFTER hourly_pay;

UPDATE employees
SET job = "Manager"
WHERE employee_id = 1;

UPDATE employees
SET job = "Cashier"
WHERE employee_id = 2;

UPDATE employees
SET job = "Cook"
WHERE employee_id = 3;

UPDATE employees
SET job = "Cook"
WHERE employee_id = 4;

UPDATE employees
SET job = "Asst. Manager"
WHERE employee_id = 5;

UPDATE employees
SET job = "Janitor"
WHERE employee_id = 6;

SELECT * FROM employees;

-- LOGICAL AND/OR OPERATORS --
SELECT *
FROM employees
WHERE hire_date < "2023-01-5" AND job = "Cook"; -- BOTH TRUE

SELECT *
FROM employees
WHERE job = "Cook" OR job = "Cashier"; -- AT LEAST ONE TRUE

-- NOT OPERATOR --
SELECT *
FROM employees
WHERE NOT job = "Manager";

SELECT *
FROM employees
WHERE NOT job = "Manager" AND NOT job = "Asst. Manager";

-- BETWEEN --
SELECT *
FROM employees
WHERE hire_date BETWEEN "2023-01-04" AND "2023-01-07";

-- IN --
SELECT *
FROM employees
WHERE job IN ("Cook", "Cashier", "Janitor");