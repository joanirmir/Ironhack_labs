-- 1. Show all the tables in a list
show tables;

-- 2. Explore tables by selecting all columns from each table or using the in built review features for your client



SELECT table_name, column_name from information_schema.columns
where table_schema = 'skila'
order by table_name, ordinal_position;

-- Select one column from a table. Get film titles.
SELECT title 
FROM sakila.film;

-- 4. Select one column from a table and alias it. Get unique list of film languages under the alias language.as
SELECT distinct language_id as language from sakila.language;

-- 5.1 How many stores does the company have?
SELECT store from sales_by_store;

-- 5.2 Find out how many employees staff does the company have?
SELECT count(staff_id) from sakila.staff;

-- 5.3 REtrun a list of employee first names only?
SELECT first_name from sakila.staff;