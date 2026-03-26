-- Create database
CREATE DATABASE college;

-- Use database
USE college;

-- Create table StudentRaw
CREATE TABLE StudentRaw (
    Name VARCHAR(50),
    Department VARCHAR(50),
    Marks INT
);

-- Insert records
INSERT INTO StudentRaw VALUES 
('Amit', 'CS', 85),
('Riya', 'IT', 72),
('Anjali', 'CS', 90),
('Rahul', 'Mechanical', 65),
('Arjun', 'CS', 78),
('Sneha', 'IT', 88),
('Akash', 'CS', 92);

-- Display all records
SELECT * FROM StudentRaw;

-- Display only name, department, marks
SELECT Name, Department, Marks FROM StudentRaw;

-- Students with marks > 75
SELECT * FROM StudentRaw WHERE Marks > 75;

-- Students from CS department
SELECT Name FROM StudentRaw WHERE Department = 'CS';

-- Names starting with 'A'
SELECT Name FROM StudentRaw WHERE Name LIKE 'A%';

-- Count total students
SELECT COUNT(*) FROM StudentRaw;

-- Add new column Email
ALTER TABLE StudentRaw ADD Email VARCHAR(100);

-- Modify Marks column
ALTER TABLE StudentRaw MODIFY Marks DECIMAL(5,2);

-- Drop Email column
ALTER TABLE StudentRaw DROP COLUMN Email;

-- Drop table
DROP TABLE StudentRaw;