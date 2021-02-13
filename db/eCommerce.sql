CREATE TABLE user (
    user_id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES order(order_id)
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR (150)
);

CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    price NUMERIC
);

CREATE TABLE order (
    order_id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES product(product_id)
);

INSERT INTO user
(first_name, last_name, email)
VALUES
('Brady', 'England', 'bradyengland@w.com');

INSERT INTO user
(first_name, last_name, email)
VALUES
('Joe', 'Jonas', 'jonasbros@w.com');

INSERT INTO user
(first_name, last_name, email)
VALUES
('Richard', 'Simmons', 'rich@w.com');

INSERT INTO product
(name, price)
VALUES
('Slide', 599.99);

INSERT INTO product
(name, price)
VALUES
('Toy', 24.59);

INSERT INTO product
(name, price)
VALUES
('Climbing Gear', 459.99);

INSERT INTO order
(product_id)
VALUES
(1);

INSERT INTO order
(product_id)
VALUES
(2);

INSERT INTO order
(product_id)
VALUES
(3);

SELECT *
FROM order_id = 1;

SELECT *
FROM order;

SELECT SUM(price)
FROM product
JOIN order ON product.proudct_id = order.product_id;

SELECT *
FROM user u
JOIN order o ON u.order_id = o.order_id;

SELECT COUNT(*), g.order_id
FROM user u
JOIN order o ON u.order_id = o.order_id;