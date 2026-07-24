
-- SQL MIN function & Group By

select * from dbo.Sales

-- We want to find minimum sales quantity

select MIN(quantity) [Min sale quantity] from Sales

-- We want to find minimum date saleDate column
select MIN(SaleDate) [Min Sale Date] from Sales

-- we want to find minimum amount from each store ID
 
select StoreID, MIN(totalAmount) [Min Amount] from Sales
group by StoreID
