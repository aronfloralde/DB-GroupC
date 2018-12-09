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
CREATE PROCEDURE complex04(IN x INT, IN y INT)
	BEGIN
		SELECT Student_ID, AVG(Activity_Grade)
		FROM _Activities
		GROUP BY Student_ID;
	END $$
DELIMITER ;


CALL complex01();
CALL complex02();
CALL complex03(0);

SELECT * FROM _Student;
SELECT * FROM _Merits;
SELECT * FROM _Attendance;
SELECT * FROM _Activities;





