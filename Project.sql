USE master

DROP DATABASE IF EXISTS ConstructionDB;
CREATE DATABASE ConstructionDB; 

GO 
USE ConstructionDB;

CREATE TABLE ProjectManagers 
( 
  ProjectManagerID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  FirstName nvarchar(250) NOT NULL,
  LastName nvarchar(250) NOT NULL,
  PhysicalAddress nvarchar(500) NOT NULL,
  EmailAddress nvarchar(250) Null,
  PhoneNumber int NOT Null

) ;

CREATE TABLE Contractor
( 
  ContractorID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  FirstName nvarchar(250) NOT NULL,
  LastName nvarchar(250) NOT NULL,
  PhysicalAddress nvarchar(500) NOT NULL,
  EmailAddress nvarchar(250) Null,
  PhoneNumber int NOT Null

) ;


CREATE TABLE Architectures 
( 
  ArchitectID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  FirstName nvarchar(250) NOT NULL,
  LastName nvarchar(250) NOT NULL,
  PhysicalAddress nvarchar(500) NOT NULL,
  EmailAddress nvarchar(250) NOT Null,
  PhoneNumber int NOT Null

) ; 


CREATE TABLE Clients 
( 
  ClientID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  FirstName nvarchar(250) NOT NULL,
  LastName nvarchar(250) NOT NULL,
  PhysicalAddress nvarchar(500) NOT NULL,
  EmailAddress nvarchar(250) NOT Null,
  PhoneNumber int NOT Null

) ; 

CREATE TABLE Houses 
( 
  HouseID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  NumberOfRooms nvarchar(250) NOT NULL,
  Cost money NOT NULL,
  EstimatedDuration nvarchar(500) NOT NULL,
  

) ; 


CREATE TABLE Teams 
( 
  TeamID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  TeamName nvarchar(250) NOT NULL,
  ProjectManagerID int NOT NULL,
  ContractorID int NOT NULL,
  ArchitectID int NOT NULL,

  CONSTRAINT Fk_TeamsProjectManager FOREIGN KEY (ProjectManagerID) REFERENCES ProjectManagers (ProjectManagerID),
  CONSTRAINT Fk_TeamsContractor FOREIGN KEY (ContractorID) REFERENCES Contractor (ContractorID),
  CONSTRAINT Fk_TeamsArchitectures FOREIGN KEY (ArchitectID) REFERENCES Architectures (ArchitectID),

) ; 

CREATE TABLE ProjectStatus 
( 
  StatusID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  StatusType varchar(250) NOT NULL,
  StatusDescr int NOT NULL,
  ) ; 


--  CREATE TABLE CompanyProject 
--( 
--  ProjectID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
--  ClientID nvarchar(250) NOT NULL,
--  HouseID int NOT NULL,
--  ContractorID int NOT NULL,
--  ArchitectID int NOT NULL,

--  CONSTRAINT Fk_TeamsProjectManager FOREIGN KEY (ProjectManagerID) REFERENCES ProjectManagers (ProjectManagerID),
--  CONSTRAINT Fk_TeamsContractor FOREIGN KEY (ContractorID) REFERENCES Contractor (ContractorID),
--  CONSTRAINT Fk_TeamsArchitectures FOREIGN KEY (ArchitectID) REFERENCES Architectures (ArchitectID),

--) ; 

GO  




 
GO 


GO