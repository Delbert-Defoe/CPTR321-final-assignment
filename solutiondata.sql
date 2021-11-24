CREATE DATABASE solutiondata;
USE solutiondata;
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
    CommunityID INT UNSIGNED,
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
    StreetID INT UNSIGNED,
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
CREATE TABLE PoliceOfficer(
    PoliceOfficerID INT(10) UNSIGNED AUTO_INCREMENT,
    NationalID INT UNSIGNED,
    RankPosition VARCHAR(50) NOT NULL,
    CommandingOfficer INT(10) NOT NULL,
    PsychologicalAssessment INT(1) NOT NULL,
    PRIMARY KEY (PoliceOfficerID),
    FOREIGN KEY (NationalID) REFERENCES Citizen(NationalID)
);
ALTER TABLE PoliceOfficer AUTO_INCREMENT = 3000000000;
CREATE TABLE FireOfficer(
    FireOfficerID INT(10) UNSIGNED auto_increment,
    NationalID INT UNSIGNED,
    RankPosition VARCHAR(50) NOT NULL,
    FireChief INT(10) NOT NULL,
    PsychologicalAssessment INT(1) NOT NULL,
    PRIMARY KEY (FireOfficerID),
    FOREIGN KEY (NationalID) REFERENCES Citizen(NationalID)
);
ALTER TABLE FireOfficer AUTO_INCREMENT = 2000000000;
CREATE TABLE PoliceStation(
    StationID INT(10) UNSIGNED auto_increment,
    Name VARCHAR(80) NOT NULL,
    StreetID INT UNSIGNED,
    TelephoneNo varchar(8) NOT NULL,
    TotalVehicles INT(5) NOT NULL,
    PRIMARY KEY (StationID),
    FOREIGN KEY(StreetID) REFERENCES Street(StreetID)
);
ALTER TABLE PoliceStation AUTO_INCREMENT = 5500000000;
CREATE TABLE FireStation(
    StationID INT(10) UNSIGNED auto_increment,
    Name VARCHAR(80) NOT NULL,
    StreetID INT UNSIGNED,
    TelephoneNo varchar(8) NOT NULL,
    TotalVehicles INT(5) NOT NULL,
    PRIMARY KEY (StationID),
    FOREIGN KEY(StreetID) REFERENCES Street(StreetID)
);
ALTER TABLE PoliceStation AUTO_INCREMENT = 6200000000;
CREATE TABLE PersonOfInterest(
    NationalID INT UNSIGNED,
    GangName VARCHAR(50),
    Reason VARCHAR(100) NOT NULL,
    PsychologicalAssessment INT(1),
    FOREIGN KEY(NationalID) REFERENCES Citizen(NationalID),
    FOREIGN KEY(GangName) REFERENCES Gang(GangName)
);
CREATE TABLE CommunityCenter(
    Name VARCHAR(100) NOT NULL,
    CenterNo INT(5) NOT NULL,
    CommunityID INT UNSIGNED,
    DistrictName VARCHAR(50),
    PRIMARY KEY(CenterNo),
    FOREIGN KEY(CommunityID) REFERENCES Community(CommunityID),
    FOREIGN KEY(DistrictName) REFERENCES District(DistrictName)
);
CREATE TABLE CommunityProgram(
    Name VARCHAR(100) NOT NULL,
    Type VARCHAR(30) NOT NULL,
    Description VARCHAR(100) NOT NULL,
    Manager VARCHAR(100) NOT NULL,
    CommunityID INT UNSIGNED,
    PRIMARY KEY(Name),
    FOREIGN KEY(CommunityID) REFERENCES Community(CommunityID)
);
CREATE TABLE FirefightingVehicle(
    LicensePlate VARCHAR(10) NOT NULL,
    Type VARCHAR(25) NOT NULL,
    Make VARCHAR(15) NOT NULL,
    Year DATE NOT NULL,
    Availability BIT,
    FireStationID INT(10) UNSIGNED,
    PRIMARY KEY(LicensePlate),
    FOREIGN KEY(FireStationID) REFERENCES FireStation(StationID)
);
CREATE TABLE Investigation (
    InvestigationNo INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    PresidingOfficer INT,
    Description TEXT,
    Opened DATETIME,
    Closed DATETIME,
    ReportNo INT UNSIGNED,
    Subject VARCHAR(50),
    FOREIGN KEY (ReportNo) REFERENCES Report(ReportNo)
);
ALTER TABLE Investigation AUTO_INCREMENT = 10000000;
CREATE TABLE Convict(
    ReleaseDate DATE,
    NationalID INT UNSIGNED,
    GangName VARCHAR(50),
    InvestigationNo INT UNSIGNED,
    FOREIGN KEY(NationalID) REFERENCES Citizen(NationalID),
    FOREIGN KEY(InvestigationNo) REFERENCES Investigation(InvestigationNo)
);
CREATE TABLE WatchGroup(
    Name VARCHAR(50) NOT NULL,
    Leader VARCHAR(100) NOT NULL,
    Size INT NOT NULL,
    Description VARCHAR(120) NOT NULL,
    CommunityID INT UNSIGNED,
    PRIMARY KEY(Name),
    foreign key(CommunityID) REFERENCES Community(CommunityID)
);
CREATE TABLE School(
    Name VARCHAR(40) NOT NULL,
    Type VARCHAR(20) NOT NULL,
    Population INT NOT NULL,
    StreetID INT UNSIGNED,
    CommunityID INT UNSIGNED,
    DistrictName VARCHAR(50),
    PRIMARY KEY(Name),
    FOREIGN KEY(StreetID) REFERENCES Street(StreetID),
    FOREIGN KEY(CommunityID) REFERENCES community(CommunityID),
    FOREIGN KEY(Districtname) REFERENCES District(DistrictName)
);
CREATE TABLE Facility(
    Name VARCHAR(50) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    AgeGroup INT NOT NULL,
    Risk INT,
    StreetID INT UNSIGNED,
    CommunityID INT UNSIGNED,
    DistrictName VARCHAR(50),
    PRIMARY KEY(Name),
    FOREIGN KEY(StreetID) REFERENCES Street(StreetID),
    FOREIGN KEY(CommunityID) REFERENCES Community(CommunityID),
    FOREIGN KEY(DistrictName) REFERENCES District(DistrictName)
);
CREATE TABLE Respondent(
    ReportNo INT UNSIGNED,
    PoliceOfficer INT UNSIGNED,
    FireOfficer INT UNSIGNED,
    FOREIGN KEY (ReportNo) REFERENCES Report(ReportNo),
    FOREIGN KEY (PoliceOfficer) REFERENCES PoliceOfficer(PoliceOfficerID),
    FOREIGN KEY (FireOFficer) REFERENCES FireOfficer(FireOfficerID),
    PRIMARY KEY (ReportNo, PoliceOfficer, FireOfficer)
);
CREATE TABLE Suspect (
    InvestigationNo INT UNSIGNED,
    NationalID INT UNSIGNED,
    GangAffiliation VARCHAR(50),
    FOREIGN KEY (InvestigationNo) REFERENCES Investigation(InvestigationNo),
    FOREIGN KEY (NationalID) REFERENCES Citizen(NationalID),
    FOREIGN KEY (GangAffiliation) REFERENCES Gang(GangName)
);
CREATE TABLE Witness (
    InvestigationNo INT UNSIGNED,
    NationalID INT UNSIGNED,
    FOREIGN KEY (InvestigationNo) REFERENCES Investigation (InvestigationNo),
    FOREIGN KEY (NationalID) REFERENCES Citizen(NationalID)
);
CREATE TABLE Patrol (
    StartTime TIME,
    EndTime TIME,
    PoliceOfficer INT UNSIGNED,
    CommunityID INT UNSIGNED,
    PRIMARY KEY (StartTime, PoliceOfficer),
    FOREIGN KEY (CommunityID) REFERENCES Community(CommunityID),
    FOREIGN KEY (PoliceOfficer) REFERENCES PoliceOfficer(PoliceOfficerID)
);
CREATE TABLE PatrolVehicle (
    LicensePlate VARCHAR(10) PRIMARY KEY,
    Type VARCHAR(25),
    Make VARCHAR(15),
    Year CHAR(4),
    StationID INT UNSIGNED,
    Available BIT,
    FOREIGN KEY (StationID) REFERENCES PoliceStation(StationID)
);
CREATE TABLE VehicleAssignmnets (
    PoliceOfficerID INT UNSIGNED,
    VehicleLicensePlate VARCHAR(10),
    FOREIGN KEY (PoliceOfficerID) REFERENCES PoliceOfficer(PoliceOfficerID),
    FOREIGN KEY (VehicleLicensePlate) REFERENCES PatrolVehicle(LicensePlate)
);