-- Full outer Join

select * from table1

select * from table2

select * from table1 full outer join table2 on table1.c1 = table2.C1

select a.C1, b.C1, b.C3 from table1 a full outer join table2 b on a.c1 = b.C1

