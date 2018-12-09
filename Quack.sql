CREATE DATABASE PROJECT;
USE PROJECT;

CREATE TABLE _Student(
	Student_ID INT NOT NULL AUTO_INCREMENT,
    Student_firstName VARCHAR(65) NOT NULL,
    Student_lastName VARCHAR(65) NOT NULL,
    PRIMARY KEY (Student_ID)
);

CREATE TABLE _Merits(
	Merit_ID INT NOT NULL AUTO_INCREMENT,
    Student_ID INT,
    Points INT NOT NULL,
    FOREIGN KEY (Student_ID) REFERENCES _Student(Student_ID),
    PRIMARY KEY (Merit_ID)
);

CREATE TABLE _Attendance(
	Attendance_ID INT NOT NULL AUTO_INCREMENT,
    _Date DATE,
    Attendance_Status boolean,
    PRIMARY KEY (Attendance_ID),
    Student_ID INT,
    FOREIGN KEY (Student_ID) REFERENCES _Student(Student_ID)
);

CREATE TABLE _Activities(
	Activity_ID INT NOT NULL AUTO_INCREMENT,
    Activity_Name VARCHAR(65),
    Activity_Grade LONG,
    PRIMARY KEY (Activity_ID),
    Student_ID INT,
    FOREIGN KEY (Student_ID) REFERENCES _Student(Student_ID)
);


-- Student CRUD

INSERT INTO _Student(Student_firstName, Student_lastName)
	VALUES
	('Emma', 'Smith'),
    ('Liam', 'Jones'),
    ('Noah', 'Miller'),
    ('Olivia', 'Taylor'),
    ('Ava', 'Jackson'),
    ('Isabella', 'Martin'),
    ('Sophia', 'Martinez'),
    ('Elijah', 'Rodriguez'),
    ('Logan', 'Walker'),
    ('Mia', 'Young'),
    ('Mason', 'Wright'),
    ('James', 'Scott'),
    ('Aiden', 'Baker'),
    ('Ethan', 'Carter'),
    ('Lucas', 'Roberts'),
    ('Jacob', 'Campbell'),
    ('Michael', 'Edwards'),
    ('Matthew', 'Sanchez'),
    ('Benjamin', 'Reed'),
    ('Amelia', 'Bell'),
    ('Charlotte', 'Rivera'),
    ('Alexander', 'Cox'),
    ('William', 'Torres'),
    ('Daniel', 'Ramirez'),
    ('Jayden', 'Brooks'),
    ('Oliver', 'Price'),
    ('Carter', 'Barnes'),
    ('Sebastian', 'Coleman'),
    ('Joseph', 'Powell'),
    ('David', 'Hughes'),
    ('Abigail', 'Butler'),
    ('Emily', 'Gonzales'),
    ('Gabriel', 'Russell'),
    ('Julian', 'Hayes'),
    ('Jackson', 'Johnson'),
    ('Anthony', 'Brown'),
    ('Harper', 'Wilson'),
    ('Evelyn', 'Anderson'),
    ('Dylan', 'White'),
    ('Wyatt', 'Thompson'),
    ('Madison', 'Robinson'),
    ('Grayson', 'Lewis'),
    ('Isaiah', 'Hall'),
    ('Christopher', 'Hernandez'),
    ('Joshua', 'Lopez'),
    ('Victoria', 'Green'),
    ('Christian', 'Gonzalez'),
    ('Samuel', 'Mitchell'),
    ('Andrew', 'Turner'),
    ('Mateo', 'Parker'),
    ('Sofia', 'Collins'),
    ('Jaxon', 'Morris'),
    ('Josiah', 'Cook'),
    ('John', 'Murphy'),
    ('Scarlett', 'Cooper'),
    ('Luke', 'Howard'),
    ('Aria', 'Peterson'),
    ('Ryan', 'James'),
    ('Elizabeth', 'Kelly'),
    ('Camila','Bennett'),
    ('Nathan', 'Ross'),
    ('Layla','Jenkins'),
    ('Isaac', 'Long'),
    ('Owen','Flores'),
    ('Ella', 'Simmons'),
    ('Henry','Bryant'),
    ('Levi', 'Griffin'),
    ('Aaron', 'Williams'),
    ('Caleb', 'Davis'),
    ('Chloe', 'Moore'),
    ('Zoey','Thomas'),
    ('Jeremiah', 'Harris'),
    ('Lincoln', 'Garcia'),
    ('Landon', 'Clark'),
    ('Adrian', 'Lee'),
    ('Hunter', 'Allen'),
    ('Eli', 'King'),
    ('Penelope','Hill'),
    ('Skylar', 'Adams'),
    ('Jonathan', 'Nelson'),
    ('Thomas', 'Perez'),
    ('Jack', 'Phillips'),
    ('Jordan', 'Evans'),
    ('Connor', 'Stewart'),
    ('Brayden', 'Rogers'),
    ('Cameron', 'Morgan'),
    ('Grace', 'Bailey'),
    ('Bryson', 'Richardson'),
    ('Mila', 'Ward'),
    ('Lillian', 'Gray'),
    ('Aaliyah', 'Watson'),
    ('Jose', 'Sanders'),
    ('Lily', 'Wood'),
    ('Paisley', 'Henderson'),
    ('Xavier', 'Perry'),
    ('Dominic', 'Patterson'),
    ('Bella', 'Washington'),
    ('Nicholas', 'Foster'),
    ('Brooklyn', 'Alexander'),
    ('Savannah', 'Diaz');

INSERT INTO _Merits(Student_ID, Merit_ID, Points)
	VALUES
		(1, 1, 0),
        (2, 2, 0),
        (3, 3, 0),
        (4, 4, 0),
        (5, 5, 0),
        (6, 6, 0),
        (7, 7, 0),
        (8, 8, 0),
        (9, 9, 0),
        (10, 10, 0),
        (11, 11, 10),
        (12, 12, 10),
        (13, 13, 10),
        (14, 14, 10),
        (15, 15, 10),
        (16, 16, 10),
        (17, 17, 10),
        (18, 18, 10),
        (19, 19, 10),
        (20, 20, 10),
        (21, 21, 20),
        (22, 22, 20),
        (23, 23, 20),
        (24, 24, 20),
        (25, 25, 20),
        (26, 26, 20),
        (27, 27, 20),
        (28, 28, 20),
        (29, 29, 20),
        (30, 30, 20),
		(31, 31, 30),
        (32, 32, 30),
        (33, 33, 30),
        (34, 34, 30),
        (35, 35, 30),
        (36, 36, 30),
        (37, 37, 30),
        (38, 38, 30),
        (39, 39, 30),
        (40, 40, 30),
        (41, 41, 40),
        (42, 42, 40),
        (43, 43, 40),
        (44, 44, 40),
        (45, 45, 40),
        (46, 46, 40),
        (47, 47, 40),
        (48, 48, 40),
        (49, 49, 40),
        (50, 50, 40),
        (51, 51, 50),
        (52, 52, 50),
        (53, 53, 50),
        (54, 54, 50),
        (55, 55, 50),
        (56, 56, 50),
        (57, 57, 50),
        (58, 58, 50),
        (59, 59, 50),
        (60, 60, 50),
        (61, 61, 60),
        (62, 62, 60),
        (63, 63, 60),
        (64, 64, 60),
        (65, 65, 60),
        (66, 66, 60),
        (67, 67, 60),
        (68, 68, 60),
        (69, 69, 60),
        (70, 70, 60),
        (71, 71, 70),
        (72, 72, 70),
        (73, 73, 70),
        (74, 74, 70),
        (75, 75, 70),
        (76, 76, 70),
        (77, 77, 70),
        (78, 78, 70),
        (79, 79, 70),
        (80, 80, 70),
        (81, 81, 80),
        (82, 82, 80),
        (83, 83, 80),
        (84, 84, 80),
        (85, 85, 80),
        (86, 86, 80),
        (87, 87, 80),
        (88, 88, 80),
        (89, 89, 80),
        (90, 90, 80),
        (91, 91, 90),
        (92, 92, 90),
        (93, 93, 90),
        (94, 94, 90),
        (95, 95, 90),
        (96, 96, 90),
        (97, 97, 90),
        (98, 98, 90),
        (99, 99, 90),
        (100, 100, 90);


INSERT INTO _Attendance(_Date, Student_ID, Attendance_Status)
	VALUE
    ('2018-08-04', 1, 1),
    ('2018-08-11', 1, 1),
    ('2018-08-18', 1, 1),
    ('2018-08-25', 1, 1),
    ('2018-09-01', 1, 1),
    ('2018-09-08', 1, 1),
    ('2018-09-15', 1, 1),
    ('2018-09-22', 1, 1),
    ('2018-09-29', 1, 1),
    ('2018-10-06', 1, 1),
    ('2018-10-13', 1, 1),
    ('2018-10-20', 1, 1),
    ('2018-10-27', 1, 1),
    ('2018-11-03', 1, 1),
    ('2018-11-10', 1, 1),
    ('2018-11-17', 1, 1),
    ('2018-11-24', 1, 1),
    ('2018-12-01', 1, 1),
    ('2018-12-08', 1, 1)
    ;
    
INSERT INTO _Attendance(_Date, Student_ID, Attendance_Status)
	VALUE
    ('2018-08-04', 2, 1),
    ('2018-08-11', 2, 0),
    ('2018-08-18', 2, 1),
    ('2018-08-25', 2, 1),
    ('2018-09-01', 2, 1),
    ('2018-09-08', 2, 0),
    ('2018-09-15', 2, 0),
    ('2018-09-22', 2, 0),
    ('2018-09-29', 2, 0),
    ('2018-10-06', 2, 0),
    ('2018-10-13', 2, 0),
    ('2018-10-20', 2, 1),
    ('2018-10-27', 2, 0),
    ('2018-11-03', 2, 0),
    ('2018-11-10', 2, 0),
    ('2018-11-17', 2, 0),
    ('2018-11-24', 2, 0),
    ('2018-12-01', 2, 0),
    ('2018-12-08', 2, 1)
    ;
    
INSERT INTO _Attendance(_Date, Student_ID, Attendance_Status)
	VALUE
    ('2018-08-04', 3, 0),
    ('2018-08-11', 3, 0),
    ('2018-08-18', 3, 1),
    ('2018-08-25', 3, 1),
    ('2018-09-01', 3, 0),
    ('2018-09-08', 3, 0),
    ('2018-09-15', 3, 0),
    ('2018-09-22', 3, 0),
    ('2018-09-29', 3, 0),
    ('2018-10-06', 3, 0),
    ('2018-10-13', 3, 0),
    ('2018-10-20', 3, 1),
    ('2018-10-27', 3, 0),
    ('2018-11-03', 3, 0),
    ('2018-11-10', 3, 0),
    ('2018-11-17', 3, 0),
    ('2018-11-24', 3, 0),
    ('2018-12-01', 3, 0),
    ('2018-12-08', 3, 1)
    ;
    
INSERT INTO _Attendance(_Date, Student_ID, Attendance_Status)
	VALUE
    ('2018-08-04', 4, 0),
    ('2018-08-11', 4, 0),
    ('2018-08-18', 4, 1),
    ('2018-08-25', 4, 1),
    ('2018-09-01', 4, 0),
    ('2018-09-08', 4, 0),
    ('2018-09-15', 4, 0),
    ('2018-09-22', 4, 0),
    ('2018-09-29', 4, 0),
    ('2018-10-06', 4, 0),
    ('2018-10-13', 4, 0),
    ('2018-10-20', 4, 0),
    ('2018-10-27', 4, 0),
    ('2018-11-03', 4, 0),
    ('2018-11-10', 4, 0),
    ('2018-11-17', 4, 0),
    ('2018-11-24', 4, 0),
    ('2018-12-01', 4, 0),
    ('2018-12-08', 4, 0)
    ;
    
INSERT INTO _Attendance(_Date, Student_ID, Attendance_Status)
	VALUE
    ('2018-08-04', 5, 0),
    ('2018-08-11', 5, 0),
    ('2018-08-18', 5, 0),
    ('2018-08-25', 5, 0),
    ('2018-09-01', 5, 0),
    ('2018-09-08', 5, 0),
    ('2018-09-15', 5, 0),
    ('2018-09-22', 5, 0),
    ('2018-09-29', 5, 0),
    ('2018-10-06', 5, 0),
    ('2018-10-13', 5, 0),
    ('2018-10-20', 5, 0),
    ('2018-10-27', 5, 0),
    ('2018-11-03', 5, 0),
    ('2018-11-10', 5, 0),
    ('2018-11-17', 5, 0),
    ('2018-11-24', 5, 0),
    ('2018-12-01', 5, 0),
    ('2018-12-08', 5, 1)
    ;
    

INSERT INTO _Attendance(_Date, Student_ID, Attendance_Status)
	VALUE
    ('2018-08-04', 6, 1),
    ('2018-08-11', 6, 1),
    ('2018-08-18', 6, 1),
    ('2018-08-25', 6, 1),
    ('2018-09-01', 6, 1),
    ('2018-09-08', 6, 1),
    ('2018-09-15', 6, 1),
    ('2018-09-22', 6, 1),
    ('2018-09-29', 6, 1),
    ('2018-10-06', 6, 1),
    ('2018-10-13', 6, 1),
    ('2018-10-20', 6, 1),
    ('2018-10-27', 6, 1),
    ('2018-11-03', 6, 1),
    ('2018-11-10', 6, 1),
    ('2018-11-17', 6, 1),
    ('2018-11-24', 6, 1),
    ('2018-12-01', 6, 1),
    ('2018-12-08', 6, 1)
    ; 
    
INSERT INTO _Attendance(_Date, Student_ID, Attendance_Status)
	VALUE
    ('2018-08-04', 7, 0),
    ('2018-08-11', 7, 0),
    ('2018-08-18', 7, 0),
    ('2018-08-25', 7, 0),
    ('2018-09-01', 7, 0),
    ('2018-09-08', 7, 0),
    ('2018-09-15', 7, 0),
    ('2018-09-22', 7, 0),
    ('2018-09-29', 7, 0),
    ('2018-10-06', 7, 0),
    ('2018-10-13', 7, 0),
    ('2018-10-20', 7, 0),
    ('2018-10-27', 7, 0),
    ('2018-11-03', 7, 0),
    ('2018-11-10', 7, 0),
    ('2018-11-17', 7, 0),
    ('2018-11-24', 7, 0),
    ('2018-12-01', 7, 0),
    ('2018-12-08', 7, 0)
    ; 
    
INSERT INTO _Activities(Activity_Name, Activity_Grade, Student_ID)
	VALUE
    ('Activity 01' , 100, 1),
    ('Activity 02' , 90 , 1)
    ;

INSERT INTO _Activities(Activity_Name, Activity_Grade, Student_ID)
	VALUE
    ('Activity 01' , 80, 2),
    ('Activity 02' , 70, 2)
    ;

INSERT INTO _Activities(Activity_Name, Activity_Grade, Student_ID)
	VALUE
    ('Activity 01' , 60, 3),
    ('Activity 02' , 50, 3),
    ('Activity 03' , 40, 3)
    ;

INSERT INTO _Activities(Activity_Name, Activity_Grade, Student_ID)
	VALUE
    ('Activity 05' , 20, 3)
    ;












