--1
select top 3 * from Products
where Price=(select  Max(Price) from Products where CategoryId=1 )

--2
alter table Products
add CategoryName nvarchar(50)
update Products set CategoryName ='vegetables' where CategoryId = 1
update Products set CategoryName ='dairy' where CategoryId = 2
update Products set CategoryName ='dry goods' where CategoryId = 3
update Products set CategoryName ='cleaning' where CategoryId = 4

--3
alter table Products
add Description varchar(50)

--4
update Products set Description=ProductName+'_desc';

--5
UPDATE Products SET Price = 30 
where  ProductName = 'laundry detergent'

--6
SELECT CategoryId, Price FROM Products p 
WHERE 2=(SELECT COUNT(DISTINCT Price) FROM Products pp WHERE p.Price<=pp.Price and CategoryId = 4 ) and CategoryId = 4 ;

--7
where Price between 6 and 12 and ProductName not like 'c%'

--8
UPDATE Products SET Price = (Price * 1.1) 
