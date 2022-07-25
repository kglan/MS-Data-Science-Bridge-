-- create video table
DROP TABLE IF EXISTS videos;
DROP TABLE IF EXISTS reviewers;


CREATE TABLE videos (
ytchannel INTEGER PRIMARY KEY,
title varchar(100),
length varchar(100),
url varchar(100)
);

INSERT INTO videos (ytchannel, title, length, url ) VALUES (1, 'How to Import SQL files in MySQL Workbench 2021 || How to Import Employees table in MySQL Workbench', '3.47', 'https://www.youtube.com/watch?v=JgUuR67zvQg&ab_channel=CognitoByte');
INSERT INTO videos (ytchannel, title, length, url ) VALUES (2,'How To Create and Populate Tables in SQL Developer', '3.43', 'https://www.youtube.com/watch?v=SY1hvk2fuco&ab_channel=DatabaseStar');
INSERT INTO videos (ytchannel, title, length, url ) VALUES (3, 'SQL Tutorial - 29: SQL JOINS', '7.88', 'https://www.youtube.com/watch?v=LlCURXIdKo8&ab_channel=Simplified');

CREATE TABLE reviewers (
rev INTEGER PRIMARY KEY,
title varchar(100),
userid varchar(100),
rating integer,
review varchar(100)
);

INSERT INTO reviewers (rev, title, userid, rating, review) VALUES (1, 'How to Import SQL files in MySQL Workbench 2021 || How to Import Employees table in MySQL Workbench', 'Rex','4', 'very helpful');
INSERT INTO reviewers (rev, title, userid, rating, review) VALUES (2, 'How To Create and Populate Tables in SQL Developer', 'Justin','3', 'had its drawbacks');
INSERT INTO reviewers (rev, title, userid, rating, review) VALUES (3, 'SQL Tutorial - 29: SQL JOINS', 'Cristina','5', 'saved my life');
INSERT INTO reviewers (rev, title, userid, rating, review) VALUES (4, 'How To Create and Populate Tables in SQL Developer', 'Johnson','2', 'outdated waste of time');
INSERT INTO reviewers (rev, title, userid, rating, review) VALUES (5, 'SQL Tutorial - 29: SQL JOINS', 'Jake','4', 'I liked it');

SELECT * FROM videos; 
SELECT * From reviewers;

SELECT v.title, v.length, 
r.title, r.userid, r.rating, r.review
FROM videos AS v
JOIN reviewers AS r
ON v.title = r.title;


