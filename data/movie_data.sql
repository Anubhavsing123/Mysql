use mydb;
--SLECET all columns from this table

SELECT * FROM Products

--select only one column from this table

SELECT price FROM Products

--alsing 
SELECT name as Productsname, price as ProductPrice from Products;

--arthimatic operation

SELECT name as Productsname ,price+100  as ProductPrice from Products;

--add constration
SELECT name as Productsname ,5 as review from Products


--to get dist single col

SELECT DISTINCT age FROM user;

--to get distinct multiple col

SELECT DISTINCT name,age FROM user;
