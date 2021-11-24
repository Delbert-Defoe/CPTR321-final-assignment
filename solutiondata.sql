CREATE DATABASE solutiondata;
USE solutiondata;

CREATE TABLE PoliceOfficer(
 PoliceOfficerID INT(10) UNSIGNED auto_increment, 
 RankPosition VARCHAR(50) NOT NULL, 
 CommandingOfficer INT(10) NOT NULL,
 PsychologicalAssessment INT(1) NOT NULL, 
 PRIMARY KEY (PoliceOfficerID),
 FOREIGN KEY(Police_NationalID) REFERENCES Citizen(NationalID)
);

ALTER TABLE PoliceOfficer AUTO_INCREMENT = 2300000000;

CREATE TABLE FireOfficer(
 FireOfficerID INT(10) UNSIGNED auto_increment, 
 RankPosition VARCHAR(50) NOT NULL, 
 FireChief INT(10) NOT NULL,
 PsychologicalAssessment INT(1) NOT NULL, 
 PRIMARY KEY (FireOfficerID),
 FOREIGN KEY(FireOfficer_nationalID) REFERENCES Citizen(NationalID)
);

ALTER TABLE FireOfficer AUTO_INCREMENT = 3400000000;

CREATE TABLE PoliceStation(
 StationID INT(10) UNSIGNED auto_increment,
 Name VARCHAR(80) NOT NULL,
 TelephoneNo varchar(8) NOT NULL,
 TotalVehicles INT(5) NOT NULL,
 PRIMARY KEY (StationID),
 FOREIGN KEY(Street_ID) REFERENCES Street(ID)
 );
 
 ALTER TABLE PoliceStation AUTO_INCREMENT = 5500000000;
 
 CREATE TABLE FireStation(
 StationID INT(10) UNSIGNED auto_increment,
 Name VARCHAR(80) NOT NULL,
 TelephoneNo varchar(8) NOT NULL,
 TotalVehicles INT(5) NOT NULL,
 PRIMARY KEY (StationID),
 FOREIGN KEY(Street_ID) REFERENCES Street(ID)
 );
 
 ALTER TABLE PoliceStation AUTO_INCREMENT = 6200000000;
 
 CREATE TABLE PersonOfInterest(
 Reason VARCHAR(100) NOT NULL,
 PsychologicalAssessment INT(1),
 FOREIGN KEY(Case_No) REFERENCES Case(CaseNo),
 FOREIGN KEY(POI_NationalID) REFERENCES Citizen(NationalID),
 FOREIGN KEY(GangName) REFERENCES Gang(GangName),
 ):
 
 CREATE TABLE CommunityCenter(
 Name VARCHAR(100) NOT NULL,
 No INT(5) NOT NULL,
 PRIMARY KEY(Name),
 FOREIGN KEY(Community_ID) REFERENCES Community(CommunityID),
 FOREIGN KEY(District_Name) REFERENCES District(DistrictName)
 );
 
 CREATE TABLE CommunityProgram(
 Name VARCHAR(100) NOT NULL,
 Type VARCHAR(30) NOT NULL,
 Description VARCHAR(100) NOT NULL,
 Manager VARCHAR(100) NOT NULL,
 PRIMARY KEY(Name),
 FOREIGN KEY(Community_ID) REFERENCES Community(CommunityID)
 );
 
 CREATE TABLE FirefightingVehicle(
 LicensePlate VARCHAR(10) NOT NULL,
 Type VARCHAR(25) NOT NULL,
 Make VARCHAR(15) NOT NULL,
 Year DATE NOT NULL,
 Availability BIT,
 PRIMARY KEY(LicensePlate),
 FOREIGN KEY(FireStation_ID) REFERENCES FireStation(StationID)
 );
 
 CREATE TABLE Convict(
 ReleaseDate DATE,
 FOREIGN KEY(Convict_NationalID) REFERENCES Citizen(NationalID),
 FOREIGN KEY(Gang_Name) REFERENCES Gang(GangName),
 FOREIGN KEY(Convict_CaseNo) REFERENCES Case(CaseNo)
 );
 
 CREATE TABLE WatchGroup(
 Name VARCHAR(50) NOT NULL,
 Leader VARCHAR(100) NOT NULL, 
 Size INT NOT NULL, 
 Description VARCHAR(120) NOT NULL,
 PRIMARY KEY(Name),
 foreign key(Community_ID) REFERENCES Community(Community_ID)
 );
 
 CREATE TABLE School(
 Name VARCHAR(40) NOT NULL,
 Type VARCHAR(20) NOT NULL,
 Population INT NOT NULL,
 PRIMARY KEY(Name),
 FOREIGN KEY(Street_ID) REFERENCES Street(StreetID),
 FOREIGN KEY(Community_ID) REFERENCES community(CommunityID),
 FOREIGN KEY(District_name) REFERENCES District(DistrictName)
 );
 
 CREATE TABLE Facility(
 Name VARCHAR(50) NOT NULL,
 Type VARCHAR(50) NOT NULL,
 AgeGroup INT NOT NULL,
 Risk INT,
 PRIMARY KEY(Name),
 FOREIGN KEY(Street_ID) REFERENCES Street(Street_ID),
 FOREIGN KEY(Community_ID) REFERENCES Community(Community_ID),
 FOREIGN KEY(District_Name) REFERENCES District(District_Name)
 );


 
