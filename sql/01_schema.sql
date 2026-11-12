-- Table definitions recovered from the report.
Create table Product(
ProductID int primary key,
Name varchar(190) not null,
Description varchar(330) not null,
Price decimal(10,2) not null,
StockLevel int not null
);
Create table Customer(
CustomerID int primary key ,
FirstName varchar(50) not null,
Lastname varchar(50) not null,
Phone varchar(10) not null,
Email varchar(100) not null,
City varchar(100) not null,
Street varchar(150) not null,
PostalCode int not null
);
Create table Orders(
OrderID int Primary Key,
OrderDate Date not null ,
CustomerID int Not Null references Customer(CustomerID),
Status Varchar(50)
);
Create table OrderProducts(
OrderID int references Orders(OrderID),
ProductID int references Product(ProductID),
Quantity int not null,
Price decimal(10,2) not null,
Primary key(OrderID,ProductID)
);
Create table Shipping(
TrackingNumber int Primary Key,
OrderID int references Orders(OrderID),
ShppingStatus Varchar(100),
DeliveryDate Date not null
);
