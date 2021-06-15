/*
1.
All of the questions in this quiz refer to the open source Chinook Database.
 Please familiarize yourself with the ER diagram in order to familiarize 
 yourself with the table and column names in order to write accurate queries 
 and get the appropriate answers.

Pull a list of customer ids with the customer’s full name, and address, 
along with combining their city and country together. Be sure to make a space
 in between these two and make it UPPER CASE. (e.g. LOS ANGELES USA)
*/
SELECT "CustomerId"
,"FirstName" ||' '|| "LastName" AS FullName
,"Address"
,UPPER("City" ||' '|| "Country") AS City_State
FROM "Customer";

-- What is the city and country result for CustomerID 16?
-- MOUNTAIN VIEW USA

/*
2.
All of the questions in this quiz refer to the open source Chinook Database. 
Please familiarize yourself with the ER diagram in order to familiarize 
yourself with the table and column names in order to write accurate queries 
and get the appropriate answers.

Create a new employee user id by combining the first 4 letters of the 
employee’s first name with the first 2 letters of the employee’s last name.
 Make the new field lower case and pull each individual step to show your work.
*/
SELECT "FirstName"
,SUBSTR("FirstName", 1,4) AS SFirstName
,"LastName"
,SUBSTR("LastName", 1,2) AS SLastName
,LOWER(SUBSTR("FirstName", 1,4) || SUBSTR("LastName", 1,2)) AS New_Employee_User_ID

FROM "Customer";

SELECT * FROM "Customer" c ;

-- What is the final result for Robert King?
-- RobeKi

/*
3.
All of the questions in this quiz refer to the open source Chinook Database.
 Please familiarize yourself with the ER diagram in order to familiarize 
 yourself with the table and column names in order to write accurate queries
  and get the appropriate answers.

Show a list of employees who have worked for the company for 15 or more years
 using the current date function. Sort by lastname ascending.
*/
SELECT "LastName", "FirstName"
,DATE('now') - "HireDate" AS Tenure
FROM "Employee"
WHERE Tenure >= 15
ORDER BY "LastName" ASC;

-- What is the lastname of the last person on the list returned?
-- Peacock

/*
4.
All of the questions in this quiz refer to the open source Chinook Database.
 Please familiarize yourself with the ER diagram in order to familiarize
  yourself with the table and column names in order to write accurate queries 
  and get the appropriate answers.

Profiling the Customers table, answer the following question.
 */

select *
from "Customer" c
where c."Company" is NULL;

-- Are there any columns with null values? Indicate any below.
-- Select all that apply.
/*
 Fax, Postal Code, Company, Phone
 */

/*
 5.
All of the questions in this quiz refer to the open source Chinook Database. 
Please familiarize yourself with the ER diagram in order to familiarize 
yourself with the table and column names in order to write accurate queries 
and get the appropriate answers.

Find the cities with the most customers and rank in descending order.
 */
select c."City", count(c."CustomerId") AS qt
from "Customer" c
group by c."City"
HAVING count(c."CustomerId") = 2
order by count(c."CustomerId") DESC;

-- Which of the following cities indicate having 2 customers?
-- London, Mountain View, São Paulo

/*
6.
Pergunta 6
All of the questions in this quiz refer to the open source Chinook Database. 
Please familiarize yourself with the ER diagram in order to familiarize 
yourself with the table and column names in order to write accurate queries 
and get the appropriate answers.

Create a new customer invoice id by combining a customer’s invoice id with 
their first and last name while ordering your query in the following order: 
firstname, lastname, and invoiceID.
 */
select c."FirstName" || c."LastName" || i."InvoiceId" as NewInvoiceId
from "Customer" c
left join "Invoice" i
on c."CustomerId" = i."CustomerId"
where c."FirstName" || c."LastName" || i."InvoiceId" like 'AstridGruber%'
order by c."FirstName", c."LastName", i."InvoiceId"

-- Select all of the correct "AstridGruber" entries that are returned in your 
-- results below. Select all that apply.
-- AstridGruber273, AstridGruber296, AstridGruber370



