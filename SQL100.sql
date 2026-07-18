-- Order by clause

select * from [dbo].[Employees] -- give all result

-- arrange data is ascending order wrt salary
select * from [dbo].[Employees]
order by Salary

-- arrange data is descending order wrt salary
select * from dbo.Employees
order by Salary desc   -- desc helps to arrange data in descending order

-- if want result in ascending order of department and descending order of salary
select * from dbo.Employees
order by Department asc, Salary desc