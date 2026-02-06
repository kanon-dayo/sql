##SELECT statement
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
#modified
SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';
SELECT description FROM film
WHERE title = 'Outlaw Hanky';
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';
