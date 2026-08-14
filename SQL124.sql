-- Self Join

Select * from table1

-- Giving alias name 
Select * from table1 as a inner join table1 as b on a.C1 = b.C1

-- if we want only specific columns from each table
Select a.C1, b.C2 from table1 as a inner join table1 as b on a.C1 = b.C1

-- we can write only join inplace of inner join both will give same output
Select a.C1, b.C2 from table1 as a join table1 as b on a.C1 = b.C1