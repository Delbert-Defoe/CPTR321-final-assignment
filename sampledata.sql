INSERT INTO Community
VALUES(
        Null,
        "Bellevue Chopin",
        "St.Patricks",
        "Single-family",
        NULL,
        0.2,
        "good",
        1
    ),
    (
        Null,
        "Maracas",
        "St.George",
        "Colonial",
        NULL,
        0.01,
        "good",
        2
    ),
    (
        Null,
        "Chaguanas",
        "Caroni",
        "Single-Family",
        "Industrial",
        1,
        "moderate",
        3
    ),
    (
        Null,
        "Tuna Puna",
        "St.George",
        "TownHouse",
        "Commercial",
        1.5,
        "bad",
        5
    ),
    (
        Null,
        "Roseau",
        "St.John",
        "Apartment",
        "Commercial",
        5,
        "good",
        2
    );
INSERT INTO Citizen
VALUES (
        NULL,
        "Jonathan",
        "Doe",
        "1960-05-08",
        "Dominican",
        "Elderly",
        100001,
        3,
        NULL,
        "Retired"
    ),
    (
        NULL,
        "Jane",
        "James",
        "1989-01-01",
        "Trinidadian",
        "Adult",
        103005,
        81,
        201,
        "Fire Officer"
    ),
    (
        NULL,
        "John",
        "Donald",
        "1999-11-14",
        "Trinidadian",
        "Adult",
        100002,
        5,
        Null,
        "Police Officer"
    ),
    (
        NULL,
        "Jonah",
        "Rampal",
        "2010-05-25",
        "Dominican",
        "Child",
        103005,
        81,
        201,
        "Student"
    ),
    (
        NULL,
        "Jill",
        "Doe",
        "1963-03-29",
        "Trinidadian",
        "Elderly",
        100001,
        3,
        Null,
        "Teacher"
    ),
    (
        Null,
        "Jackson",
        "Johnville",
        "1980-04-27",
        "Vincentian",
        "Adult",
        100001,
        56,
        Null,
        "Police Officer"
    ),
    (
        Null,
        "Pius",
        "Poptimus",
        "1976-01-14",
        "Trinidadian",
        "Adult",
        100450,
        20,
        234,
        "Police Officer"
    ),
    (
        Null,
        "Bob",
        "Dabilder",
        "1990-02-15",
        "Dominican",
        "Adult",
        109878,
        1,
        Null,
        "Police Officer"
    ),
    (
        Null,
        "GoGo",
        "Diego",
        "1987-11-28",
        "Trinidadian",
        "Adult",
        100005,
        2,
        Null,
        "Police Officer"
    ),
    (
        Null,
        "Hill",
        "Billy",
        "2000-02-05",
        "Trinidadian",
        "Adult",
        103005,
        3,
        Null,
        "Fire Officer"
    ),
    (
        Null,
        "Mike",
        "Oxlong",
        "1997-01-18",
        "Trinidadian",
        "Adult",
        103205,
        3,
        Null,
        "Fire Officer"
    ),
    (
        Null,
        "Ben",
        "Tehn",
        "2000-05-15",
        "Dominican",
        "Adult",
        107008,
        3,
        Null,
        "Fire Officer"
    ),
    (
        Null,
        "Ima",
        "Bist",
        "2000-03-03",
        "Dominican",
        "Adult",
        102604,
        3,
        Null,
        "Fire Officer"
    ),
    (
        Null,
        "Bern",
        "Braihn",
        "2000-03-03",
        "Trinidadian",
        "Adult",
        100000,
        3,
        Null,
        "Fire Officer"
    ),
    (
        Null,
        "Frey",
        "Freed",
        "1995-02-21",
        "Dominican",
        "Adult",
        109800,
        67,
        123,
        "Unemployed"
    ),
    (
        Null,
        "John",
        "Freed",
        "1995-02-21",
        "Dominican",
        "Adult",
        109800,
        67,
        123,
        "Unemployed"
    );
INSERT INTO Occupation
VALUES ("Teacher", 4359.56),
    ("Police Officer", 12344.56),
    ("Security", 3566.90),
    ("Doctor", 23444.45),
    ("Developer", 13246);
INSERT INTO Street
VALUES (Null, 200001, "Lovers Lane", 1),
    (Null, 200001, "Good Street", 1),
    (Null, 200002, "Great Street", 4),
    (Null, 200004, "Independence Lane", 5),
    (Null, 200003, "King George Street", 2);
INSERT INTO District
VALUES ("St. George", 2, 12),
    ("Caroni", 4.33, 20),
    ("St. John", 2.5, 12),
    ("St. Patrick", 5, 25),
    ("St. Peter", 6, 30);
INSERT INTO Gang
VALUES ("Santos", "Red", "A Black Cross", 3),
    ("Prophets", "Blue", "An Eagle", 0),
    (
        "Crippys",
        "Green",
        "An Ak-47 tilted into the air",
        4
    ),
    (
        "Bloodys",
        "Yellow",
        "A glock pointing to the left",
        4
    ),
    (
        "1738's",
        "Purple",
        "The number 1,7,3 and 8 (1738)",
        2
    );
INSERT INTO GangTerritory
VALUES (100003, "Crippys"),
    (100001, "Bloodys"),
    (100002, "Santos"),
    (100000, "Prophets"),
    (100004, "Santos");
INSERT INTO Report
VALUES (
        NULL,
        "Jill Doe",
        "2021-02-18 23:11:00",
        "I saw a young man steal a lady's bag and run down the street. He looked to be a tall scrawny guy",
        "Lovers Lane",
        "Maracas"
    ),
    (
        NULL,
        "Joe Buden",
        "2021-05-01 09:11:01",
        "I heard shots being fired lower down my street",
        "Swan Street",
        "Holy Town"
    ),
    (
        NULL,
        "Obama Saddam",
        "2021-06-12 12:11:02",
        "A speeding vehicle collided with my vehicle then continued driving away",
        "Hillsborough Street",
        "Roseau"
    ),
    (
        NULL,
        "Jill Doe",
        "2021-07-08 13:11:03",
        "My husband hit me",
        "Lovers Lane",
        "Maracas"
    ),
    (
        NULL,
        "Jonah Rampal",
        "2021-11-18 17:11:04",
        "There is a big fire on my street",
        "Vrignia Avenue",
        "Roseau"
    );
INSERT INTO PoliceStation
VALUES(
        NULL,
        "Cedros Police Station",
        100000,
        "300-0123",
        67
    ),
    (
        NULL,
        "Fyzabad Police Station",
        100001,
        "300-0124",
        128
    ),
    (
        NULL,
        "Arouca Police Station",
        100002,
        "300-0125",
        83
    ),
    (
        NULL,
        "Belmont Police Station",
        100003,
        "300-0126",
        243
    ),
    (
        NULL,
        "Mayaro Police Station",
        100004,
        "300-0127",
        74
    );
INSERT INTO PoliceOfficer
VALUES (NULL, 1000000002, "Captain", 55000000, Null, 5),
    (
        Null,
        1000000005,
        "Sergeant",
        550000001,
        300000000,
        3
    ),
    (
        Null,
        1000000006,
        "Corporal",
        550000000,
        300000000,
        2
    ),
    (
        Null,
        1000000007,
        "Corporal",
        550000001,
        300000000,
        4
    ),
    (
        Null,
        1000000008,
        "Patrol",
        550000000,
        3000000000,
        3
    );
INSERT INTO Investigation
VALUES (
        Null,
        3000000002,
        "The case of Isaac Abraham investigates the events surrounding........",
        "2020-01-19 00:00:00",
        "2020-02-27 16:30:00",
        1,
        "Robbery"
    ),
    (
        Null,
        3000000001,
        "The case of John Wick investigates the events surrounding.........",
        "2020-01-09 16:30:00",
        "2020-02-27 16:30:00",
        2,
        "Shooting"
    ),
    (
        Null,
        3000000002,
        "The case of Zac Efron investigates the events surrounding.........",
        "2020-07-30 16:30:00",
        "2020-12-20 16:30:00",
        3,
        "Hit and Run"
    ),
    (
        Null,
        3000000003,
        "The case of Ludwig Beethoven investigates the events surrounding............",
        "2020-01-02 00:00:00",
        NULL,
        5,
        "Arson"
    ),
    (
        NULL,
        3000000004,
        "The case of Jill Doe investigates the events surrounding...........",
        "2020-08-27 00:00:00",
        Null,
        4,
        "Domestic Violence"
    );
INSERT INTO Suspect
VALUES (10000000, 1000000000, Null),
    (10000002, 1000000001, "Santos"),
    (10000003, 1000000002, "Crippys"),
    (10000004, 1000000003, "Crippys"),
    (10000001, 1000000004, "Bloodys");
INSERT INTO Witness
VALUES (10000004, 1000000003);
INSERT INTO Patrol
VALUES ("12:00:00", "13:00:00", 3000000004, 200003),
    ("13:00:00", "14:00:00", 3000000004, 200002),
    ("14:00:00", "15:00:00", 3000000002, 200003),
    ("15:00:00", "16:00:00", 3000000003, 200002),
    ("16:00:00", "17:00:00", 3000000003, 200003);
INSERT INTO PatrolVehicle
VALUES (
        "TTPF-494",
        "Pickup",
        "Toyota",
        "2010",
        550000000,
        1
    ),
    (
        "TTPF-495",
        "SUV",
        "Toyota",
        "2016",
        550000001,
        0
    ),
    (
        "TTPF-496",
        "Pickup",
        "Ford",
        "2018",
        550000002,
        1
    ),
    (
        "TTPF-497",
        "Pickup",
        "Ford",
        "2018",
        550000003,
        1
    ),
    (
        "TTPF-498",
        "SUV",
        "Toyota",
        "2016",
        550000004,
        1
    );
INSERT INTO VehicleAssignments
VALUES (3000000001, "TTPF-494"),
    (3000000002, "TTPF-495"),
    (3000000003, "TTPF-496"),
    (3000000004, "TTPF-497"),
    (3000000000, "TTPF-498");
INSERT INTO FireStation
VALUES(
        NULL,
        "Mayaro Fire Station",
        2000000000,
        100000,
        "200-4567",
        6
    ),
    (
        NULL,
        "Penal Fire Station",
        2000000009,
        100001,
        "200-4568",
        8
    ),
    (
        NULL,
        "Arouca Fire Station",
        2000000008,
        100002,
        "200-4569",
        12
    ),
    (
        NULL,
        "Lady Hailes Fire Station",
        2000000009,
        100003,
        "200-4570",
        23
    ),
    (
        NULL,
        "Chaguaramas Fire Station",
        2000000010,
        100004,
        "200-4571",
        14
    );
INSERT INTO FireOfficer
VALUES(
        NULL,
        1000000009,
        "Captain",
        620000000,
        5
    ),
    (
        NULL,
        1000000010,
        "Fire Chief",
        620000000,
        4
    ),
    (
        NULL,
        1000000011,
        "Lieutenant",
        620000001,
        5
    ),
    (
        NULL,
        1000000012,
        "Firefighter",
        620000000,
        4
    ),
    (
        NULL,
        1000000013,
        "Fightfighter",
        620000001,
        5
    );
INSERT INTO Respondent
VALUES (1, 3000000001, NULL),
    (2, 3000000002, NULL),
    (2, 3000000004, NULL),
    (4, 3000000003, NULL),
    (5, NULL, 2000000003),
    (5, NULL, 2000000004);
INSERT INTO PersonOfInterest
VALUES(
        1000000001,
        "Bloodys",
        "POI has a long history with Victim A",
        4
    ),
    (
        1000000000,
        "Santos",
        "POI has a recurring history with domestic violence",
        2
    ),
    (
        1000000002,
        Null,
        "POI suffered physical abuse from Victims A&B resulting in retaliation",
        3
    ),
    (
        1000000009,
        "Crippys",
        "POI was under the influence of narcotics",
        5
    ),
    (
        1000000004,
        NULL,
        "POI suffering from Dementia",
        5
    );
INSERT INTO CommunityProgram
VALUES(
        "Food for the Soul",
        "Food Bank",
        "Provide hot and safe food for less fortunate.",
        "Mike Thomas",
        200000
    ),
    (
        "Better Life Program",
        "House Funding Charity",
        "Provide housing settlements for less fortunate",
        "Dania Adams",
        200001
    ),
    (
        "Veteran Appreciation Program",
        "Aid for Army Survivors",
        "Provide supplies and rehabiliation for surving war veterans",
        "Jayka Mwibime",
        200002
    ),
    (
        "Ex Convict Rehabiliation Foundation",
        "Rehabiliation Program for Previous Criminals",
        "Provide rehabiliation and aid for previous convicted criminals.",
        "Hamiel Oak",
        200003
    ),
    (
        "Good Food Program	Food Bank",
        "Food Program",
        "Provide hot and safe food for less fortunate.",
        "Stacy White",
        200004
    );
INSERT INTO FirefightingVehicle
VALUES(
        "TTFD521",
        "Truck",
        "Toyota",
        2010,
        TRUE,
        620000000
    ),
    (
        "TTFD132",
        "Suv",
        "Toyota",
        2016,
        FALSE,
        620000001
    ),
    (
        "TTFD134",
        "Truck",
        "Ford",
        2018,
        FALSE,
        620000002
    ),
    (
        "TTFD912",
        "Truck",
        "Ford",
        2018,
        TRUE,
        620000003
    ),
    (
        "TTFD553",
        "Suv",
        "Toyota",
        2016,
        TRUE,
        620000004
    );
INSERT INTO Convict
VALUES("2025-05-19", 1000000014, Null, 10000001),
    ("2034-03-24", 1000000015, "Santos", 10000001);
INSERT INTO WatchGroup
VALUES(
        "Mayaro Theft Crime Preventation Watch Group",
        "John Fayne",
        168,
        "Focuses on reporting robberies occuring in the community.",
        200001
    ),
    (
        "San Juan Maco Group",
        "Marcel Ines",
        215,
        "Focuses on reporting suspicious activities in the community.",
        200002
    ),
    (
        "Barataria NightTime Watch",
        "Jacob Mike",
        90,
        "Engage in weekly meetings, and focuses on reporting crimes especially those which occurs in the nighttime.",
        200003
    ),
    (
        "Penal Community Watch Group",
        "Yesha Abdul",
        192,
        "Coordinates with other community watch groups to observe and report various crimes and suspicious individuals.",
        200004
    ),
    (
        "Couva Zero Domestic Tolerance Watch Group",
        "Maya Zimmine",
        103,
        "Focuses on reporting domestic abuse that occurs in the community.",
        200000
    );
INSERT INTO School
VALUES(
        "St.George's College Secondary",
        "Secondary",
        230,
        100000
    ),
    (
        "University of Trinidad and Tobago",
        "Tertiary",
        2500,
        100001
    ),
    (
        "University of the Southern Caribbean",
        "Tertiary",
        4000,
        100002
    ),
    (
        "St. Joseph Primary School",
        "Primary",
        150,
        100003
    ),
    (
        "Trinity's College",
        "Secondary",
        300,
        100004
    );
INSERT INTO CommunityCenter
VALUES(
        "Penal Community Center",
        Null,
        100000
    ),
    (
        "Fyzabad Community Center",
        Null,
        100001
    ),
    (
        "Caroni Community Center",
        Null,
        100002
    ),
    (
        "Champ Fleurs Community Center",
        Null,
        100003
    ),
    (
        "Arouca Community Center",
        Null,
        100004
    );
INSERT INTO Facility
VALUES(
        "Malt East Park",
        "Recreational Park",
        "Child",
        2,
        100000
    ),
    (
        "Las Cuevas Park",
        "Beach",
        "Adult",
        1,
        100001
    ),
    (
        "Harry's Waterpark	Waterpark",
        "Water Park",
        "Child",
        1,
        100002
    ),
    (
        "Urban Gym",
        "Gym",
        "Adult",
        4,
        100003
    ),
    (
        "Queen's Park Savannah",
        "Savannah",
        "Elderly",
        3,
        100004
    );
INSERT INTO Business
VALUES ("Tires Spot", 100000, 2, "Private", 1000000003),
    (
        "Insurance Brokers Cooperative",
        100003,
        2,
        "Public",
        1000000000
    ),
    (
        "HillBilly Fry Chicken",
        100004,
        2,
        "Private",
        1000000009
    );