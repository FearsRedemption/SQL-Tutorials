-- UNIQUE CONSTRAINT DURING TABLE CREATION --
CREATE TABLE products (
	product_id INT,
    product_name VARCHAR(25) UNIQUE, -- NOTE: Add UNIQUE to force only unique values
    price DECIMAL(4, 2)
);

-- UNIQUE CONSTRAINT ALTER TABLE --
ALTER TABLE products
ADD CONSTRAINT
UNIQUE(product_name);

INSERT INTO products
VALUES
	(100, "Hamburger", 3.99),
    (101, "Fries", 1.89),
    (102, "Soda", 1.00),
    (103, "Ice Cream", 1.49);
    -- (104, "Fries", 1.75) would give Error Code: Duplicate entry 'Fries' key for 'products.product_name'
SELECT * FROM products