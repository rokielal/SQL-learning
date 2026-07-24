-- Aggrigate funcations
-- MAX & Group BY Clause

select * from dbo.Sales

-- Need to find maximum amount from total amount
select max(totalAmount) from dbo.Sales  -- column heading is not available

select MAX(totalAmount) [Maximum Amount] from dbo.Sales  -- it will show result with column heading Maximum Amount

--if we want to find date on which maximum sales happened, we can use max function in date also

select MAX(SaleDate) [Maximum Sale Date] from dbo.Sales

-- Both sale date and sale amount in one line
select MAX(SaleDate) [Maximum sale date], MAX(TotalAmount) [Maximum Sale Amount] from dbo.Sales

--if we apply max function is text as well

select MAX(PaymentMethod) [Pay Method] from dbo.Sales
/*Note: Whenever there is NULL value Max function and Min function will ignore NULL value*/

-- We have to find maximum quantity sold for each product id
select productID, MAX(Quantity) [Max Quantity] from dbo.Sales
group by ProductID

select * from Sales

-- If we want to find total quantity sold for each product ID and total amount sold
select productID, sum(Quantity) [Total Quantity], SUM(TotalAmount) [Total Amount] from dbo.Sales
group by ProductID

