create database College;
go

use College
go

create table Students 
(ID int identity(1,1) Primary Key Clustered,
FName varchar(10),
LName varchar(10),
SSN varchar(10),
Address varchar(39),
City varchar (25),
State nvarchar(14),
Zip int,
Phone bigint
)

create table Classes
(ID int identity(1,1) Primary Key Clustered,
Title varchar (10),
Number nvarchar (4),
department nvarchar (20)
)

create table Scores
(ID int identity(1,1) Primary key clustered,
Type nvarchar (25),
DateAssigned datetime,
DateDue datetime,
DateSubmitted datetime,
PointsEraned int,
PointPossible int 
)
