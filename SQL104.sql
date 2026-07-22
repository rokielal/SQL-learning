-- Insert Into

select * from dbo.Employees

/*to insert record in any table first we have to write name of the columns then its values*/
insert into dbo.Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
values (6, 'Anil', 'Ambani', 'AI', 87000, '12-07-1991')

select * from dbo.Employees

/*to insert record in any table for not all columns we have to mentione only specific column name then its values 
 The records which are empty will shows NULL value*/

insert into dbo.Employees(EmployeeID, FirstName, LastName)
values(8 , 'Raja', 'Bouri') 

select * from dbo.Employees

/*we can insert value without writing name of the columns for that we have to enter value of all columns */

insert into dbo.Employees
values(9, 'Mahi','Jha','HR',55000, '2002-12-01')

/*If we do not want to write name of the columns then how we will know the order of the columns means which value
to write in first then so on.. TO know the order of columns we have to know there ordinal position*/

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Employees'


