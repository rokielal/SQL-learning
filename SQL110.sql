
-- SUM, AVERAGE, COUNT & Group By

select * from Sales

-- Find sum of quantity column
Select SUM(Quantity) [Total Quantity] from dbo.Sales

-- Find sum of quantity column and sum of totalAmount column
select SUM(Quantity) [Total Quantity], SUM(TotalAmount) [Total Amount] from dbo.Sales

-- Find Average of quantity column and Average of totalAmount column
select AVG(Quantity) [Quantity Average], AVG(TotalAmount) [Average of Total Amount] from Sales

/*-- Findout sum of the quantity, Average of quantity sum of totalAmount and Average of totalAmount 
	for each distinct product id*/

select ProductID, SUM(Quantity) [Total Quantity], AVG(Quantity) [Average of Quantity], 
SUM(TotalAmount) [Total Amount], AVG(TotalAmount) [Average of Total Amount] from dbo.sales
group by ProductID

/*Note:  Like MAX and MIN function if there is any NULL value SUM and AVG function will ignore it*/

-- find sum of quantity, sum of amount, avg of quantity & avg of amount for distinct combinations of productID & storeID
select ProductID, StoreID, 
SUM(Quantity) [Total Quantity],
SUM(TotalAmount) [Total Amount],
AVG(Quantity) [Average of Quantity],
AVG(TotalAmount) [Average of Total Amount]
from Sales 
group by ProductID, StoreID

-- COUNT function
select * from dbo.Sales

--Find total number of records in the table
select COUNT(*) [Total Records] from dbo.Sales

/*If we want to count of any column but in that column if NULL valud is present COUNT function will ignore it*/
select COUNT(PaymentMethod) from dbo.Sales -- it will show 8 records bcz there are 2 NULL value which is ignored by COUNT function

--if we want to find the distinct product ids in the given table, we can use COUNT along wiht DISTINCT
select COUNT(distinct productID) [Distinct Products]from dbo.Sales -- in this table there are 3 distinct products

select COUNT(distinct PaymentMethod) [Distinct Payment Methods] from dbo.Sales --it will also give 3 result as count will ignore NULL value
