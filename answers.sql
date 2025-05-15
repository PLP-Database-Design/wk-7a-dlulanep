-- Question 1
USE salesdb;  
-- Original table with repeating groups.
CREATE TABLE Productdetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductNames VARCHAR(255) -- Comma-separated list of products.
);

-- Normalize the table into 1NF by splitting repeating groups.
CREATE TABLE Productdetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(255)
);

-- Question 2
USE Salesdb;
CREATE TABLE Productdetail_2NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(255)
);

INSERT INTO Productdetail_2NF (CustomerName, ProductName)
SELECT DISTINCT CustomerName, ProductName
FROM Productdetail;
