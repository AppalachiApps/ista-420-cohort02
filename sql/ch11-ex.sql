-- ch11.sql
--	25JUN2017

-- run the following code
use tsqlv4;
go

-- 1
-- create a stored procedure that contains a static query and returns
-- the order id, the order date, the shipping country, and the contact name
-- of all orders
-- name the stored procedute spGetOrders and run this code:

spGetOrders

-- this should return 830 records like this:
-- 10248	2014-07-04	France	Elliott, Patrick

-- 2
-- create a stored procedure that accepts three parameters, a 
-- start date, an end date, and a country
-- name the stored procedure spGetOrdersParams and
-- run the following code:

spGetOrdersParams @startdate = '2014-07-01', @enddate = '2014-08-01', @country = 'France'

-- this should return three records as follows:
-- 10248	2014-07-04	France	Elliott, Patrick
-- 10251	2014-07-08	France	Tuntisangaroon, Sittichai
-- 10265	2014-07-25	France	Bansal, Dushyant

-- 3
-- create an output stored procedure that returns an
-- integer count of the orders between two dates
-- for the specified country and run this code:

declare @numorders int;
exec spCountOrdersParams @startdate = '2014-07-01', @enddate = '2014-08-01', @country = 'France', @ordercount = @numorders output
print @numorders;

-- this should return 3

-- run this code for the next three exercises

drop table if exists dbo.tbl_employee_audit;
go
create table dbo.tbl_employee_audit (
	userid sysname not null,
	ldt datetime2 not null,
	action varchar(15) not null,
	empid int not null);
go
select * from dbo.tbl_employee_audit
go

-- 4
-- create an insert trigger and run this code:

insert into HR.employees values
('Washington','George','Pres','Gen','1750-01-01','1774-06-20',
	'Mt Vernon','Mt Vernon','Va','00000','USA','555-555-1212',	null)
select * from HR.employees;
select * from dbo.tbl_employee_audit

-- dbo.tbl_emplolyee_audit should contain one record

-- 5
-- create an update trigger and run this code:

update HR.employees
set hiredate = '1788-04-04' where title = 'Pres';
select * from HR.employees;
select * from dbo.tbl_employee_audit;

-- dbo.tbl_employee_audit should contain two records

-- 6
-- create a delete trigger and run this code:

delete from HR.Employees where titleofcourtesy = 'Gen';
select * from HR.employees;
select * from dbo.tbl_employee_audit

-- dbo,tbl_employee_audit should contain three records

