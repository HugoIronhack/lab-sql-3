use sakila;

# 1 How many distinct (different) actors' last names are there?

SELECT COUNT(DISTINCT last_name) 
FROM actor;  #121

# 2 In how many different languages where the films originally produced? (Use the column language_id from the film table)

SELECT COUNT(DISTINCT language_id)
FROM film;

# 3 How many movies were released with "PG-13" rating?

SELECT COUNT(rating)
FROM film
WHERE rating = "PG-13";  # 223

# 4 Get 10 the longest movies from 2006

SELECT *    
FROM film
WHERE release_year = "2006"
ORDER BY length DESC
LIMIT 10;

# 5 How many days has been the company operating (check DATEDIFF() function)?

SELECT *   
FROM rental
ORDER BY rental_date DESC
LIMIT 1;   # 2006/02/14

SELECT DATEDIFF("2023-03-07", DATE_FORMAT(last_update,"%Y-%m-%d")) AS operating_days 
FROM store;

# 6 Show rental info with additional columns month and weekday. Get 20.

SELECT *, SUBSTRING(rental_date, 6, 2) AS months, SUBSTRING(rental_date, 9, 2) AS weekday
FROM rental
LIMIT 20;

# 7 Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.

#still trying to find the answer.

# 8 How many rentals were in the last month of activity?

SELECT COUNT(*)
FROM rental
WHERE rental_date LIKE '2006-02%';

