-- Inner join

Select * from table1

Select * from table2

-- This will compare value of table1 C1 and table2 C1 and print all four cloumns in result
select * from table1 inner join table2 on table1.C1 = table2.C1

-- If we want only one C1 from table1
select table1.C1, table1.C2, table2.C3 from table1 inner join table2 on table1.C1 = table2.C1

-- Providing allias names to tables
select * from table1 a inner join table2 b on a.C1 = b.C1

-- now again printing only one C! from table1 with allias name 
select a.C1,a.C2,b.C3 from table1 a inner join table2 b on a.C1 = b.C1

--Note inplace of inner join we can only write join no issue it will work fine
select a.C1,a.C2,b.C3 from table1 a join table2 b on a.C1 = b.C1