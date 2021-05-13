USE Chinook;

SHOW tables;

/*
 1.For all of the questions in this quiz, we are using the Chinook database. 
 All of the interactive code blocks have been setup to retrieve data only 
 from this database.

 Retrieve all the records from the Employees table.
 */
SELECT * FROM Employee;

/*
 What is Robert King's mailing address? Note: You will have to scroll to 
 the right in order to see it.
 */
SELECT Address, lastName, FirstName 
FROM Employee
WHERE lastName = 'King' AND firstName = 'Robert';

/*
 2.
Pergunta 2
Retrieve the FirstName, LastName, Birthdate, Address, City, and State
from the Employees table.
 */
SELECT FirstName, LastName, BirthDate, Address, City, State
FROM Employee;

/*
 Which of the employees listed below has a birthdate of 3-3-1965?
 */
SELECT FirstName, LastName, BirthDate, Address, City, State
FROM Employee
WHERE birthdate = '1965-03-03';

/*
 3.
Pergunta 3
Retrieve all the columns from the Tracks table, but only return 20 rows.
 */
SELECT *
FROM Track
LIMIT 20;

/*
 What is the runtime in milliseconds for the 5th track, 
 entitled "Princess of the Dawn"? Note: You will need to scroll to the right
  to see it, and you may want to copy and paste the number to ensure 
  it is entered correctly.
 */
SELECT TrackId, Name, Milliseconds
FROM Track
WHERE TrackId = 5;










