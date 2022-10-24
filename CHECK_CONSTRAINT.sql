-- CHECK CONSTRAINT DURING CREATION --
CREATE TABLE employees (
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5,2),
    hire_date DATE,
    -- NOTE: To give a name add CONSTRAINT <name>
    CONSTRAINT chk_hourly_pay CHECK (
		hourly_pay >= 10.00
    )
);

-- CHECK CONSTRAINT ALTER TABLE --
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay
CHECK (
	hourly_pay >= 10.00
);

INSERT INTO employees
VALUES (
	6, "Sheldon", "Plankton", 5.00, "2023-01-07" -- Since hourly_pay is <= 10.00 it throws Error Code: Check constraint '<check constraint name>' is violated
);

INSERT INTO employees
VALUES (
	6, "Sheldon", "Plankton", 10.00, "2023-01-07" -- Since hourly_pay is = 10.00 it works fine
);

-- DELETE CHECK --
ALTER TABLE employees
DROP CHECK chk_hourly_pay;

SELECT * FROM employees;