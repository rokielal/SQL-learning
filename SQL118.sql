-- Left join

select * from table1

select * from table2


-- This will compare value of table1 C1 and table2 C1 and print all four cloumns in result
select * from table1 left join table2 ON table1.C1 = table2.C1


-- If we want only one C1 from table1
select table1.C1, table2.C1, table2.C3 from table1 left join table2 ON table1.C1 = table2.C1


-- Providing allias names to tables
select a.c1, b.c1, b.c3 from table1 a left join table2 b ON a.C1 = b.C1







