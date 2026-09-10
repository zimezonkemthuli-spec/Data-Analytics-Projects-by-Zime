Create database InventoryDB
Go 
Use InventoryDB;

/*Creating table called Items*/
Create table Items 
(
    ItemID Varchar(10) Primary key,
    ItemName Varchar(100),
    Category Varchar(50),
    Price Decimal(10,2),
    StockQuantity Int
);

/*Inserting values into table called Items*/
Insert into Items 
Values
(001, 'Desk', 'Furniture', 300.00, 20),
(002, 'Chair', 'Furniture', 150.00, 50),
(003, 'Notebook', 'Stationery', 10.00, 100),
(004, 'Pen', 'Stationery', 2.00, 200),
(005, 'Monitor', 'Electronics', 250.00, 30);

/*Creating table called Customers1*/
Create table Customers1 
(
    CustomerID Int Primary key,
    FirstName Varchar(50),
    LastName Varchar(50),
    Email Varchar(100),
    Phone Varchar(20)
);

/*Inserting values into table called Customers1*/
Insert into Customers1 
Values
(101, 'Mandla', 'Xaba', 'mandla.xaba@gmail.com', '081-456-7890'),
(102, 'Mlondi', 'Nzama', 'mlondi.nzama@gmail.com', '073-567-8901'),
(103, 'Noluthando', 'Ncube', 'nolu.ncube@gmail.com', '068-678-9012');

/*Creating table called Orders*/
Create table Orders1
(
    OrderID Varchar(10) Primary key,
    CustomerID Int 
    Foreign key (CustomerID) References Customers1(CustomerID),
    OrderDate Date,
    TotalAmount Decimal(10,2),
    
);

/*Inserting values into table called Orders1*/
Insert into Orders1
Values
(001, 101, '2024-07-01', 600.00), 
(002, 102, '2024-07-02', 300.00), 
(003, 103, '2024-07-03', 150.00);

/*Creating table called OrderItems*/
Create table OrderItems 
(
    OrderItemID Varchar(10) Primary key,
    OrderID Varchar(10),
    ItemID Varchar(10),
    Quantity Int,
    LineTotal Decimal(10,2),
    Foreign key (OrderID) References Orders1(OrderID),
    Foreign key (ItemID) References Items(ItemID)
);

/*Inserting values into table called OrderItems*/
Insert into OrderItems 
Values
(001, 001, 001, 2, 600.00), 
(002, 001, 003, 5, 50.00), 
(003, 002, 002, 2, 300.00), 
(004, 003, 004, 10, 20.00);

/*Write a query to display all orders showing OrderID, CustomerID, OrderDate, and 
TotalAmount*/
Select OrderID, 
CustomerID, OrderDate, 
TotalAmount
From Orders1;


/*Using a sub-query, write a SQL query that increases the price of all Items in the 
Furniture category by 10%*/
Update Items
Set Price = Price * 1.10
Where ItemID In 
(Select ItemID From Items Where Category = 
'Furniture');


/*Write a query to display the total quantity sold and total revenue for each item*/
Select
    i.ItemID,
    i.ItemName,
    Sum(oi.Quantity) As TotalQuantitySold,
    Sum(oi.LineTotal) As TotalRevenue
From Items i
Join OrderItems oi On i.ItemID = oi.ItemID
Group by i.ItemID, i.ItemName;


/*Create a stored procedure to keep a SQL query to find the best-selling item by 
total sales amount. Show the ItemName and TotalSalesAmount*/
Create procedure GetBestSellingItem1
As
Begin
 Select
    i.ItemName,
    Sum(oi.LineTotal) As TotalSalesAmount
    From Items i
    Join OrderItems oi On i.ItemID = oi.ItemID
    Group by i.ItemID, i.ItemName
    Order by TotalSalesAmount Desc
  End;  

 Exec GetBestSellingItem1;


/*Create a stored procedure to keep a SQL query that displays the total amount 
spent by each customer*/
Create procedure GetCustomerOrderSummary1
As
    Select 
        c.CustomerID,
        c.FirstName,
        c.LastName,
        Sum(o.TotalAmount) As TotalSpent
    From Customers1 c
    Join Orders1 o On c.CustomerID = o.CustomerID
    Group by c.CustomerID, 
    c.FirstName, c.LastName;

Exec GetCustomerOrderSummary1;

/*Create a view that uses the JOIN statement to display the customer who has 
placed the highest total orders. The view should show the CustomerID, 
FirstName, LastName, and TotalAmount*/
Create view TopCustomer 
As
Select 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    Sum(o.TotalAmount) AS TotalAmount
From Customers1 c
Join Orders1 o On c.CustomerID = o.CustomerID
Group by c.CustomerID, c.FirstName, c.LastName,
TotalAmount;

Select * from TopCustomer;

select * from Items;
select * from Customers1;
select * from Orders1;
select * from OrderItems;

