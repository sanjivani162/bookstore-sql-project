CREATE TABLE books (book_id INT PRIMARY KEY, title VARCHAR(100), author VARCHAR(100), price INT);
CREATE TABLE customers (customer_id INT PRIMARY KEY, customer_name VARCHAR(100), city VARCHAR(50), email VARCHAR(100));
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, book_id INT, quantity INT, order_date DATE);

INSERT INTO books VALUES (1, 'Wings of Fire', 'APJ Abdul Kalam', 299);
INSERT INTO books VALUES (2, 'Harry Potter', 'J.K. Rowling', 499);
INSERT INTO books VALUES (3, 'Atomic Habits', 'James Clear', 399);

INSERT INTO customers VALUES (1, 'Sanjivani', 'Pune', 'sanjivani@gmail.com');
INSERT INTO customers VALUES (2, 'Vedika', 'Mumbai', 'vedika@gmail.com');

INSERT INTO orders VALUES (1, 1, 1, 2, '2026-11-17');
INSERT INTO orders VALUES (2, 2, 2, 1, '2026-11-17');
INSERT INTO orders VALUES (3, 1, 3, 1, '2026-11-17');


SELECT customers.customer_name, books.title, orders.quantity
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
JOIN books ON orders.book_id = books.book_id;