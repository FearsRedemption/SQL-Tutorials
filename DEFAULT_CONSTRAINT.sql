-- WITHOUT DEFAULT CONSTRAINT --
-- You have to add manually
INSERT INTO products
VALUES
	(104, "Straw", 0.00),
    (105, "Napkin", 0.00),
    (106, "Plastic Fork", 0.00),
    (107, "Plastic Spoon", 0.00);
    
DELETE FROM products
WHERE price = 0.00;

-- CREATE TABLE WITH DEFAULT CONSTRAINT --
CREATE TABLE products (
	product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4,2) DEFAULT 0.00
);

-- ALTER TABLE TO ADD DEFAULT CONSTRAINT --
ALTER TABLE products
ALTER price SET DEFAULT 0.00;

INSERT INTO products (product_id, product_name)
VALUES
	(104, "Straw"),
    (105, "Napkin"),
    (106, "Plastic Fork"),
    (107, "Plastic Spoon");

SELECT * FROM products;

-- ANOTHER EXAMPLE --
CREATE TABLE transactions (
	transaction_id INT,
    amount DECIMAL(5,2),
    transaction_date DATETIME DEFAULT NOW()
);

INSERT INTO transactions (transaction_id, amount)
VALUES (
	1, 4.99
);

INSERT INTO transactions (transaction_id, amount)
VALUES (
	2, 2.98
);

INSERT INTO transactions (transaction_id, amount)
VALUES (
	3, 11.49
);

SELECT * FROM transactions;