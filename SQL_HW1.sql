--1. How many actors are there with the lastname 'Wahlberg'?
select count(last_name) from actor where last_name like 'Wahlberg'; 

--2.How many payments were made between 3.99 and 5.99?
select count(amount) from payment where amount >= 3.99  or amount <= 5.99

--3.What film does the store have the most of?
select film_id, count(film_id) from inventory where film_id = 200  group by film_id order by film_id

--4.How many customers have the last name ‘William’?
select count(last_name) from customer where last_name like 'William' 

--5.What store employee (get the id) sold the most rentals?
select staff_id, count(staff_id) from payment where staff_id = 2 group by staff_id  order by staff_id

--6.How many different district names are there?
select count(district) from address 

--7. What film has the most actors in it? (use film_actor table and get film_id)
select actor_id, film_id from film_actor where actor_id >= 200 group by actor_id, film_id  

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(last_name) from customer where last_name like '_%es' 

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select count(amount) from payment where customer_id >379 and customer_id <431 group by rental_id >250

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select rating, count(rating) from film group by rating 
