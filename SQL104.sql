-- NULL operator

select * from dbo.Employees

insert into dbo.Employees
values(10,'Raj', ' ', 'IT', 44000,'2001-4-3')

insert into dbo.Employees
values(11,'Viash', 'Gupta ', '0', 44000,'2001-4-3')

/*if we want to check records with Null value*/

select * from dbo.employees where Department = Null  -- this does not throw any error but does not give any result

select * from dbo.Employees where Department is Null  -- this is correct statement to find Null value

select * from dbo.Employees where Department is not Null  -- this finds department where value is not Null