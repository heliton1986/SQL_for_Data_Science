USE Chinook;

SHOW tables;

SELECT * FROM Employee;

SELECT Address, lastName, FirstName 
FROM Employee
WHERE lastName = 'King' AND firstName = 'Robert';