create table product (
	ID int IDENTITY (1,1) PRIMARY KEY,
	name varchar(150),
	price decimal,
	category varchar(50),
	Pimage varbinary(max)
);

INSERT INTO product (name, price, category, Pimage)
values ('RougeEnwaaR Tee', 35.00, 'T-Shirt', LOAD_FILE('img/Kp tee.png'));

INSERT INTO trial (id, display)
values (1, LOAD_FILE('img/Kp tee.png'));


drop table product;

INSERT INTO product (name, price, category, Pimage) 
SELECT 'Kp Dad Hat', 20.00,'Hat', BulkColumn 
FROM Openrowset( Bulk 'C:\Users\HP\source\repos\ClothingCompanyKp\img\kp dad hat .png', Single_Blob) as image;

INSERT INTO product (name, price, category, Pimage) 
SELECT 'Kp Hoody', 50.00,'Hoody', BulkColumn 
FROM Openrowset( Bulk 'C:\Users\HP\source\repos\ClothingCompanyKp\img\Kp hoody.png', Single_Blob) as image;

alter table product
alter column Pimage VARBINARY(MAX);

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