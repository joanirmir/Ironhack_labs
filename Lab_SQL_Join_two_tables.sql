-- 1. Which actor has appeared in the most films?

SELECT first_name, last_name, count(film_id)
FROM sakila.film_actor
INNER JOIN sakila.actor
ON film_actor.actor_id = actor.actor_id
GROUP BY film_actor.actor_id
ORDER BY count(film_id) desc
limit 1;


-- 2. Most active customer (the customer that has rented the most number of films)

SELECT customer_id, first_name, last_name, count(rental_id)
FROM sakila.rental
INNER JOIN sakila.customer 
USING (customer_id)
GROUP BY customer_id
ORDER BY count(rental_id) DESC
limit 1;

-- 3. List number of films per category

SELECT count(film_id), name
FROM sakila.category
INNER JOIN sakila.film_category
Using(category_id)
GROUP BY category.name;

-- 4. Display the first and last names, as well as the address, of each staff member

SELECT first_name, last_name, address 
FROM sakila.staff
INNER JOIN sakila.address
Using(address_id);

-- 5. Display the total amount rung up by each staff member in August of 2005.

SELECT first_name, last_name, sum(amount)
FROM payment
INNER JOIN staff
Using(staff_id)
WHERE payment_date BETWEEN '2005-08-01' and '2005-08-31'
GROUP BY staff.staff_id;

-- 6. List each film and the number of actors who are listed for that film

SELECT title, count(actor_id)
FROM film
INNER JOIN film_actor
USING(film_id)
GROUP BY title;

-- 7: Using the tables payment and customer and the join command, list the total paid by each customer.

SELECT customer.last_name, customer.first_name, sum(amount)
FROM payment
INNER JOIN customer
USING(customer_id)
GROUP BY customer_id;

-- Bonus: What is the most rented film? The answer is Bucket Brotherhood. This query might require using more than one join statement. Give it a try.

SELECT title
FROM rental
INNER JOIN inventory
USING(inventory_id)
INNER JOIN film
USING(film_id)
GROUP BY title
ORDER BY count(rental_id) DESC
limit 1





