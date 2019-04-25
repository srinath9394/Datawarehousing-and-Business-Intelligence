create table Product 
(
Product_key integer not null,
ProductID varchar(20) not null,
WeightUnitMeasureCode char(3) null,
SizeUnitMeasureCode char(3) null,
ProductName varchar(50) not null,
StandardCost number(19,4) null,
FinishedGoodsFlag varchar(4) null,
Color varchar(15) null,
SafetyStockLevel number(5) null,
ReorderPoint number(5) null,
ListPrice number(19,4) null,
"Size" varchar(50) null,
SizeRange varchar(50) null,
Weight float(49) null,
DaysToManufacture integer null,
ProductLine	char(2) null,
DealerPrice number(19,4) null,
"Class" char(2) null,
"Style" char(2) null,	
ModelName varchar(50) null,
"Description"	varchar(400) null,
StartDate date null,
EndDate	date null,
Status varchar(7) null,
constraint Product_PK Primary key (product_key)
);

Create table SalesTerritory
(
SalesTerritoryKey int not null,
SalesTerritoryID int not null,
SalesTerritoryRegion varchar(50) not null,
SalesTerritoryCountry varchar(50) not null,
SalesTerritoryGroup varchar(50)  null,
constraint Territory_PK Primary key (SalesTerritoryKey));

Drop table Customer;
Create  table Customer
(
CustomerKey int not null,
CustomerID varchar(15) not null,
Title varchar(8)  null,
FirstName varchar(50)  null,
MiddleName varchar(50)  null,
LastName varchar(50)  null,
NameStyle varchar(10) null,
BirthDate date null,
MaritalStatus char(1) null,
"Suffix" varchar(10) null,
Gender	varchar(1) null,
EmailAddress varchar(100) null,
YearlyIncome number(19,4) null,
TotalChildren number(3) null,
NumberChildrenAtHome number(3) null,
Education varchar(40) null,
Occupation varchar(10) null,
HouseOwnerFlag varchar(1) null,
NumberCarsOwned number(3) null,
AddressLine1 varchar(120) null,
AddressLine2 varchar(120) null,
Phone varchar(20) null,
DateFirstPurchase date null,
CommuteDistance varchar(15) null, 
constraint Customers_PK Primary Key (CustomerKey)
);

create table Dim_Time
(
DateKey int not null,
FullDate date not null,
DayNumberOfWeek number(3) not null,
DayNameOfWeek varchar(10) not null,
DayNumberOfMonth number(3) not null,
DayNumberOfYear number(5) not null,
WeekNumberOfYear number(3) not null,
MonthName varchar(15) not null,
MonthNumberOfYear number(3) not null,
CalendarQuarter number(3) not null,
CalendarYear number(5) not null,
CalendarSemester number(3) not null,
FiscalQuarter number(3) not null,
FiscalYear number(5) not null,
FiscalSemester number(3) not null,
Constraint TimeDimension_PK Primary key (DateKey));

Create table Fact_Transaction
(
ProductKey int not null,
OrderDateKey int not null,
DueDateKey int not null,
ShipDateKey int not null,
CustomerKey int not null,
PromotionKey int not null,
SalesTerritoryKey int not null,
SalesOrderNumber varchar(20) not null,
SalesOrderLineNumber number(3) not null,
RevisionNumber number(3)  null,
OrderQuantity number(5)  null,
UnitPrice number(19,4) null,
ExtendedAmount number(19,4) null,
UnitPriceDiscountPct float(49) null,
DiscountAmount float(49) null,
ProductStandardCost number(19,4) null,
TotalProductCost number(19,4) null,
SalesAmount number(19,4) null,
TaxAmt number(19,4) null,
Freight number(19,4) null,
CarrierTrackingNumber varchar(25) null,
CustomerPONumber varchar(25) null,
OrderDate date null,
DueDate date null,
ShipDate date null,
constraint Transactions_PK Primary key (SalesOrderNumber,SalesOrderLineNumber),
constraint Transactions_FK_Product Foreign key (ProductKey) References Product(ProductKey),
constraint Transactions_FK_Customer Foreign key (CustomerKey) References Customer (CustomerKey),
constraint Transactions_FK_Promotion Foreign key (PromotionKey) References Dim_Promotions (PromotionKey),
constraint Transactions_FK_Territory Foreign key (SalesTerritoryKey) References SalesTerritory (SalesTerritoryKey),
constraint Transactions_FK_Date1 Foreign key (OrderDateKey) References Dim_Time (DateKey),
constraint Transactions_FK_Date2 Foreign key (DueDateKey) References Dim_Time (DateKey),
constraint Transactions_FK_Date3 Foreign key (ShipDateKey) References Dim_Time (DateKey)
);

select * from product;
Create table Dim_Promotions
(
PromotionKey int not null,
PromotionID int not null,
PromotionName varchar(255) null,
DiscountPct float(49) null,
PromotionType varchar(50) null,
PromotionCategory varchar(50) null,
StartDate date not null,
EndDate date not null,
MinQty	int null,
MaxQty int null,
constraint Promotions_PK Primary key (PromotionKey));







alter table Product
Rename column "Description" to Product_Description;

commit;
select * from product;

alter tabl

drop table product;

create table addr_cat_code2(
  AddrCatCodeKey  integer not null,
  AddrCatCodeId   varchar2(4) not null,
  AddrCatDesc     varchar2(30) not null,
  constraint      addr_cat_code2_PK Primary Key(AddrCatCodeKey)
);
