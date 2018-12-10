
DELIMITER $$
CREATE PROCEDURE GetNumberofStudents()
	BEGIN
		SELECT COUNT(Student_ID) AS Number_Of_Students
		FROM _Student;
	END $$
DELIMITER ;

CALL GetNumberofStudents();



DELIMITER $$
CREATE PROCEDURE GetAllStudentInformation()
	BEGIN
		SELECT * FROM _Student;
	END $$
DELIMITER ;

CALL GetAllStudentInformation();



DELIMITER $$
CREATE PROCEDURE CreateStudent(IN X VARCHAR(65), IN Y VARCHAR(65))
	BEGIN
		INSERT INTO _Student(Student_firstName, Student_lastName)
		VALUES (X , Y);
        
        SELECT Student_ID
        FROM _Student
        ORDER BY Student_ID DESC
        LIMIT 1;
	END $$
DELIMITER ;

CALL CreateStudent('Tony', 'Start');
-- (FirstName, Surname)

DELIMITER $$
CREATE PROCEDURE ReadStudent(IN X INT)
	BEGIN
		SELECT * FROM _Student
        WHERE Student_ID = X;
	END $$
DELIMITER ;

CALL ReadStudent(107);
-- (Student_ID)

DELIMITER $$
CREATE PROCEDURE UpdateStudent(IN X INT, IN Y VARCHAR(65), IN Z VARCHAR(65))
	BEGIN
		UPDATE _Student
        SET Student_firstname = Y, Student_lastname = Z
        WHERE Student_ID = X;
	END $$
DELIMITER ;

CALL UpdateStudent(105, 'First', 'Last');
-- (Student_ID, FirstName, Surname)

DELIMITER $$
CREATE PROCEDURE DeleteStudent(IN X INT)
	BEGIN
		DELETE FROM _Student
        WHERE Student_ID = X;
	END $$
DELIMITER ;

CALL DeleteStudent(102);
-- (Student_ID)

DELIMITER $$
CREATE PROCEDURE InsertMerit(IN X INT, IN Y INT)
	BEGIN
		INSERT INTO _Merits(Student_ID, Merit_ID, Points)
		VALUES
        (X, X, Points + Y);
	END $$
DELIMITER ;

CALL InsertMerit(107, 5);
-- (Student_ID, Points)

-- Adds Merits to Student
DELIMITER $$
CREATE PROCEDURE UpdateMerit(IN X INT, IN Y INT)
	BEGIN
		UPDATE _Merits
        SET Points = Points + Y
        WHERE Student_ID = X;
	END $$
DELIMITER ;

CALL UpdateMerit(107, 5);
-- (Student_ID, Points that will Add)


DELIMITER $$
CREATE PROCEDURE ViewMerits()
	BEGIN
		SELECT * FROM _Merits;
	END $$
DELIMITER ;

CALL ViewMerits();



DELIMITER $$
CREATE PROCEDURE DeleteMerit(IN X INT)
	BEGIN
		DELETE FROM _Merits 
        WHERE Student_ID = X;
	END $$
DELIMITER ;

CALL DeleteMerit(100);
-- (Student_ID)


DELIMITER $$
CREATE PROCEDURE InsertAttendance(IN X INT)
	BEGIN
		INSERT INTO _Attendance(_Date, Student_ID, Attendance_Status)
        VALUE
		('2018-08-04', X, 0),
		('2018-08-11', X, 0),
		('2018-08-18', X, 0),
		('2018-08-25', X, 0),
		('2018-09-01', X, 0),
		('2018-09-08', X, 0),
		('2018-09-15', X, 0),
		('2018-09-22', X, 0),
		('2018-09-29', X, 0),
		('2018-10-06', X, 0),
		('2018-10-13', X, 0),
		('2018-10-20', X, 0),
		('2018-10-27', X, 0),
		('2018-11-03', X, 0),
		('2018-11-10', X, 0),
		('2018-11-17', X, 0),
		('2018-11-24', X, 0),
		('2018-12-01', X, 0),
		('2018-12-08', X, 0)
    ; 
	END $$
DELIMITER ;

CALL InsertAttendance(100);
-- (Student_ID) 


DELIMITER $$
CREATE PROCEDURE ViewStudentsAttendance(IN X INT)
	BEGIN
		SELECT _Student.Student_ID, _Student.Student_firstname, _Attendance._Date, _Attendance.Attendance_Status,
		IF (Attendance_Status != 0, "Present", "Absent") AS 'Legend'
		FROM _Student 
		JOIN _Attendance 
		ON _Student.Student_ID = _Attendance.Student_ID
		WHERE _Student.Student_ID = X;
	END $$
DELIMITER ;

CALL ViewStudentsAttendance(100);
-- (Student_ID)

DELIMITER $$
CREATE PROCEDURE UpdateStudentAttendance(IN X INT, IN A BOOLEAN, IN B BOOLEAN, IN C BOOLEAN,
IN D BOOLEAN, IN E BOOLEAN, IN F BOOLEAN, IN G BOOLEAN, IN H BOOLEAN, IN I BOOLEAN,
IN J BOOLEAN, IN K BOOLEAN, IN L BOOLEAN, IN M BOOLEAN, IN N BOOLEAN, IN O BOOLEAN,
IN P BOOLEAN, IN Q BOOLEAN, IN R BOOLEAN, IN S BOOLEAN)
	BEGIN
		UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(A != 0, 1, 0))
        WHERE _Date = '2018-08-04' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(B != 0, 1, 0))
        WHERE _Date = '2018-08-11' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(C != 0, 1, 0))
        WHERE _Date = '2018-08-18' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(D != 0, 1, 0))
        WHERE _Date = '2018-08-25' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(E != 0, 1, 0))
        WHERE _Date = '2018-09-01' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(F != 0, 1, 0))
        WHERE _Date = '2018-09-08' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(G != 0, 1, 0))
        WHERE _Date = '2018-09-15' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(H != 0, 1, 0))
        WHERE _Date = '2018-09-22' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(I != 0, 1, 0))
        WHERE _Date = '2018-09-29' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(J != 0, 1, 0))
        WHERE _Date = '2018-10-06' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(K != 0, 1, 0))
        WHERE _Date = '2018-10-13' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(L != 0, 1, 0))
        WHERE _Date = '2018-10-20' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(M != 0, 1, 0))
        WHERE _Date = '2018-10-27' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(N != 0, 1, 0))
        WHERE _Date = '2018-11-03' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(O != 0, 1, 0))
        WHERE _Date = '2018-11-10' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(P != 0, 1, 0))
        WHERE _Date = '2018-11-17' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(Q != 0, 1, 0))
        WHERE _Date = '2018-11-24' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(R != 0, 1, 0))
        WHERE _Date = '2018-12-01' AND Student_ID = X;
        
        UPDATE _Attendance
        SET 
        Attendance_Status = (SELECT IF(S != 0, 1, 0))
        WHERE _Date = '2018-12-08' AND Student_ID = X;
	END $$
DELIMITER ;

CALL UpdateStudentAttendance(100, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 );
-- (Student_ID, 1 or 0 19 times indicating status per date)

DELIMITER $$
CREATE PROCEDURE DeleteAttendance(IN Y INT)
	BEGIN
		DELETE FROM _Attendance
        WHERE Student_ID = Y;
	END $$
DELIMITER ;

CALL DeleteAttendance(100);
-- (Student_ID)



DELIMITER $$
CREATE PROCEDURE ViewStudentWhoisPresent(IN X Date)
	BEGIN
		SELECT _Student.Student_firstname, _Attendance._Date
        FROM _Student
        JOIN _Attendance
        ON _Student.Student_ID = _Attendance.Student_ID
        WHERE (_Attendance._Date = X AND _Attendance.Attendance_Status > 0) OR
        (_Attendance._Date = X AND _Attendance.Attendance_Status = 0);
	END $$
DELIMITER ;

CALL ViewStudentWhoisPresent('2018-08-11');
-- (Date)

DELIMITER $$
CREATE PROCEDURE InsertActivities(IN X INT, IN Y VARCHAR(65), IN Z INT)
	BEGIN
		INSERT INTO _Activities(Activity_Name, Activity_Grade, Student_ID)
		VALUE
		(Y, Z, X);
        
        SELECT Activity_ID
        FROM _Activities
        ORDER BY Activity_ID DESC
        LIMIT 1;
    END $$
DELIMITER ;
DROP PROCEDURE InsertActivities;

CALL InsertActivities(1, 'Activity_06', 90);
-- (Student_ID, ActivityName, ActivityGrade)
DELIMITER $$
CREATE PROCEDURE ReadStudentActivities(IN X INT)
	BEGIN
		SELECT DISTINCT(Activity_Name), Activity_Grade, Student_ID, Activity_ID FROM _Activities
        WHERE Student_ID = X
        GROUP BY Activity_Name; 
	END $$
DELIMITER ;

CALL ReadStudentActivities(1);
-- (Student_ID)

DELIMITER $$
CREATE PROCEDURE ReadActivity(IN X VARCHAR(65))
	BEGIN
		SELECT Activity_Name, Activity_Grade, Student_ID, Activity_ID 
        FROM _Activities
        WHERE Activity_Name LIKE X;
	END $$
DELIMITER ;

CALL ReadActivity('Activity_01');
-- (ActivityName)

DELIMITER $$
CREATE PROCEDURE UpdateActivity(IN Z INT, IN X VARCHAR(65), IN Y INT)
	BEGIN
		UPDATE _Activities
        SET Activity_Name = X
        WHERE Activity_ID = Z;
        
        UPDATE _Activities
        SET Activity_Grade = Y
        WHERE Activity_ID = Z;
        
	END $$
DELIMITER ;

CALL UpdateActivity(5, 'Updated Activity_04', 50);
-- (Student_ID, ActivityName, ActivityGrade)

DELIMITER $$
CREATE PROCEDURE DeleteActivity(IN X INT)
	BEGIN
		DELETE FROM _Activities
        WHERE Activity_ID = X;
    END $$
DELIMITER ;

CALL DeleteActivity(5);
-- (Student_ID)










