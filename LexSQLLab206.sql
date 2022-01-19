USE sakila;

-- Q1
SELECT last_name, COUNT(last_name)
FROM sakila.actor
GROUP BY (last_name)
HAVING COUNT(last_name) = '1';

-- Q2
SELECT last_name, COUNT(last_name)
FROM sakila.actor
GROUP BY (last_name)
HAVING COUNT(last_name) >1;

-- Q3
SELECT staff_id, COUNT(rental_id)
FROM sakila.rental
GROUP BY (staff_id);

-- Q4
SELECT release_year, COUNT(film_id)
FROM sakila.film
GROUP BY (release_year);

-- Q5
SELECT rating, COUNT(film_id)
FROM sakila.film
GROUP BY (rating)
ORDER BY (rating);

-- Q6
SELECT rating, ROUND(AVG(length),2) AS mean
FROM sakila.film
GROUP BY (rating)
ORDER BY (rating);

-- Q7
SELECT rating, ROUND(AVG(length),2) AS mean
FROM sakila.film
GROUP BY (rating)
HAVING mean > 120
ORDER BY (rating);

-- Q8
SELECT title, length, RANK() OVER(ORDER BY (length) DESC) AS ranking
FROM sakila.film; 
