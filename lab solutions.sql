-- Use the sakila database to do the following tasks:
USE sakila;
-- Show all tables.
show tables;
-- Retrieve all the data from the tables actor, film and customer.
Select * from actor;
Select * from film;
Select * from customer;
-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
Select title from film;
-- 3.2. List of languages used in films, with the column aliased as language from the language table
Select * from language;
-- 3.3 List of first names of all employees from the staff table
Select first_name from staff;
-- Retrieve unique release years.
Select distinct(release_year) from film;


-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
Select count(distinct(store_id)) from store;
-- 5.2 Determine the number of employees that the company has.
Select count(distinct(staff_id)) from staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
Select count(distinct(rental_id)) from rental where return_date is NULL; -- number of movies rented
Select count(distinct(film.film_id)) from film; -- number of movies. As we didn't learn how to join two tables yet, I can't substract both numbers. But the result is 817
-- 5.4 Determine the number of distinct last names of the actors in the database.
Select count(distinct(first_name)) from actor;
-- Retrieve the 10 longest films.
Select * from film order by length desc limit 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor where first_name = 'SCARLETT';
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
Select * from film where title like '%ARMAGEDDON%' and  length>100;
-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content
Select * from film where special_features like '%Behind the Scenes%';