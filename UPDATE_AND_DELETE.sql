-- UPDATE --
UPDATE employees
SET
	hourly_pay = 10.50, -- NOTE: You can set a row to be NULL just the same as it's value
    hire_date = "2023-01-07"
WHERE
	employee_id = 6;

-- UPDATE ALL COLUMNS --
UPDATE employees
SET hourly_pay = 10.25;
-- NOTE: EXCLUDE WHERE CLAUSE

-- DELETE ROWS --
DELETE FROM employees
WHERE employee_id = 6;

-- DELETE ALL ROWS (DANGEROUS) --
DELETE FROM <table name>

SELECT * FROM employees;