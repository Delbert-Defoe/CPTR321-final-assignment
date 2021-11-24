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


 
=======
CREATE TABLE Citizen (
    NationalID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT Null,
    LastName VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Nationality VARCHAR(25),
    AgeGroup ENUM('Elderly', 'Adult', 'Child'),
    StreetAddress INT,
    StreetNumber INT,
    AptNumber INT,
    Occupation VARCHAR(25)
);
ALTER TABLE Citizen AUTO_INCREMENT = 1000000000;
CREATE TABLE Occupation (
    OccupationName VARCHAR(25) PRIMARY KEY,
    AvgSalary FLOAT
);
CREATE TABLE Community (
    CommunityID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(25),
    DistrictName VARCHAR(50),
    Housing ENUM(
        'Colonial',
        'Single-Family',
        'Apartment',
        'Condo',
        'Mansion',
        'TownHouse'
    ),
    Infrastructure ENUM('Commercial', 'Governmental', 'Industrial'),
    PovertyRate DOUBLE,
    PoliceRelationship ENUM('good', 'moderate', 'bad'),
    RiskAssessment INT
);
ALTER TABLE Community AUTO_INCREMENT = 200000;
CREATE TABLE Street (
    StreetID INT UNSIGNED PRIMARY KEY Auto_Increment,
    CommunityID INT,
    Name VARCHAR(50),
    RiskAssessment INT,
    FOREIGN KEY (CommunityID) REFERENCES Community(CommunityID)
);
ALTER TABLE Street AUTO_INCREMENT = 100000;
CREATE TABLE District (
    DistrictName VARCHAR(50) PRIMARY KEY,
    PovertyRate DOUBLE,
    CrimeRate DOUBLE
);
CREATE TABLE Gang (
    GangName VARCHAR(50) PRIMARY KEY,
    GangColor VARCHAR(15),
    GangSymbol VARCHAR(255),
    RiskAssessment INT
);
CREATE TABLE GangTerritory (
    StreetID INT,
    GangName VARCHAR(50),
    FOREIGN KEY (StreetID) REFERENCES Street(StreetID),
    FOREIGN KEY (GangName) REFERENCES Gang(GangName)
);
CREATE TABLE Report (
    ReportNo INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Reporter VARCHAR(50),
    ApproxTime DATETIME,
    Description Text,
    StreetName VarChar(50),
    CommunityName VarChar(50)
);
ALTER TABLE Report AUTO_INCREMENT = 00000001;
CREATE TABLE Respondent(
    ReportNo INT,
    PoliceOfficer INT,
    FireOfficer INT,
    FOREIGN KEY (ReportNo) REFERENCES Report(ReportNo),
    FOREIGN KEY (PoliceOfficer) REFERENCES,
    FOREIGN KEY (FireOFficer) REFERENCES,
    PRIMARY KEY (ReportNo, PoliceOfficer, FireOfficer)
);
CREATE TABLE Case
    (
        CaseNo INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        PresidingOfficer INT,
        Description TEXT,
        Opened DATETIME,
        Closed DATETIME,
        ReportNo INT,
        Subject VARCHAR(50)
    );
ALTER TABLE Case
        AUTO_INCREMENT = 10000001;
CREATE TABLE Suspect (
    CaseNo INT,
    NationalID INT,
    GangAffiliation VARCHAR(50),
    FOREIGN KEY (CaseNo) REFERENCES Case
        (CaseNo) FOREIGN KEY (NationalID) REFERENCES Citizen(NationalID) FOREIGN KEY (GangAffiliation) REFERENCES Gang(GangName)
    );
CREATE TABLE Witness (
    CaseNo INT,
    NationalID INT,
    FOREIGN KEY (CaseNo) REFERENCES Case
        (CaseNo),
        FOREIGN KEY (NationalID) REFERENCES Citizen(NationalID)
    );
CREATE TABLE Patrol (
    StartTime TIME,
    EndTime TIME,
    PoliceOfficer INT,
    CommunityID INT,
    PRIMARY KEY (StartTime, PoliceOfficer),
    FOREIGN KEY (CommunityID) REFERENCES Community(CommunityID) FOREIGN KEY (PoliceOfficer) REFERENCES PoliceOFficer()
);
CREATE TABLE PatrolVehicle (
    LicensePlate VARCHAR(10) PRIMARY KEY,
    Type VARCHAR(25),
    Make VARCHAR(15),
    Year DATE,
    StationID INT,
    AVAILABLE BIT,
    FOREIGN KEY StationID REFERENCES PolieStation
);
CREATE TABLE VehicleAssignmnets (
    PoliceOfficerID INT,
    VehicleLicensePlate INT,
    FOREIGN KEY (PoliceOfficer) REFERENCES,
    FOREIGN KEY (VehicleLicensePlate) REFERENCES PatrolVehicle(LicensePlate)
); 
