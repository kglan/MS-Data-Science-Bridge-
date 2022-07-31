-- Create a Relational Database Management System

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS groupz;
DROP TABLE IF EXISTS rooms;
DROP TABLE IF EXISTS usersgroupz;
DROP TABLE IF EXISTS groupzrooms;
DROP VIEW IF EXISTS ug;
DROP VIEW IF EXISTS gr;

CREATE TABLE users (
user_id int Primary Key,
username varchar(100)
);
INSERT into users (user_id, username) Values (1, 'Modesto');
INSERT into users (user_id, username) Values (2, 'Agine');
INSERT into users (user_id, username) Values (3, 'Christopher');
INSERT into users (user_id, username) Values (4, 'Cheong woo');
INSERT into users (user_id, username) Values (5, 'Saulat');
INSERT into users (user_id, username) Values (6, 'Heidy');


CREATE table groupz (
group_id int Primary Key,
groupname varchar(100)
);

Insert into groupz (group_id, groupname) Values (1, 'I.T.');
Insert into groupz (group_id, groupname) Values (2, 'Sales');
Insert into groupz (group_id, groupname) Values (3, 'Administration');
Insert into groupz (group_id, groupname) Values (4, 'Operations');


Create table rooms (
room_id int Primary Key,
roomname varchar(100)
);

INSERT INTO rooms (room_id, roomname) Values (1, '101');
INSERT INTO rooms (room_id, roomname) Values (2, '102');
INSERT INTO rooms (room_id, roomname) Values (3, 'Auditorium A');
INSERT INTO rooms (room_id, roomname) Values (4, 'Auditorium B');

Select * From users;
Select * From groupz;
Select * From rooms;

CREATE Table usersgroupz (
user_id int REFERENCES users (user_id),
group_id int REFERENCES groupz(group_id),
CONSTRAINT pk_users_groupz Primary Key (user_id, group_id)
);

INSERT INTO usersgroupz (user_id, group_id) Values (1,1);
INSERT INTO usersgroupz (user_id, group_id) Values (2,1);
INSERT INTO usersgroupz (user_id, group_id) Values (3,2);
INSERT INTO usersgroupz (user_id, group_id) Values (4,2);
INSERT INTO usersgroupz (user_id, group_id) Values (5,3);
INSERT INTO usersgroupz (user_id, group_id) Values (6,0);
INSERT INTO usersgroupz (user_id, group_id) Values (0,4);



CREATE TABLE groupzrooms (
group_id int NOT NULL REFERENCES groupz(group_id),
room_id int NOT NULL REFERENCES rooms(room_id),
CONSTRAINT pk_groupz_rooms PRIMARY KEY (group_id, room_id)
);

INSERT into groupzrooms (group_id, room_id) Values (1,1);
INSERT into groupzrooms (group_id, room_id) Values (1,2);
INSERT into groupzrooms (group_id, room_id) Values (2,2);
INSERT into groupzrooms (group_id, room_id) Values (2,3);
INSERT into groupzrooms (group_id, room_id) Values (3,0);
INSERT into groupzrooms (group_id, room_id) Values (0,4);

Select * From usersgroupz;
Select * From groupzrooms;

CREATE VIEW ug AS
SELECT 
users.username,
groupz.groupname
FROM
users
LEFT JOIN usersgroupz
ON users.user_id = usersgroupz.user_id
RIGHT JOIN groupz
ON usersgroupz.group_id = groupz.group_id;


CREATE VIEW gr AS
SELECT
groupz.groupname,
rooms.roomname
FROM
groupz
LEFT JOIN groupzrooms
ON groupz.group_id = groupzrooms.group_id
RIGHT JOIN rooms
ON rooms.room_id = groupzrooms.room_id;

-- Query to Demonstrate All groups, and the users in each group
SELECT * FROM ug;

-- Query to Demonstrate All rooms, and the groups assigned to each room
SELECT * FROM gr;

-- Query to Demonstrate A list of users, the groups that they belong to, and the rooms to which they are assigned
SELECT 
ug.username,
ug.groupname,
gr.roomname
FROM ug 
LEFT JOIN gr
ON ug.groupname = gr.groupname
ORDER BY ug.username, ug.groupname, gr.roomname;










