--SELECT statement
SELECT 'Postagres is ready' AS status;
SELECT * FROM actor;
SELECT first_name FROM actor;
SELECT first_name, last_name FROM actor;
SELECT DISTINCT (release_year) FROM film;
SELECT COUNT(rating) FROM film;
SELECT COUNT(DISTINCT (title)) FROM film;
SELECT COUNT(*) FROM payment;
SELECT * FROM customer
WHERE first_name = 'Jared';
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating='R';
SELECT COUNT(title) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating='R';
SELECT * FROM film
WHERE rating != 'R';
SELECT * FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';
--modified
SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';
SELECT description FROM film
WHERE title = 'Outlaw Hanky';
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';
--2026/02/08
SELECT title FROM film
ORDER BY length
LIMIT 5;
--Automatically shows "ASC"
SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;
SELECT title, length FROM film
WHERE length <= 50
ORDER BY length DESC
LIMIT 50;
--If the previous customer can watch any movie that is 50 minutes or less in run time, how many options does she have?
SELECT count(title) FROM film
WHERE length <= 50;
--We want to reward our first 10 paying customers. What are the customer IDs of the first 10 customers who created a payment.
--NOTE: This question asks for data in chronological order.
--Key insight: Sort by time, not amount, to find the "first" customers.
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;
--2026/02/10
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15'
--未満で出力される。
ORDER BY payment_date ASC;
SELECT * FROM customer
WHERE first_name NOT IN ('John','Jake','Julie');
SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';
--2026/2/11
--better to use * than `first_name`
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';
--How many unique districts are our customers from?
SELECT COUNT(DISTINCT(district)) FROM address;
SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5.00 AND 15.00;
SELECT COUNT(title) FROM film
WHERE title Like ('%Truman%');
SELECT MAX(replacement_cost),MIN(replacement_cost)
FROM film;
SELECT ROUND(AVG(replacement_cost),2)
FROM film;
SELECT SUM(replacement_cost)
FROM film;