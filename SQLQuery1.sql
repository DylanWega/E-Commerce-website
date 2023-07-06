CREATE TABLE Customer (
FirstName varchar(50),
LastName varchar(50),
Email varchar(50) PRIMARY KEY,
address varchar(50),
City varchar(50),
Country varchar(50),
Postcode varchar(25),
Password varchar(20)
);

INSERT INTO Customer (FirstName,LastName, Email, address, City, Country, Postcode, Password)
VALUES
('Jordan','Morgan', 'jp@yahoo.com', 'The gateway', 'Leicester', 'UK', 'LE1 9BH', '123');

SELECT * from Customer

CREATE TABLE orders (
orderID int IDENTITY(001,1) PRIMARY KEY,
productName varchar(100),
productPrice int,
Email varchar(50) FOREIGN KEY REFERENCES Customer(Email),
LastName varchar(50),
address varchar(50),
City varchar(50),
Country varchar(50),
Postcode varchar(25),
);

