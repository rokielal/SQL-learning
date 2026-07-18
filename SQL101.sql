-- AND & OR Operator

select * from EmployeeRecords
where LastName = 'Miller'  -- we have to wrote in single quote

select * from EmployeeRecords
where LastName = 'Miller' and EmployeeID = 3

select * from EmployeeRecords
where LastName = 'Miller' and EmployeeID = '3'  -- both will give same result

--if we want details if HR and finance department only

select * from EmployeeRecords
where Department = 'HR' or Department = 'finance'

-- --if we want details if HR and finance department and salary has to be 60000
select * from EmployeeRecords
where (Department = 'HR' or Department = 'finance') and Salary >= 60000

