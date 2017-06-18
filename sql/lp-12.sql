-- File:     lp-12.sql
-- Course:   ISTA-420
-- Date:     June 19, 2017

-- The database assumed in the exercise is TSQLV4

-- 1
-- Create a table using the data in the data directory, presidents-short.csv..
-- You will be using this table in future exercises
-- (a) create a table with the appropriate columns
-- (b) insert the data using BULK INSERT

-- Run the following code to create the dbo.Customers table
-- in the TSQLV4 database

USE TSQLV4;

DROP TABLE IF EXISTS dbo.Customers;

CREATE TABLE dbo.Customers
(
  custid      INT          NOT NULL PRIMARY KEY,
  companyname NVARCHAR(40) NOT NULL,
  country     NVARCHAR(15) NOT NULL,
  region      NVARCHAR(15) NULL,
  city        NVARCHAR(15) NOT NULL  
);

-- 2
-- Insert into the dbo.Customers table a row with:
-- custid:  100
-- companyname: Coho Winery
-- country:     USA
-- region:      WA
-- city:        Redmond

-- 3
-- Insert into the dbo.Customers table 
-- all customers from Sales.Customers
-- who placed orders

-- 4
-- Use a SELECT INTO statement to create and populate the dbo.Orders table
-- with orders from the Sales.Orders
-- that were placed in the years 2014 through 2016

-- 5
-- Delete from the dbo.Orders table
-- orders that were placed before August 2014
-- Use the OUTPUT clause to return the orderid and orderdate
-- of the deleted orders

-- 6
--- Delete from the dbo.Orders table orders placed by customers from Brazil

