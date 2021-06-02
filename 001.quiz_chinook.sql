USE Chinook;

SHOW tables;

DESC Album;

DESC Artist;

/*
 1 - How many albums does the artist Led Zeppelin have? 
 */
SELECT a.title, ar.name
FROM Album a 
INNER JOIN Artist ar
ON a.ArtistId = ar.ArtistId
WHERE ar.Name = 'Led Zeppelin';

/*
 2 - Create a list of album titles and the unit prices for the 
 artist "Audioslave".
 Only 25 records will be shown in the output so please look at the bottom 
 of the output to see how many records were retrieved.
 */
DESC Album ;

DESC Artist;

SHOW TABLES;

DESC InvoiceLine ;

SELECT il.UnitPrice, a.Name 
FROM InvoiceLine il 
INNER JOIN Artist a 
ON il.InvoiceId = a.ArtistId 
WHERE a.Name = 'Audioslave';

/*
 3 - Find the first and last name of any customer who
does not have an invoice. Are there any customers returned from the query?  
 */
DESC Customer ;

DESC Invoice;

SELECT * FROM InvoiceLine il ;

SELECT * FROM Invoice i ;

SELECT c.FirstName, c.LastName 
FROM Customer c 
INNER JOIN InvoiceLine il 
ON c.CustomerId = il.InvoiceLineId 
WHERE il.Quantity IS NULL ;

/*
 4 - Find the total price for each album.
 */
DESC Album;

SHOW tables;

DESC InvoiceLine ;

SELECT SUM(il.UnitPrice ) AS sum
FROM InvoiceLine il 
INNER JOIN Album a 
ON il.InvoiceLineId = a.AlbumId
WHERE a.Title = 'Big Ones';

/*
 5 - How many records are created when you apply a Cartesian join to 
 the invoice and invoice items table?
 */
SELECT i.InvoiceId 
FROM Invoice i 
INNER JOIN Invoice i2 
ON i.InvoiceId = i2.InvoiceId ;






