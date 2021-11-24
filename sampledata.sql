-- -- INSERT INTO Community
-- -- VALUES(
-- --         Null,
-- --         "Bellevue Chopin",
-- --         "St.Patricks",
-- --         "Single-family",
-- --         NULL,
-- --         0.2,
-- --         "good",
-- --         1
-- --     ),
-- --     (
-- --         Null,
-- --         "Maracas",
-- --         "St.George",
-- --         "Colonial",
-- --         NULL,
-- --         0.01,
-- --         "good",
-- --         2
-- --     ),
-- --     (
-- --         Null,
-- --         "Chaguanas",
-- --         "Caroni",
-- --         "Single-Family",
-- --         "Industrial",
-- --         1,
-- --         "moderate",
-- --         3
-- --     ),
-- --     (
-- --         Null,
-- --         "Tuna Puna",
-- --         "St.George",
-- --         "TownHouse",
-- --         "Commercial",
-- --         1.5,
-- --         "bad",
-- --         5
-- --     ),
-- --     (
-- --         Null,
-- --         "Roseau",
-- --         "St.John",
-- --         "Apartment",
-- --         "Commercial",
-- --         5,
-- --         "good",
-- --         2
-- --     );
-- INSERT INTO Citizen
-- VALUES (
--         NULL,
--         "Jonathan",
--         "Doe",
--         "1960-05-08",
--         "Dominican",
--         "Elderly",
--         100001,
--         3,
--         NULL,
--         "Retired"
--     ),
--     (
--         NULL,
--         "Jane",
--         "James",
--         "1989-01-01",
--         "Trinidadian",
--         "Adult",
--         103005,
--         81,
--         201,
--         "Fire Officer"
--     ),
--     (
--         NULL,
--         "John",
--         "Donald",
--         "1999-11-14",
--         "Trinidadian",
--         "Adult",
--         100002,
--         5,
--         Null,
--         "Police Officer"
--     ),
--     (
--         NULL,
--         "Jonah",
--         "Rampal",
--         "2010-05-25",
--         "Dominican",
--         "Child",
--         103005,
--         81,
--         201,
--         "Student"
--     ),
--     (
--         NULL,
--         "Jill",
--         "Doe",
--         "1963-03-29",
--         "Trinidadian",
--         "Elderly",
--         100001,
--         3,
--         Null,
--         "Teacher"
--     );
-- INSERT INTO Occupation
-- VALUES ("Teacher", 4359.56),
--     ("Police Officer", 12344.56),
--     ("Security", 3566.90),
--     ("Doctor", 23444.45),
--     ("Developer", 13246);
-- INSERT INTO Street
-- VALUES (Null, 200004, "Lovers Lane", 1),
--     (Null, 200004, "Good Street", 1),
--     (Null, 200005, "Great Street", 4),
--     (Null, 200007, "Independence Lane", 5),
--     (Null, 200006, "King George Street", 2);
-- INSERT INTO District
-- VALUES ("St. George", 2, 12),
--     ("Caroni", 4.33, 20),
--     ("St. John", 2.5, 12),
--     ("St. Patrick", 5, 25),
--     ("St. Peter", 6, 30);
-- INSERT INTO Gang
-- VALUES ("Santos", "Red", "A Black Cross", 3),
--     ("Prophets", "Blue", "An Eagle", 0),
--     (
--         "Crippys",
--         "Green",
--         "An Ak-47 tilted into the air",
--         4
--     ),
--     (
--         "Bloodys",
--         "Yellow",
--         "A glock pointing to the left",
--         4
--     ),
--     (
--         "1738's",
--         "Purple",
--         "The number 1,7,3 and 8 (1738)",
--         2
--     );
-- INSERT INTO GangTerritory
-- VALUES (100018, "Crippys"),
--     (100017, "Bloodys"),
--     (100016, "Santos"),
--     (100019, "Bloodys"),
--     (100015, "Santos");
-- INSERT INTO Report
-- VALUES (
--         NULL,
--         "Jill Doe",
--         "2021-02-18 23:11:00",
--         "I saw a young man steal a lady's bag and run down the street. He looked to be a tall scrawny guy",
--         "Lovers Lane",
--         "Maracas"
--     ),
--     (
--         NULL,
--         "Joe Buden",
--         "2021-05-01 09:11:01",
--         "I heard shots being fired lower down my street",
--         "Swan Street",
--         "Holy Town"
--     ),
--     (
--         NULL,
--         "Obama Saddam",
--         "2021-06-12 12:11:02",
--         "A speeding vehicle collided with my vehicle then continued driving away",
--         "Hillsborough Street",
--         "Roseau"
--     ),
--     (
--         NULL,
--         "Jill Doe",
--         "2021-07-08 13:11:03",
--         "My husband hit me",
--         "Lovers Lane",
--         "Maracas"
--     ),
--     (
--         NULL,
--         "Jonah Rampal",
--         "2021-11-18 17:11:04",
--         "There is a big fire on my street",
--         "Vrignia Avenue",
--         "Roseau"
--     );
INSERT INTO Respondent
VALUES (1, 1000000004),
    (2, 1000000003),
    (2, 1000000002),
    (4, 1000000005),
    (5, 2000000001),
    (5, 2000000005);
    
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
VALUES (10000000, 1000000000, NULL),
    (10000002, 1000000001, "Santos"),
    (10000003, 1000000002, "Crippys"),
    (10000004, 1000000003, "Crippys"),
    (10000005, 1000000004, "Bloddys");
    
INSERT INTO PoliceOfficer  
VALUES (NULL, 1546005801, "Captain", 1000003001, 5),
(Null, 1599640004,	"Sergeant",	1000340002,	3),
(Null, 1456556005,	"Corporal",	2420000003,	2),
(Null, 1693320004,	"Corporal",	1320000006,	4),
(Null, 1356777432,	"Patrol", 1031000005, 3);

INSERT INTO FireOfficer
VALUES(NULL, 1346005801, "Captain",	23834834843, 5), 
(NULL, 1254954993,	"Fire Chief", 2383824892, 4),
(NULL, 1593556005,	"Lieutenant", 2329832933, 3),
(NULL, 1693321040,	"Firefighter", 2393934894, 2),
(NULL, 1512477434,	"Fightfighter", 2939398221,	2);

INSERT INTO PoliceStation
VALUES(NULL, "Cedros Police Station", 1000005, "300-0123", 67),
(NULL, "Fyzabad Police Station", 1000004, "300-0124", 128),
(NULL, "Arouca Police Station", 1000007, "300-0125", 83),
(NULL, "Belmont Police Station", 1000009, "300-0126", 243),
(NULL, "Mayaro Police Station", 1000003, "300-0127", 74);

INSERT INTO FireStation
VALUES(NULL, "Mayaro Fire Station",	1000003, "200-4567", 6),
(NULL, "Penal Fire Station", 1000002, "200-4568", 8),
(NULL, "Arouca Fire Station", 1000007, "200-4569", 12),
(NULL, "Cedros Fire Station", 1000005, "200-4570", 23),
(NULL, "Chaguaramas Fire Station", 1000012,	"200-4571",	14);

INSERT INTO PersonOfInterest
VALUES(1000000861, "Bloddys", "POI have a long history with Victim A", 4),
(1000348923, "Santos", "POI have a recurring history with domestic violence", 2),
(1008862382, NULL, "POI suffered physical abuse from Victims A&B resulting in retaliation", 3),
(1034838322, "Crippys", "POI was under the influence of narcotics", 5),
(1098239823, NULL, "POI suffering from Dementia", 5);

INSERT INTO CommunityCenter
VALUES("Penal Community Center", 18282, 2000002, "Penal"),
("Fyzabad Community Center", 29983, 2000004, "Fyzabad"),
("Caroni Community Center", 18833, 2000005, "Caroni"),
("Champ Fleurs Community Center", 29983, 2000009, "Mt.Hope"),
("Arouca Community Center", 34893, 2000007, "Arouca");

INSERT INTO CommunityProgram
VALUES("Food for the Soul",	"Food Bank", "Provide hot and safe food for less fortunate.",	"Mike Thomas",	2000008),
("Better Life Program",	"House Funding Charity",	"Provide housing settlements for less fortunate",	"Dania Adams",	2000004),
("Veteran Appreciation Program",	"Aid for Army Survivors",	"Provide supplies and rehabiliation for surving war veterans",	"Jayka Mwibime",	2000007),
("Ex Convict Rehabiliation Foundation",	"Rehabiliation Program for Previous Criminals", 	"Provide rehabiliation and aid for previous convicted criminals.",	"Hamiel Oak",	2000002),
("Good Food Program	Food Bank",	"Provide hot and safe food for less fortunate.",	"Stacy White", 2000009);

INSERT INTO FirefightingVehicle
VALUES("TTFD521",	"Truck",	"Toyota",	2010,	TRUE,	6200000003),
("TTFD132",	"Suv",	"Toyota",	2016,	FALSE,	6200000002),
("TTFD134",	"Truck",	"Ford",	2018,	FALSE,	6200000001),
("TTFD912",	"Truck", "Ford",	2018,	TRUE,	6200000004),
("TTFD553",	"Suv",	"Toyota",	2016,	TRUE,	6200000003);

INSERT INTO Convict					 
VALUES(2025/05/19, 1000000001, Null, 1002044503),
(2034/03/24, 1000000012, "Santos", 1004849220),
(2029/11/29, 1000001000, "Crippys", 1009323893),
(2022/04/23, 1000000580, Null, 1094398340),
(2047/12/05, 1000000670, "Bloddys", 1098324231);

INSERT INTO WatchGroup
VALUES("Mayaro Theft Crime Preventation Watch Group",	"John Fayne",	168,	"Focuses on reporting robberies occuring in the community.", 200001),
("San Juan Maco Group", "Marcel Ines",	215,	"Focuses on reporting suspicious activities in the community.",	200003),
("Barataria NightTime Watch",	"Jacob Mike",	90,	"Engage in weekly meetings, and focuses on reporting crimes especially those which occurs in the nighttime.", 200007),
("Penal Community Watch Group",	"Yesha Abdul",	192,	"Coordinates with other community watch groups to observe and report various crimes and suspicious individuals.", 200004),
("Couva Zero Domestic Tolerance Watch Group",	"Maya Zimmine",	103,	"Focuses on reporting domestic abuse that occurs in the community.",	200008);

INSERT INTO School
VALUES("St.George's College	Secondary",	"Secondary", 230,	100008,	200008,"Barataria"),
("University of Trinidad and Tobago",	"Tertiary",	2500,	100003,	200003,	"Curepe"),
("University of the Southern Caribbean", "Tertiary",	4000,	100004,	200004,	"Maracas"),
("St. Joseph Primary School",	"Primary",	150,	100001,	200001,	"St.Joseph"),
("Trinity's College",	"Secondary",	300,	100009,	200009,	"Port of Spain");

INSERT INTO Facility
VALUES("Malt East Park",	"Recreational Park",	"Child",	2,	1000008,	200008,	"Barataria"),
("Las Cuevas Park",	"Beach",	"Adult",	1,	100004,	200004,	"Maracas"),
("Harry's Waterpark	Waterpark",	"Child",	1,	100001,	200001,	"Aripita"),
("Urban Gym",	"Gym",	"Adult",	4,	100007,	200007,	"St.Joseph"),
("Queen's Park Savannah",	"Savannah",	"Elderly",	3,	100005,	200005,	"Port of Spain");

INSERT INTO PatrolVehicle
VALUES("TTPF-23432",	"Car",	"Chevrolet",	2008,	TRUE,	5500000002),
("TTPF-19229",	"Suv",	"Nissan",	2013,	FALSE,	5500000009),
("TTPF-23435",	"Car",	"Chevrolet",	2013,	TRUE,	5500000002),
("TTPF-22998",	"Suv",	"Ford",	2010,	FALSE,	5500000008),
("TTPF-19229",	"Suv",	"Nissan",	2009,	FALSE,	5500000009);