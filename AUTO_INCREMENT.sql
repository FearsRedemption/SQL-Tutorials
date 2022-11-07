-- Setting up AUTO_INCREMENT during table creation --
CREATE TABLE transactions (
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2)
);

-- These are listed as such to show stages and not necessarily the appropriate way to write/add these --
INSERT INTO transactions (amount)
VALUES (4.99);

INSERT INTO transactions (amount)
VALUES (2.89);

INSERT INTO transactions (amount)
VALUES (3.38);

INSERT INTO transactions (amount)
VALUES (4.99);

-- Alter increment start number --
ALTER TABLE transactions
auto_increment = 1000;

-- Drop previous inserts and re-add them from above --
DELETE FROM transactions;

SELECT * FROM transactions;