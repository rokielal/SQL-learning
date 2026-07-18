-- Where Clause

select * from [dbo].[EmployeeRecords] -- it will give all records in table eployeeRecords

-- filter employee detials for employeeId 2
select * from [dbo].[EmployeeRecords]
where EmployeeID = 2

-- if we want to olny have firstname of employeeID 2

select EmployeeID, firstName from [dbo].[EmployeeRecords]
where EmployeeID = 2 

-- if we want fullname and heading as fullname for employeeId 3
select EmployeeId, CONCAT(firstName,' ',lastName) [Full Name] from [dbo].[EmployeeRecords]
where EmployeeId = 3

-- filter where salary is more than 75000

select * from [dbo].[EmployeeRecords] where Salary >= 75000.00
 -- it will give same result as employeeID is different for all employee
select distinct * from [dbo].[EmployeeRecords] where Salary >= 75000.00


select firstName, lastName, Department, Salary from [dbo].[EmployeeRecords] where Salary >= 75000.00
-- Now we can get distinct result
select distinct firstName, lastName, Department, Salary from [dbo].[EmployeeRecords] where Salary >= 75000.00
