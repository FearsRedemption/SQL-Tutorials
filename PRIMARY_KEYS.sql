-- CREATE TABLE WITH PRIMARY KEY CONSTRAINT --
CREATE TABLE transactions (
	transaction_id INT PRIMARY KEY,
    amount DECIMAL (5, 2)
);

-- ALTER TABLE WITH PRIMARY KEY CONSTRAINT --
ALTER TABLE transactions
ADD CONSTRAINT 
PRIMARY KEY(transaction_id);
-- NOTE: You can only have one PRIMARY KEY defined

INSERT INTO transactions
VALUES (
	1000, 4.99
);

INSERT INTO transactions
VALUES (
	1001, 9.99
);

INSERT INTO transactions
VALUES (
	1001, 15.35 -- NOTE: This shares the same id as previous throws Error Code: Duplicate entry '1001' for key 'transactions.PRIMARY'
				-- NOTE: This also cannot be NULL
);

SELECT * FROM transactions;