USE Chinook;

SELECT * FROM Track;

SELECT * FROM Album a ;

-- 1. Using a subquery, find the names of all the tracks for the album "Californication".
-- What is the title of the 8th track?
SELECT Name, AlbumId 
FROM Track 
WHERE AlbumId IN (SELECT AlbumId
FROM Album
WHERE Title = 'Californication');

-- 2. Find the total number of invoices for each customer along with the 
-- customer's full name, city and email.
-- After running the query described above, what is the email address of the 5th
-- person, František Wichterlová? Enter the answer below (feel free to copy and paste).
SELECT FirstName,
       LastName,
       City,
       Email,
       COUNT(I.CustomerId) AS Invoices
FROM Customer C INNER JOIN Invoice I
ON C.CustomerId = I.CustomerId
GROUP BY C.CustomerId

-- 3. Retrieve the track name, album, artistID, and trackID for all the albums.
-- What is the song title of trackID 12 from the 
-- "For Those About to Rock We Salute You" album? Enter the answer below.
SELECT Track.Name,
       A.Name AS Artist,
       Album.Title AS Album,
       Track.TrackId
FROM ((Track INNER JOIN Album
ON Track.AlbumId = Album.AlbumId)
INNER JOIN Artist A
ON A.ArtistId = Album.ArtistId); 

-- 4. Retrieve a list with the managers last name, and the last 
-- name of the employees who report to him or her.
SELECT M.LastName AS Manager, 
       E.LastName AS Employee
FROM Employee E INNER JOIN Employee M 
ON E.ReportsTo = M.EmployeeID;

-- 5. Find the name and ID of the artists who do not have albums. 
-- After running the query described above, two of the records returned have
-- the same last name. Enter that name below.
SELECT a.Name, a.ArtistId, a2.Title 
FROM Artist a 
LEFT JOIN Album a2 
ON a.ArtistId = a2.ArtistId 
WHERE a2.AlbumId IS NULL; 

-- 6. Use a UNION to create a list of all the employee's and customer's 
-- first names and last names ordered by the last name in descending order.
-- After running the query described above, determine what is the last name 
-- of the 6th record? Enter it below. Remember to order things in descending
-- order to be sure to get the correct answer.
SELECT FirstName, LastName 
FROM Employee e 
UNION 
SELECT FirstName, LastName 
FROM Customer c 
ORDER BY LastName DESC ;

-- 7. See if there are any customers who have a different city listed in their
-- billing city versus their customer city.
-- Indicate your answer below.
SELECT C.FirstName,
       C.LastName,
       C.City AS CustomerCity,
       I.BillingCity
FROM Customer C
INNER JOIN Invoice I
ON C.CustomerId = I.CustomerId
WHERE C.City != BillingCity









