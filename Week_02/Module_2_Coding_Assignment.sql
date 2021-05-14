SHOW tables;

/*
 All of the questions in this quiz refer to the open source Chinook Database.
 Please familiarize yourself with the ER diagram to familiarize yourself
 with the table and column names to write accurate queries and get the 
 appropriate answers.
 */

/*
 1. Find all the tracks that have a length of 5,000,000 milliseconds or more.
 */
DESC Track;

SELECT TrackId, Name, Milliseconds 
FROM Track
WHERE Milliseconds >= 5000000;

/*
 2. Find all the invoices whose total is between $5 and $15 dollars.
 */
DESC Invoice;

SELECT InvoiceId 
FROM Invoice
WHERE Total BETWEEN 5 AND 15;

/*
 3. Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
 */
SHOW tables;

DESC Customer;

SELECT CustomerId, FirstName, LastName, Company, State 
FROM Customer
WHERE State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY');

/*
 4. Find all the invoices for customer 56 and 58 where the total
 was between $1.00 and $5.00.
 */
DESC Invoice;

SELECT InvoiceDate, CustomerId, Total 
FROM Invoice
WHERE (CustomerID IN (56, 58))
AND (Total BETWEEN 1 AND 5)
AND (InvoiceId = 315);

/*
 5. Find all the tracks whose name starts with 'All'.
 */
DESC Track;

SELECT *
FROM Track
WHERE name LIKE 'All%';

/*
 6. Find all the customer emails that start with "J" and are from gmail.com.
 */
DESC Customer;

SELECT CustomerId, Email 
FROM Customer
WHERE Email LIKE 'J%' AND Email LIKE '%gmail.com%';

/*
 7. Find all the invoices from the billing city Brasília, Edmonton,
 and Vancouver and sort in descending order by invoice ID.
 */
DESC Invoice;

SELECT InvoiceId, BillingCity, Total
FROM Invoice
WHERE BillingCity IN ('Brasília','Edmonton', 'Vancouver')
ORDER BY InvoiceId DESC;

/*
 8. Show the number of orders placed by each customer (hint: this is found in 
 the invoices table) and sort the result by the number of orders in 
 descending order.
 */
SHOW tables;

DESC Invoice;

SELECT * FROM Invoice;

SELECT customerId, COUNT(InvoiceId)
FROM Invoice
GROUP BY customerId
ORDER BY COUNT(InvoiceId) DESC;

/*
 9. Find the albums with 12 or more tracks.
 */
SHOW tables;

DESC Album ;

SELECT * FROM Track;

SELECT  AlbumId, Count(AlbumId) AS Ntracks 
FROM Track
GROUP BY AlbumId
HAVING Ntracks >= 12;

