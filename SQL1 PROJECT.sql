QUESTION 1: 
A. Return a query that will arrange the customer id in ascending order and descending order.

Statement: 
SELECT customer_id
FROM customer
ORDER BY customer_id ASC;

Output Description: 
From the customer table which shows all the columns and total number of 599customers, we have 1 as the lowest(ascending order)customer_id to 599 as the highest(descending order)customer_id.)

Diagram Representation:



PART B
STATEMENT:

SELECT *
FROM customer
ORDER BY customer_id DESC;

OUTPUT DESCRIPTION:
From the customer table which shows all the columns and total number of 599customers, we have 599 as the highest(descending order) customer_id to the 1 as the lowest(ascending order) customer_id.)

Diagram Representation:



Question 2:
Return a query that will return the lastname in ascending and show 
the top 25names.

STATEMENT:

SELECT last_name
FROM customer
ORDER BY last_name ASC
LIMIT 25;

OUTPUT ANALYSIS: 
This returns the arrangement of lastname in ascending order (from A-Z) with the limit of 25rows)

Diagram Representation:



Question 3:
Return a query that will arrange the firstname in descending order and show the bottom 25names

STATEMENT:
SELECT first_name
FROM customer
ORDER BY first_name DESC
LIMIT 25;

OUTPUT ANALYSIS: 
This returns arrangement of firstname in descending order (Z-A)with  the limit of 25rows

Diagram Representation


Question 4:
Return a query that will show customer_id and amount of top five spenders.

STATEMENT:

SELECT customer_id
FROM payment
ORDER BY amount DESC;

OUTPUT ANALYSIS: 
From the payment table, the amount was arranged in descending order whereby the customer_id with the highest cumulative amount appeared as the top spender.

Diagram Representation


Question 5:
Return a query that will count all the movies that are R or PG-13 rated

STATEMENT:

SELECT *
FROM film;

SELECT COUNT (rating)
FROM film
WHERE rating = 'R';

OUTPUT ANALYSIS:
From film table, a column rating has different distinct values. With the use of Where statement, the query returns the specified value indicated and counted the number of times the specified values appeared. R value gives total of 195times while PG-13 returns 223 times.




Diagram Representaion:


SELECT COUNT (rating)
FROM film
WHERE rating = 'PG-13';

OUTPUT ANALYSIS:
From film table, a column rating has different distinct values. With the use of Where statement, the query returns the specified value indicated and counted the number of times the specified values appeared. R value gives total of 195times while PG-13 returns 223 times.


QUESTION 6:
Return a query that will return a specific number of ratings in the table

SELECT DISTINCT rating
FROM film;

OUTPUT ANALYSIS:
A specific number of values in a column are called unique values in which these values can appear multiple times in that same column. From rating column in film table, the unique values are 5.



Question 7:
Retrieve entire data from the customer table where lastname is not Johnson

SELECT last_name
FROM customer
WHERE last_name NOT IN ('Johnson')
ORDER BY customer_id;

OUTPUT ANALYSIS: 
There were total number of 599 customers but with the conditional statement to exempt lastname that has Johnson, it returns all 588 customers name


Question 8
Show data for customer email, lastname, firstname with firstname as Jamie and lastname as Rice.

SELECT customer_id, first_name, last_name, email
FROM customer
WHERE first_name ILIKE 'jamie' AND last_name ILIKE 'rice';

OUTPUT ANALYSIS: 
AND statement is a conjunctional statement in which it returns the true statement. Also, the LIKE $ ILIKE statement are case sensitive and insensitive respectively which can be used to search for key words not certain with the cases used (upper or lower). With the use of these two statement, it return only a customer that has her firstname as Jamie and
lastname as Rice with the email address.



Question 9:
Retrieve data from film table whose renter rate is less than 3usd and greater than 5usd

SELECT film_id, rental_rate
FROM film
WHERE rental_rate < 3  OR rental_rate > 5;
OUTPUT ANALYSIS:
This returns all the films that has a rental rate of either less than 3usd or rental rate greater than 5usd which amount to total number of 664rows
of 1000rows.)


Question 10:
Return a query that will return the amount each customer spent and the number of times each of them engaged in a transaction


STATEMENT
SELECT *
FROM payment

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;

OUTPUT ANALYSIS:
There were 14000rows of the number of times all the customers transacted. With the use of count, the query returns total of 599rows and specific times each customer transacted; for example, customer id 1 and 2 transacted 30 and 26 times respectively.



Question 11:
From the payment table, return a query of a customer that spent the highest amount and 
another that spent the lowest.

SELECT customer_id, SUM (amount) as total_amount
FROM payment
GROUP BY customer_id
       ORDER BY total_amount DESC;
Output: With the use of sum, the query returns the total amount of all the transacted times of each customer. In descending order, customer_id 148 spent 211.58 which is the highest amount.





SELECT customer_id, SUM(amount) as total_amount
FROM payment
GROUP BY customer_id
ORDER BY total_amount ASC;
OUTPUT ANALYSIS:
With the use of sum, the query returns the total amount of all the transacted times of each customer. In ascending order, customer_id 318 spent 27.93 which is the lowest amount.





Question 12:
Return a query that displays with id 5, 11, 24, 34 then sort firstname alphabetically

SELECT customer_id, first_name, last_name
FROM customer
WHERE customer_id IN (5, 11, 24, 34)
ORDER BY first_name ASC;
OUTPUT ANALYSIS:
The conditional statement WHERE indicated to only return customers with id 5,11,24,34 and to also sort the firstname alphabetically.


Question 13:
Return a query that excludes customer id 5, 7, 9, 22, 25

SELECT customer_id, first_name, last_name
FROM customer
WHERE customer_id NOT IN (5, 7, 9, 22, 25);

OUTPUT ANALYSIS:
Total number of customer_id is 599 but with the use of NOT IN, the query exempts indicated customer_id and returns the remaining id (594 ids))


Question 14:
Return a query where the first name starts with 'C' and the order where there's 'in' anywhere in the last_name

SELECT customer_id, first_name, last_name
FROM customer
WHERE first_name ILIKE 'C%';

SELECT customer_id, first_name, last_name
FROM customer
WHERE last_name ILIKE '%in%';

SELECT customer_id, first_name, last_name
FROM customer
WHERE first_name LIKE 'C%' OR last_name ILIKE '%in%';


OUTPUT ANALYSIS:
Statement LIKE with keyword and % as a placeholder(ie other alphabets after indicated keyword) returns customer_info firstname that starts with C and ILIKE returns last names that has 'in' at the middle.


Question 15:
Return a query that will find the amount spent by customers with id number 180 to 300 and the total number 0f times they transacted

SELECT customer_id, COUNT (amount)
FROM payment
WHERE customer_id BETWEEN 180 AND 300
GROUP BY customer_id;

OUTPUT ANALYSIS:
The statement COUNT returns the total number of transacted times of only customer_id from 180 to 300.



     PART 2:
Question 1:
How many ALTER expressions do we have and write their syntaxes explaining what each argument stands for. 


Analysis
Alter Expression in Strutured Query Language is used for modification in an existing database. There are 5ways in which ALTER expression can be used
(1) For additional column to the existing columns in a table 
	ALTER TABLE tables_name ADD COLUMN new_column_name datatype

(2) For removal of an existing column in a table
	ALTER TABLE tables_name DROP COLUMN existing_column_nam

(3) For change of datatypes of a particular column in an existing table's name
	ALTER TABLE tables_name ALTER columns_name TYPE new_datatypes

(4) For change of an existing column_name to a new_name
	ALTER TABLE tables_name RENAME old_column_name to new_column_name

Question 2:
Your manager called you and complained that there was an information that was missing from the customer table in the DVD rental database. He wants to gather information on the skills of their customers. He needs someone with an IT skill to help in the ICT department. You were then asked to add that information to the customer table, what are you going to do?

ANALYSIS:
From the parameters given, a database DVD rental with table name Customer has been created.However, updating the customer's skills to the existing informating requires creatinga new column in the table which brings about the use of Alter table.

Syntax: 
	ALTER TABLE customer ADD COLUMN Skills VARCHAR;
After creating a column Skills, there can be use of Update and Case in order to input each customer's skills.

Syntax:
	UPDATE customer
	SET skills = 'Swimming'
	WHERE customer_id BETWEEN 1 AND 10;

UPDATE customer
SET Skills = 
CASE customer_id
WHEN 11 THEN  'Traveling'
WHEN 12 THEN  'Skating'
END;

SELECT customer_id, skills
FROM customer
ORDER BY customer_id
LIMIT 12;


Question 3:
Your manager came again and asked you to please include the age of the customers in the customer table. Later he came to you that it was no longer necessary, that you should remove the age column from the customer table. How will you do this, please support your answer with queries.

ANALYSIS:
In order to include a new column showing customer's age, there will be the use of alter column to add new collated information and also, indication of datatype.

Syntax:
	ALTER TABLE customer ADD COLUMN Age VARCHAR;
Furthermore, in a case where the new column Age created is not useful or to be removed, we can use Alter table.

Syntax:
	ALTER TABLE customer DROP COLUMN Age;

Question 4:
You were asked to rename the ‘skill’ column to ‘’IT skill’, how will you
do this?

ANALYSIS:
For changes in an existing column, the use of Alter table effect specification of desired values.

Syntax:
	 	ALTER TABLE customer RENAME Skills to IT_Skills;

SELECT *
FROM customer
WHERE customer_id IN (20);

Question 5:
You were told that customer with id number 3, has a mistake in their records, so, you were asked to change the last name from ‘Williams’ to ‘Martino’. 

ANALYSIS:
For modification in an column, the Update statement can be used wherebythere is indication of specified value or new value in a string. Moreso,it is expected to include a unique identify of that which customer that has the information.

Syntax:
	
UPDATE customer
SET last_name = 'Martino'
WHERE customer_id = 3;

Question 6:
The Head of ICT department approached you and pointed out an error in the customer table and asked you to remove a row with customer id 20

DELETE
FROM customer
WHERE customer_id IN (20);
	


	



	
