-- File:	graded03.sql
-- Author:	Charles Carter
-- Date: June 18, 017

-- Look at the csv file named presidents-short.csv in the SQL directory.
-- Create an appropriate table schema.
-- Insert the CSV data into the table you just created.

-- 1
-- Delete the first record from your table using the output clause. This is the header.
-- Alter the presidents table by adding a primary key column .

-- 2
-- Bring the data up to date by updating the last row. Use the output clause.

--3
-- Bring the data up to date by adding a new row. Use the output clause.

-- 4
-- How many presidents from each state belonged to the various political parties? Sort by party and state.

-- 5
-- The presidents data has a problem with dates. Print out all the records that
-- do not contain a valid date.

-- 6
-- In what cities do we have both a customer and an employee? Use a join.

-- 7
-- In what cities do we have either a customer or an employee? Use a join.

-- 8
-- Create a view containing customer contacts and employees containing name, role (customer or employee),
-- address, city, state, and zip code where the person lives in the USA. Use a set operator.

--9
-- Alphabetize the list by last name.

-- 10
-- Perform an analysis of employee sales. List the employees ranked
-- by their total sales from hghest sales to lowest, and for
-- each employee state the percentage of each order that the
-- amount of the order bears to that employee's total sales.
--  Columns should be employee name, employee id, order id, vlu, total value, and pct
-- Use the Sales.OrderValues view, but you will also have to do a join.
-- Example: Yael Peled, 4, 10767, 28.00, 232890.87, 0.60344827586206896551724137
