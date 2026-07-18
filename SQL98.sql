
-- replica of [dbo].[EmployeeRecords] will be created and stored in this query window only

select * into #temp1 from [dbo].[EmployeeRecords]

select * from #temp1

-- it will not run in new query window and give error invalid object name #temp1


-- it will create replica of [dbo].[Employees]
select * into ##temp2 from [dbo].[Employees]

select * from ##temp2  
/* it can be run on different query window and even on another instance for sql server 
it will run if the main instance is active */

