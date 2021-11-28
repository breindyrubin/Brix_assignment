--1. Return the 3 names and prices of the 3 vegetables with the highest prices
select top 3 * from Products
where Price=(select  Max(Price) from Products where CategoryId=1 )

--2. Return all of products table together with category name for every product, present the column of category name as “CategoryName”
alter table Products
add CategoryName nvarchar(50)
update Products set CategoryName ='vegetables' where CategoryId = 1
update Products set CategoryName ='dairy' where CategoryId = 2
update Products set CategoryName ='dry goods' where CategoryId = 3
update Products set CategoryName ='cleaning' where CategoryId = 4

--3. Add column “Description”, of type varchar with max length of 50 to products table.
alter table Products
add Description varchar(50)

--4. Set the content of Description column to ProductName_Desc. For example: description for bleach would be “bleach_Desc”
update Products set Description=ProductName+'_desc';

--5. Change the price of ‘laundry detergent’ to 30
UPDATE Products SET Price = 30 
where  ProductName = 'laundry detergent'

--6. Return second highest priced item from category cleaning
SELECT CategoryId, Price FROM Products p 
WHERE 2=(SELECT COUNT(DISTINCT Price) FROM Products pp WHERE p.Price<=pp.Price and CategoryId = 4 ) and CategoryId = 4 ;

--7. Return all items where price is higher than 6, lower than 12, and name does not start with c
select * from Products
where Price between 6 and 12 and ProductName not like 'c%'

--8. Add 10% to all prices
UPDATE Products SET Price = (Price * 1.1) 
