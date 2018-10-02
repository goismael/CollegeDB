create database College;
use College;
go

create table Students
( ID int identity(1,1) Primary Key Clustered
,FName varchar(25)
,LName varchar(25)
,SSN int
,Address varchar (50)
,City varchar(25)
,State varchar(25)
,ZIP int 
,Phone_number varchar(30)
);

create table Classes
(ID int identity(1,1) Primary Key Clustered
,Title varchar(25)
,Number int
,Department varchar(18)
,StudentID INT NOT NULL REFERENCES dbo.STUDENTS(ID)
);

create table Scores
(ID int identity(1,1) Primary Key Clustered
,[type] varchar(20)
,[description] varchar(80)
,DateAssigned datetime 
,DateDue datetime
,DateSubmitted datetime
,PointsEarned int
,PointsPossible int 
,ClasseID INT NOT NULL REFERENCES dbo.Classes(ID)
);


insert into Students (FName ,LName ,SSN ,Address ,City ,State ,ZIP ,Phone_number)
values('Wedra', 'Salifou', 057802222, '52ismaelroad', 'BestVille', 'OH', 88080, 7585088888)
     ,('Ouedra', 'Morning', 057802258, '05ismaelroad', 'BestVille', 'OH',88080, 7585058888)
	   ,('Pedra', 'Salu', 057802272, '352ismaelroad', 'BestVille', 'OH', 88080, 7585078888)

 insert into Classes ( Title, Number, Department, StudentID)
 values ('Geography', 101, 'History', 1) 
        ,('History', 105, 'History', 1) 
        ,('AlgebraII', 106, 'Math', 1)
	      ,('Geography', 101, 'History', 2) 
	      ,('History', 105, 'History', 2)
	      ,('Geography ', 101, 'History', 3) 
	      ,('History', 105, 'History', 3)
	      ,('AlgebraII', 106, 'Math', 2)

	  
insert into Scores ([type] ,[description] ,DateAssigned ,DateDue ,DateSubmitted ,PointsEarned ,PointsPossible ,ClasseID)
Values('quiz', 'Review test', '08-08-2018', '08-10-2018', '12-08-2018', 4, 10,1)
     ,('quiz', 'Review test', '08-08-2018', '08-10-2018', '12-08-2018', 7, 10,1)
	 ,('quiz', 'Review test', '08-08-2018', '08-10-2018', '12-08-2018', 8, 10,1)
	 ,('exam', 'Midterm1', '09-08-2018', '09-08-2018', '09-08-2018', 7, 10,2)
	 ,('test', 'second test', '09-08-2018', '09-08-2018', '09-08-2018', 7, 10,2)
	 ,('test', 'Review test', '09-08-2018', '09-08-2018', '09-08-2018', 8, 10,2)
	 ,('quiz', 'Review test', '07-08-2018', '07-08-2018', '07-08-2018', 6, 10,3)
	 ,('quiz', 'Review test', '07-08-2018', '07-08-2018', '07-08-2018', 7, 10,3)
