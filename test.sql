 use MonMagasin

use MonMagasin

create table Shippers(
    ShipperID int primary key,
    CompanyName nvarchar(50) not null,
    Phone nvarchar(50) not null
);

create table Payment(
    PaymentID int primary key,
    PaymentType nvarchar(50) not null,
    Allowed bit not null
);

create table Category(
    CategoryID int primary key,
    CategoryName nvarchar(50) not null,
    Description nvarchar(50) not null,
    Picture nvarchar(50) not null,
    Active tinyint not null
);


create table OrderDetails(
    OrderID int not null,
    ProductID smallint not null,
    OrderNumber nvarchar(50) not null,
    Price float not null,
    Quantity tinyint not null,
    Discount time(7) not null,
    Total float not null,
    IDKU nvarchar(50) not null,
    Size nvarchar(50) not null,
    Color nvarchar(50) not null,
    Fulfilled bit not null,
    ShipDate date not null,
    OrderDetailID int primary key,
    BillDate date not null
);

create table Products(
    ProductID int primary key,
    SKU money not null,
    IDKU nvarchar(50) not null,
    VendorProductID tinyint not null,
    ProductName nvarchar(50) not null,
    ProductDescription nvarchar(50) not null,
    SupplierID int not null,
    CategoryID tinyint not null,
    QuantityPerUnit tinyint not null,
    UnitPrice float not null,
    MSRP float not null,
    AvailableSize nvarchar(50) not null,
    AvailableColor nvarchar(50) not null,
    Discount tinyint not null,
    UnitWeight float not null,
    UnitsInStock tinyint not null,
    UnitsOnOrder tinyint not null,
    ReorderLevel tinyint not null,
    ProductAvailable tinyint not null,
    DiscountAvailable tinyint not null,
    CurrentOrder tinyint not null,
    Picture nvarchar(50) not null,
    Ranking tinyint not null,
    Note nvarchar(50) not null
);


create table Orders(
    OrderID int primary key,
    ProductID smallint not null,
    CustomerID tinyint not null,
    OrderNumber nvarchar(50) not null,
    PaymentID tinyint not null,
    OrderDate date not null,
    ShipDate date not null,
    RequiredDate date not null,
    ShipperID tinyint not null,
    Freight float not null,
    SalesTax tinyint not null,
    Timestamp datetime2(7) not null,
    TransactStatus nvarchar(50) not null,
    ErrLoc tinyint not null,
    ErrMsg nvarchar(50) not null,
    Fulfilled nvarchar(50) not null,
    Deleted nvarchar(50) not null,
    Paid nvarchar(50) not null,
    PaymentDate date not null
);



create table Customers(
    CustomerID int primary key,
    FirstName nvarchar(50) not null,
    LastName nvarchar(50) not null,
    Class nvarchar(50) not null,
    Room smallint not null,
    Building nvarchar(50) not null,
    Address1 nvarchar(50) not null,
    Address2 nvarchar(1) NULL,
    City nvarchar(50) not null,
    State nvarchar(50) not null,
    PostalCode int not null,
    Country nvarchar(50) not null,
    Phone nvarchar(50) not null,
    Email nvarchar(50) not null,
    VoiceMail nvarchar(50) not null,
    Password nvarchar(50) not null,
    CredidCard float not null,
    CreditCardTypeID tinyint not null,
    CardExpMo tinyint not null,
    CardExpYr smallint not null,
    BillingAddress nvarchar(50) not null,
    BillingCity nvarchar(50) not null,
    BillingRegion nvarchar(50) not null,
    BillingPostalCode int not null,
    BillingCountry nvarchar(50) not null,
    ShipAddress nvarchar(50) not null,
    ShipCity nvarchar(50) not null,
    ShipRegion nvarchar(50) not null,
    ShipPostalCode int not null,
    ShipCountry nvarchar(50) not null,
    DateEntered date not null
);

create table Suppliers(
    SupplierID int primary key,
    CompanyName nvarchar(50) not null,
    ContactFName nvarchar(50) not null,
    ContactLName nvarchar(50) not null,
    ContactTitle nvarchar(50) not null,
    Address1 nvarchar(50) not null,
    Address2 nvarchar(1) NULL,
    City nvarchar(50) not null,
    State nvarchar(50) not null,
    PostalCode nvarchar(50) not null,
    Country nvarchar(50) not null,
    Phone nvarchar(50) not null,
    Fax nvarchar(50) not null,
    Email nvarchar(50) not null,
    URL nvarchar(50) not null,
    PaymentMethods nvarchar(50) not null,
    DiscountType nvarchar(50) not null,
    TypeGoods nvarchar(50) not null,
    Notes nvarchar(50) not null,
    DiscountAvailable bit not null,
    CurrentOrder smallint not null,
    Logo nvarchar(50) not null,
    CustomerID int not null,
    SizeURL nvarchar(50) not null
);


Select * from Suppliers;

Select * from Products

Select * from Category

Select * from Customers

Select * from Orders

Select * from OrderDetails

Select * from Payment

Select * from Shippers

