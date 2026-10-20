-- 1. Create the table
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    price INTEGER,
    quantity INTEGER
);


-- 2. Add 4 products (აქაც products უნდა იყოს)
INSERT INTO products (product_id, name, price, quantity)
VALUES
    (1, 'bread', 18, 85),
    (2, 'cheese', 19, 92),
    (3, 'Milk', 17, 78),
    (4, 'Juice', 20, 95);


-- 3. Display all products
SELECT *
FROM products;


-- 4. Display only products names
SELECT name
FROM products;


-- 5. Find product price than 50 (აქ 50 უნდა ჩაგესვა)
SELECT *
FROM products
WHERE price > 50;


-- 6. Change bread's price
UPDATE products
SET price = 90
WHERE product_id = 1;


-- 7. Delete Milk
DELETE FROM products
WHERE product_id = 3;