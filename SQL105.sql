-- Update Statement


select * from dbo.Employees

/*Update means to make changes in the table

- for now we do not want to change the original table so we are creating a temporaray table and will update that table*/

select * into #1 from dbo.Employees -- it will create a temporaray table nameed #1 and has all the data

select * from #1

-- Now we want to make changes in the table where department is Null

--Note: Whenever we are using Update statement there has to be an Where condition, if we use update without where entire
-- table will be updated

update #1 
set Department = 'HR' where Department is Null

-- if we want to update more than one colum for employee ID 8

update #1
set Salary = 89000, HireDate = '2003-8-23'
where EmployeeID = 8

select * from #1 where EmployeeID = 8

-- now lets see what will happen to the table without using where condition
-- for that lets create another temporaray table #2 so that original table is not affected

select * into #2 from dbo.Employees

select * from #2

update #2
set Department = 'Finance' -- this will update values of department to Finance for all employees in the table because where condition is not used








