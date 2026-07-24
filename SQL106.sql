-- Delete, Drop and Truncate (interview qestion)

select * from dbo.employees

select * into #3 from dbo.Employees -- it create a replica of employees with name #3

select * from #3

/*Lets delete that record where either department is 0 or lastname is blank*/

delete from #3
where LastName = ' ' or Department = '0'

/*Like update statement Delete must be used with where condition otherwise whole data will be removed from table*/

select * into #4 from dbo.Employees

select * from #4

delete from #4  -- it will delete all records from the table so where condition must be used with delete

/*If we want to delete certain records we use DELETE but if we want to delete entire data but table structure 
  should remain and columns Name also should remain we can use TRUNCATE And if we want to remove entire table along 
  with there structure we will use DROP*/

  select * from #3 -- it will show all the data 

  truncate table #3

  select * from #3 -- it will delete all the data but structure and columns heading remains

  -- Now if we use DROP statement it will delete the entire table along with its Data

  drop table #3

   select * from #3 -- it will show error invalid object name #3 as the table is deleted.


   --Delete - delete certain records from the table

--if we will use delete without where condition, all records from the table will be deleted, but the 
--table structure remains intact

--Truncate - delete all the records from the table but the structure of the table remains intact

--Drop - all the records will be deleted plus table structure will also be removed


