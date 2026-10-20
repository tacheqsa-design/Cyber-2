PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS menu_items;
DROP TABLE IF EXISTS customers;

-- =========================================
-- 1. CREATE TABLES
-- =========================================

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    phone       VARCHAR(20)
);

CREATE TABLE menu_items (
    item_id INTEGER PRIMARY KEY,
    name    VARCHAR(100) NOT NULL,
    price   DECIMAL(8,2) NOT NULL
);

CREATE TABLE orders (
    order_id    INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    item_id     INTEGER NOT NULL,
    quantity    INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (item_id)     REFERENCES menu_items(item_id)
);

-- =========================================
-- 2. INSERT DATA
-- =========================================

INSERT INTO customers (customer_id, name, phone) VALUES
(1, 'Nino Beridze',    '555111222'),
(2, 'Giorgi Kapanadze','555333444'),
(3, 'Mariam Gelashvili','555555666'),
(4, 'Luka Chkheidze',  '555777888');

INSERT INTO menu_items (item_id, name, price) VALUES
(1, 'Khachapuri', 12.50),
(2, 'Khinkali',    1.20),
(3, 'Pizza',      18.00),
(4, 'Burger',     15.00),
(5, 'Lemonade',    5.00);

INSERT INTO orders (order_id, customer_id, item_id, quantity) VALUES
(1, 1, 1, 2),   -- Nino: 2 x Khachapuri
(2, 1, 5, 2),   -- Nino: 2 x Lemonade
(3, 2, 2, 10),  -- Giorgi: 10 x Khinkali
(4, 2, 4, 1),   -- Giorgi: 1 x Burger
(5, 3, 3, 1),   -- Mariam: 1 x Pizza
(6, 3, 5, 1),   -- Mariam: 1 x Lemonade
(7, 4, 1, 1);   -- Luka: 1 x Khachapuri

-- =========================================
-- 3. READ — თითო კლიენტის ჯამური ხარჯი
-- =========================================

SELECT
    c.customer_id,
    c.name,
    SUM(o.quantity * m.price) AS total_spending  -- აქ დაემატა *
FROM customers c
JOIN orders o     ON c.customer_id = o.customer_id
JOIN menu_items m ON o.item_id     = m.item_id
GROUP BY c.customer_id, c.name
ORDER BY total_spending DESC;

-- =========================================
-- 4. UPDATE — მენიუს ერთი პროდუქტის ფასის შეცვლა
-- =========================================

UPDATE menu_items
SET price = 14.00
WHERE item_id = 1;   -- Khachapuri: 12.50 -> 14.00

-- შემოწმება
SELECT * FROM menu_items;  -- აქ დაემატა *

-- ხარჯი ფასის შეცვლის შემდეგ
SELECT
    c.name,
    SUM(o.quantity * m.price) AS total_spending  -- აქაც *
FROM customers c
JOIN orders o     ON c.customer_id = o.customer_id
JOIN menu_items m ON o.item_id     = m.item_id
GROUP BY c.customer_id, c.name;

-- =========================================
-- 5. DELETE — შეკვეთის წაშლა
-- =========================================

DELETE FROM orders
WHERE order_id = 7;

-- შემოწმება
SELECT * FROM orders;  -- აქაც დაემატა *