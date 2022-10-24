-- NOT NULL CONSTRAINT DURING TABLE CREATION --
CREATE TABLE products(
	product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4, 2) NOT NULL
);

-- NOT NULL ALTER TABLE --
ALTER TABLE products
MODIFY price DECIMAL(4, 2) NOT NULL;

INSERT INTO products
VALUES(104, "Cookie", NULL); -- THIS GIVES Error Code: Column 'price' cannot be null

SELECT * FROM products;