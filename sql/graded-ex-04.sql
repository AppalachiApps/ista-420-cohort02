-- File:	graded04.sql
-- Author:	Charles Carter
-- Date: June 28, 017

use tsqlv4;
go

-- 1
-- Look at the csv file named presidents-v2.csv in the SQL directory.
-- Create an appropriate table schema to import this data file.





-- 2
-- Insert the CSV data into the table you just created.






-- sanity check
select * from presidents;
go

-- 3
-- Create an audit table. This should have three columns:
-- the userid of the user changing the data, the date of the action, and the type of action
drop table if exists dbo.pres_audit;
go






-- 4
-- Create audit triggers for insert, update, and delete.
-- These should all bre similar, so copy, paste, and revise as appropriate.
drop trigger if exists dbo.tr_pres_insert;
go






drop trigger if exists dbo.tr_pres_update;
go






drop trigger if exists dbo.tr_pres_delete;
go






-- 5
-- Delete the first record from your table. This is the header.
-- Do not use the output clause.






-- 6
-- Alter the presidents table by adding a primary key column .






-- 7
-- Bring the data up to date by updating the last row. Do not use the output clause.






-- 8
-- Bring the data up to date by adding a new row. Do not use the output clause.






-- 9
-- Add a column to calculate the number of days each president's time
-- in office lasted. For example, George Washington was president for 2865 days.





-- 10
-- Add a column to calculate the age of each president when he took office.
-- You can ignore fractional years.
-- For example, George Washington 57 years old when elected president.






-----------------------------------------------------------------
-- your final product
-----------------------------------------------------------------
select * from presidents;
go
