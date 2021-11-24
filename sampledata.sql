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
INSERT INTO Case
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