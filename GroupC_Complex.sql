USE PROJECT;


DELIMITER $$
CREATE PROCEDURE complex01()
	BEGIN
		SELECT _Student.Student_ID, SUM(_Attendance.Attendance_Status) AS Present, COUNT(_Date) - SUM(_Attendance.Attendance_Status) AS Absent
		FROM _Student, _Attendance
		WHERE _Student.Student_ID = _Attendance.Student_ID
		GROUP BY Student_ID
		HAVING 
		SUM(_Attendance.Attendance_Status) = (
		SELECT MAX(_SUM)
		FROM (
		SELECT _Student.Student_ID, SUM(_Attendance.Attendance_Status) AS _SUM
		FROM _Student, _Attendance
		WHERE _Student.Student_ID = _Attendance.Student_ID
		GROUP BY Student_ID) T, _Student) OR 
		SUM(_Attendance.Attendance_Status) =
		(SELECT MIN(_SUM)
		FROM (
		SELECT _Student.Student_ID, SUM(_Attendance.Attendance_Status) AS _SUM
		FROM _Student, _Attendance
		WHERE _Student.Student_ID = _Attendance.Student_ID
		GROUP BY Student_ID) T, _Attendance);
	END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE complex02()
	BEGIN
		SELECT _Merits.Student_ID, Student_firstname, Points
		FROM _Merits, _Student
		WHERE Points > (SELECT AVG(Points)
		FROM _Merits) AND _Merits.Student_ID = _Student.Student_ID;
	END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE complex03(IN X INT)
	BEGIN
		SELECT Student_ID, Activity_Grade
		FROM _Activities
		HAVING Activity_Grade > X;
	END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE complex04(IN X INT, IN Y INT)
	BEGIN
		SELECT AVG(Activity_Grade) AS 'Average Grade', Student_ID
		FROM (SELECT Activity_Grade, Student_ID
		FROM _Activities
		LIMIT X, Y) _Grades
		GROUP BY Student_ID;
    END $$
DELIMITER ;



DELIMITER $$
CREATE PROCEDURE complex05()
	BEGIN
		SELECT Student_firstname, Student_lastname, Activity_Name, Activity_Grade, _Activities.Student_ID 
		From _Activities
		JOIN _Student
		ON _Activities.Student_ID = _Student.Student_ID
		WHERE Activity_Grade < (SELECT AVG(Activity_Grade)
		FROM _Activities);
	END $$
DELIMITER ;

CALL complex01();
CALL complex02();
CALL complex03(0);
CALL complex04(0, 500);
CALL complex05();

SELECT * FROM _Student;
SELECT * FROM _Merits;
SELECT * FROM _Attendance;
SELECT * FROM _Activities;