

select * from Employees

select FirstName from Employees

select LastName from Employees

select firstName,lastName from Employees

select firstname,department, salary from Employees

/* concat is used to take firstname and lastname from table and make fullname we used space 
 to create a space between firstname and lastname in the below o/p heading will not be available*/

select employeeID,CONCAT(firstName,' ',lastName) from Employees

/* to get the heading we can use below format */

select employeeID,CONCAT(firstName,' ',lastName) [Full Name] from Employees

/* we can use as also or without it also same result */
select employeeID,CONCAT(firstName,' ',lastName) as [Full Name] from Employees