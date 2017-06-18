-- File:     lp-12.sql
-- Course:   ISTA-420
-- Date:     June 19, 2017

-- The database assumed in the exercise is TSQLV4

-- 1
-- Create a table using the following data.
-- You will be using this table in future exercises
-- (a) create a table with the appropriate columns
-- (b) add a primary key
-- (c) make sure that the primary key is autoincremented
-- (d) insert the data using BULD INSERT as follows:
-- -----------------------------------------------------------------
-- President,Took office,Left office,Party,Home State
-- George Washington,30/04/1789,4/03/1797,Independent ,Virginia
-- John Adams,4/03/1797,4/03/1801,Federalist ,Massachusetts
-- Thomas Jefferson,4/03/1801,4/03/1809,Democratic-Republican ,Virginia
-- James Madison,4/03/1809,4/03/1817,Democratic-Republican ,Virginia
-- James Monroe,4/03/1817,4/03/1825,Democratic-Republican ,Virginia
-- John Quincy Adams,4/03/1825,4/03/1829,Democratic-Republican/National Republican ,Massachusetts
-- Andrew Jackson,4/03/1829,4/03/1837,Democratic ,Tennessee
-- Martin Van Buren,4/03/1837,4/03/1841,Democratic ,New York
-- William Henry Harrison,4/03/1841,4/04/1841,Whig,Ohio
-- John Tyler,4/04/1841,4/03/1845,Whig,Virginia
-- James K. Polk,4/03/1845,4/03/1849,Democratic ,Tennessee
-- Zachary Taylor,4/03/1849,9/07/1850,Whig,Louisiana
-- Millard Fillmore,9/07/1850,4/03/1853,Whig,New York
-- Franklin Pierce,4/03/1853,4/03/1857,Democratic ,New Hampshire
-- James Buchanan,4/03/1857,4/03/1861,Democratic ,Pennsylvania
-- Abraham Lincoln,4/03/1861,15/04/1865,Republican/National Union,Illinois
-- Andrew Johnson,15/04/1865,4/03/1869,Democratic/National Union,Tennessee
-- Ulysses S. Grant,4/03/1869,4/03/1877,Republican ,Ohio
-- Rutherford B. Hayes,4/03/1877,4/03/1881,Republican ,Ohio
-- James A. Garfield,4/03/1881,19/09/1881,Republican ,Ohio
-- Chester A. Arthur,19/09/1881,4/03/1885,Republican ,New York
-- Grover Cleveland,4/03/1885,4/03/1889,Democratic ,New York
-- Benjamin Harrison,4/03/1889,4/03/1893,Republican ,Indiana
-- Grover Cleveland (2nd term),4/03/1893,4/03/1897,Democratic ,New York
-- William McKinley,4/03/1897,14/9/1901,Republican ,Ohio
-- Theodore Roosevelt,14/9/1901,4/3/1909,Republican ,New York
-- William Howard Taft,4/3/1909,4/03/1913,Republican ,Ohio
-- Woodrow Wilson,4/03/1913,4/03/1921,Democratic ,New Jersey
-- Warren G. Harding,4/03/1921,2/8/1923,Republican ,Ohio
-- Calvin Coolidge,2/8/1923,4/03/1929,Republican ,Massachusetts
-- Herbert Hoover,4/03/1929,4/03/1933,Republican ,Iowa
-- Franklin D. Roosevelt,4/03/1933,12/4/1945,Democratic,New York
-- Harry S. Truman,12/4/1945,20/01/1953,Democratic,Missouri
-- Dwight D. Eisenhower,20/01/1953,20/01/1961,Republican ,Texas
-- John F. Kennedy,20/01/1961,22/11/1963,Democratic,Massachusetts
-- Lyndon B. Johnson,22/11/1963,20/1/1969,Democratic,Texas
-- Richard Nixon,20/1/1969,9/8/1974,Republican,California
-- Gerald Ford,9/8/1974,20/01/1977,Republican,Michigan
-- Jimmy Carter,20/01/1977,20/01/1981,Democratic ,Georgia
-- Ronald Reagan,20/01/1981,20/01/1989,Republican ,California
-- George H. W. Bush,20/01/1989,20/01/1993,Republican ,Texas
-- Bill Clinton,20/01/1993,20/01/2001,Democratic ,Arkansas
-- George W. Bush,20/01/2001,20/01/2009,Republican ,Texas
-- Barack Obama,20/01/2009,20/01/2017,Democratic   ,Illinois
-- Donald J. Trump,20/01/2017,Incumbent ,Republican ,New York

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

