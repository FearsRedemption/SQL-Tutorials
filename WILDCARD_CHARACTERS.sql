-- wild card characters % _
-- used to substitute one or more characters in a string

-- PERCENT SIGN WILDCARD --
SELECT * FROM employees
WHERE first_name LIKE "s%";
-- RESULTS: Squidward, Spongebob, Sandy, Sheldon

SELECT * FROM employees
WHERE hire_date LIKE "2023%";
-- RESULTS: Well, this returns everything in the current table but if the "hire_date" was different it'd leave the ones that don't match out

SELECT * FROM employees
WHERE last_name LIKE "%r";
-- RESULTS: Patrick Star

-- UNDERSCORE WILDCARD --
-- Underscore Wildcare is any random character
SELECT * FROM employees
WHERE job LIKE "_ook";
-- RESULTS: Anything with "Cook", would also return "Look", "Book", "Took", etc

SELECT * FROM employees
WHERE hire_date LIKE "____-01-__";
-- RESULTS: Could result in 2023-01-02, 2023-01-03, 2022-12-25, etc...

-- BOTH WILDCARDS --
SELECT * FROM employees
WHERE job LIKE "_a%";
-- RESULTS: "Manager", "Cashier", "Janitor"