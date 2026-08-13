-- Left and Right Anti Join

select * from table1

select * from table2

-- Left Anti join

select * from table1 Left join table2 on table1.C1 = table2.C1
where table2.C3 is null

-- Left Anti join

select * from table1 Right join table2 on table1.C1 = table2.C1
where table1.C2 is null