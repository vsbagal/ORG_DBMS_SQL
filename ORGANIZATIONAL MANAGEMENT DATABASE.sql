-- Create the database
CREATE DATABASE INTERVIEW;
USE Interview;

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
    (1, 'John', 'Doe', 'IT', 60000.00),
    (2, 'Jane', 'Smith', 'HR', 55000.00),
    (3, 'Michael', 'Johnson', 'Finance', 70000.00),
    (4, 'Emily', 'Williams', 'IT', 62000.00),
    (5, 'David', 'Brown', 'Marketing', 58000.00);

-- Create the Projects table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(15, 2),
    ManagerID INT
);

-- Insert sample data into Projects table
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, Budget, ManagerID)
VALUES
    (1, 'Website Redesign', '2022-01-15', '2022-06-30', 150000.00, 1),
    (2, 'Payroll System Upgrade', '2022-03-01', '2022-08-15', 200000.00, 3),
    (3, 'Product Launch', '2022-05-10', '2022-09-30', 100000.00, 5),
    (4, 'Market Research', '2022-04-15', '2022-07-31', 80000.00, 2),
    (5, 'Sales Campaign', '2022-06-01', '2022-10-15', 120000.00, 4);
    
    
