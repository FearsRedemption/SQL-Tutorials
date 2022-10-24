-- CREATE TABLES --
CREATE TABLE <desired table name> (
	<column name> <data type>, -- COMMA if more than one
	employee_id INT,
    first_name varchar(50),
    last_name varchar(50),
    hourly_pay DECIMAL(5, 2), -- (Max Digits, Precision (location of decimal point))
    hire_date DATE
);

-- SELECTING TABLES --
SELECT * FROM <table name>;

-- RENAMING TABLE --
RENAME TABLE <current table name> TO <new table name>;

-- DROP TABLE --
DROP TABLE <table name>;

-- ALTER TABLE --
ALTER TABLE <table name>
ADD <column name> <data type>;

-- RENAME A COLUMN --
ALTER TABLE <table name>
RENAME COLUMN <current column name> to <new table name>;

-- MODIFY DATA TYPE --
ALTER TABLE <table name>
MODIFY column <column name> <data type>;

-- MODIFY COLUMN LOCATION --
ALTER TABLE <table name>
MODIFY <column name> <data type>
AFTER <column name to be placed after>;
-- NOTE: You can use FIRST to make column location be first in group --

-- DROP COLUMN --
ALTER TABLE <table name>
DROP COLUMN <column name>;