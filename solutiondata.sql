-- CREATE TABLE Citizen (
--     NationalID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
--     FirstName VARCHAR(50) NOT Null,
--     LastName VARCHAR(50) NOT NULL,
--     DOB DATE NOT NULL,
--     Nationality VARCHAR(25),
--     AgeGroup ENUM('Elderly', 'Adult', 'Child'),
--     StreetAddress INT,
--     StreetNumber INT,
--     AptNumber INT,
--     Occupation VARCHAR(25)
-- );
-- ALTER TABLE Citizen AUTO_INCREMENT = 1000000000;
-- CREATE TABLE Occupation (
--     OccupationName VARCHAR(25) PRIMARY KEY,
--     AvgSalary FLOAT
-- );
-- CREATE TABLE Community (
--     CommunityID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
--     Name VARCHAR(25),
--     DistrictName VARCHAR(50),
--     Housing ENUM(
--         'Colonial',
--         'Single-Family',
--         'Apartment',
--         'Condo',
--         'Mansion',
--         'TownHouse'
--     ),
--     Infrastructure ENUM('Commercial', 'Governmental', 'Industrial'),
--     PovertyRate DOUBLE,
--     PoliceRelationship ENUM('good', 'moderate', 'bad'),
--     RiskAssessment INT
-- );
-- ALTER TABLE Community AUTO_INCREMENT = 200000;
-- CREATE TABLE Street (
--     StreetID INT UNSIGNED PRIMARY KEY Auto_Increment,
--     CommunityID INT,
--     Name VARCHAR(50),
--     RiskAssessment INT,
--     FOREIGN KEY (CommunityID) REFERENCES Community(CommunityID)
-- );
-- ALTER TABLE Street AUTO_INCREMENT = 100000;
-- CREATE TABLE District (
--     DistrictName VARCHAR(50) PRIMARY KEY,
--     PovertyRate DOUBLE,
--     CrimeRate DOUBLE
-- );
-- CREATE TABLE Gang (
--     GangName VARCHAR(50) PRIMARY KEY,
--     GangColor VARCHAR(15),
--     GangSymbol VARCHAR(255),
--     RiskAssessment INT
-- );
-- CREATE TABLE GangTerritory (
--     StreetID INT,
--     GangName VARCHAR(50),
--     FOREIGN KEY (StreetID) REFERENCES Street(StreetID),
--     FOREIGN KEY (GangName) REFERENCES Gang(GangName)
-- );
-- CREATE TABLE Report (
--     ReportNo INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
--     Reporter VARCHAR(50),
--     ApproxTime DATETIME,
--     Description Text,
--     StreetName VarChar(50),
--     CommunityName VarChar(50)
-- );
-- ALTER TABLE Report AUTO_INCREMENT = 00000001;
CREATE TABLE Respondent(
    ReportNo INT,
    PoliceOfficer INT,
    FireOfficer INT,
    FOREIGN KEY (ReportNo) REFERENCES Report(ReportNo),
    FOREIGN KEY (PoliceOfficer) REFERENCES PoliceOfficer(PoliceOfficerID),
    FOREIGN KEY (FireOFficer) REFERENCES Fireman(FiremanID),
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
        Subject VARCHAR(50),
        FOREIGN KEY (ReportNo) REFERENCES Report(ReportNo)
    );
ALTER TABLE Case
        AUTO_INCREMENT = 10000000;
CREATE TABLE Suspect (
    CaseNo INT,
    NationalID INT,
    GangAffiliation VARCHAR(50),
    FOREIGN KEY (CaseNo) REFERENCES Case
        (CaseNo),
        FOREIGN KEY (NationalID) REFERENCES Citizen(NationalID),
        FOREIGN KEY (GangAffiliation) REFERENCES Gang(GangName)
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
    FOREIGN KEY (CommunityID) REFERENCES Community(CommunityID),
    FOREIGN KEY (PoliceOfficer) REFERENCES PoliceOfficer(PoliceOfficerID)
);
CREATE TABLE PatrolVehicle (
    LicensePlate VARCHAR(10) PRIMARY KEY,
    Type VARCHAR(25),
    Make VARCHAR(15),
    Year DATE,
    StationID INT,
    AVAILABLE BIT,
    FOREIGN KEY StationID REFERENCES PolieStation(PoliceStationID)
);
CREATE TABLE VehicleAssignmnets (
    PoliceOfficerID INT,
    VehicleLicensePlate INT,
    FOREIGN KEY (PoliceOfficer) REFERENCES PoliceOfficer(PoliceOfficerID),
    FOREIGN KEY (VehicleLicensePlate) REFERENCES PatrolVehicle(LicensePlate)
);