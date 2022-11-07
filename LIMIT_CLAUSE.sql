-- LIMIT CLAUSE is used to limit the number of records
-- Useful if you're working with a lot of data
-- Can be used to display a large data on pages (Pagination)

SELECT * FROM customers;
-- 1, Fred Fish
-- 2, Larry Lobster
-- 3, Bubble Bass
-- 4, Poppy Puff

SELECT * FROM customers
LIMIT 1;
-- RESULTS: Fred Fish

SELECT * FROM customers
LIMIT 2;
-- RESULTS: Fred Fish, Larry Lobster

SELECT * FROM customers
ORDER BY last_name LIMIT 1;
-- RESULTS: Bubble Bass

SELECT * FROM customers
ORDER BY last_name DESC LIMIT 1;
-- RESULTS: Poppy Puff

-- OFFSET --
SELECT * FROM customers
LIMIT 1, 1;
-- RESULTS: Skip 1st, Show next 1st
-- Larry Lobster

SELECT * FROM customers
LIMIT 2, 1;
-- RESULTS: Skip 1st AND 2nd, Show next 1st
-- Bubble Bass

SELECT * FROM customers
LIMIT 10;

SELECT * FROM customers
LIMIT 10, 10;
SELECT * FROM customers
LIMIT 20, 10;
SELECT * FROM customers
LIMIT 30, 10;