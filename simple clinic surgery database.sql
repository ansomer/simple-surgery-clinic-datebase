create table Doctors(
Doctor_ID int primary key ,
	first_Name varchar(50),
	last_Name varchar(50) ,
	Phone_Number int ,
	Specialization varchar(50) ,
);
create table Patient(
Patient_ID int primary key ,
	first_Name varchar(50),
	last_Name varchar(50) ,
	Phone_Number int ,
	Medical_Case varchar(50) ,
);
create table Doctors_Schedule(
	Doctor_ID int  ,
	patient_ID int ,
	Date_of_Surgery date primary key, 
);
create table Doctors_Statics(
Doctor_ID int primary key ,
The_averge_of_surgery_per_week int,
The_averge_of_salary money,
);
INSERT INTO Doctors (Doctor_ID ,first_Name ,last_Name ,Phone_Number ,Specialization)
VALUES (112201,'TOM','Walker',01551234567,'Laparoscopic Surgery');
INSERT INTO Doctors (Doctor_ID ,first_Name ,last_Name ,Phone_Number ,Specialization)
VALUES (112202,	'Alan','Walker',01554567123,'Colorectal surgery');
INSERT INTO Doctors (Doctor_ID ,first_Name ,last_Name ,Phone_Number ,Specialization)
VALUES (112203,'John','Smith',01559876123,'Vascular Surgery');
INSERT INTO Doctors (Doctor_ID ,first_Name ,last_Name ,Phone_Number ,Specialization)
VALUES (112204,'Lukas','Grahem',01550908070,'Endocrine Surgery');
INSERT INTO Doctors (Doctor_ID ,first_Name ,last_Name ,Phone_Number ,Specialization)
VALUES (112205,'Claire','Brawn',01553254091,'Cardiothoracic Surgery');


INSERT INTO Patient (Patient_ID ,first_Name ,last_Name ,Phone_Number ,Medical_Case)
VALUES (110001,'Mohamed','Ahmed',01220987654,'Heart problem');
INSERT INTO Patient (Patient_ID ,first_Name ,last_Name ,Phone_Number ,Medical_Case)
VALUES (110002,'Ahmed','Mohamed',01223547890,'Endocrine','poblem');
INSERT INTO Patient (Patient_ID ,first_Name ,last_Name ,Phone_Number ,Medical_Case)
VALUES (110003,'Mahmoud','Ahmed',01228783646,'Child Surgery');
INSERT INTO Patient (Patient_ID ,first_Name ,last_Name ,Phone_Number ,Medical_Case)
VALUES (11000,'Hesham','Mahmoud',01223354657,'Veins problem');
INSERT INTO Patient (Patient_ID ,first_Name ,last_Name ,Phone_Number ,Medical_Case)
VALUES (110005,'Ahmed','Hesham',01112134556,'Gallblader problem');


INSERT INTO Doctors_Statics (Doctor_ID ,The_averge_of_surgery_per_week ,The_averge_of_salary)
VALUES (112201,3,6000.00);
INSERT INTO Doctors_Statics (Doctor_ID ,The_averge_of_surgery_per_week ,The_averge_of_salary)
VALUES (112202,1,7000.00);
INSERT INTO Doctors_Statics (Doctor_ID ,The_averge_of_surgery_per_week ,The_averge_of_salary)
VALUES (112203,2,6000.00);
INSERT INTO Doctors_Statics (Doctor_ID ,The_averge_of_surgery_per_week ,The_averge_of_salary)
VALUES (112204,1,5000.00);
INSERT INTO Doctors_Statics (Doctor_ID ,The_averge_of_surgery_per_week ,The_averge_of_salary)
VALUES (112205,2,10000.00);


INSERT INTO Doctors_Schedule(Doctor_ID ,patient_ID ,Date_of_Surgery)
VALUES (112205,110001,2020-06-18);
INSERT INTO Doctors_Schedule(Doctor_ID ,patient_ID ,Date_of_Surgery)
VALUES (112206,110003,2020-07-01);
INSERT INTO Doctors_Schedule(Doctor_ID ,patient_ID ,Date_of_Surgery)
VALUES (112204,110002,2020-09-09);
INSERT INTO Doctors_Schedule(Doctor_ID ,patient_ID ,Date_of_Surgery)
VALUES (112203,110004,2020-11-12);
INSERT INTO Doctors_Schedule(Doctor_ID ,patient_ID ,Date_of_Surgery)
VALUES (112202,110006,2020-12-11);


--1-how can you return the ASCII value of the first character in "first name"?
SELECT ASCII(first_Name) AS NumCodeOfFirstChar
FROM Doctors;

--2-how can you return an integer value (the Unicode value), for the first character in "first name"?
SELECT UNICODE(first_Name) AS NumCodeOfFirstChar
FROM  Doctors;

--3-how can you return the character based on the number code 73?
SELECT CHAR(73) AS CodeToCharacter;

--4-how can you Return the length of an expression (in bytes)?
SELECT DATALENGTH('surgey clinic');

--5-Compares two SOUNDEX values and return an integer value between(doctor,patient )?
SELECT DIFFERENCE('doctor', 'patient');

--6-how can you extract 4 characters from a string (starting from left)?
SELECT LEFT('database', 4) AS ExtractString;

--7-how can you extract 4 characters from a string (starting from right)?
SELECT RIGHT('database', 4) AS ExtractString;

--8-how can you return the length of a string('database')?
SELECT LEN('database');

--9-how can you convert DATABASE to lower-case?
SELECT LOWER('DATABASE');

--10-how can you convert database to upper-case?
SELECT UPPER('database');
      
--11-how can you return the absolute value of -100?
SELECT Abs(-100) AS AbsNum;

--12-how can you return the largest integer value that is equal to or less than 74.74?
SELECT FLOOR(74.74) AS FloorValue;

--13-what is sine of 0 equal to?
SELECT SIN(0);

--14-what is cosine of 0 equal to?
SELECT COS(0);

--15-what is tangent of 0 equal to?
SELECT TAN(0);

--16-how can you Remove leading and trailing spaces from ('  I      LIKE        Database    ') ?
SELECT TRIM('  I      LIKE        Database    ') AS TrimmedString;

--17-what is the arc cosine of 1 ?
SELECT ACOS(1);

--18-what is the arc sine of 1 ?
SELECT ASIN(1);

--19-what is the arc tangent of 1 ?
SELECT ATAN(1);

--20-what is the smallest integer value that is greater than or equal to 74.74?
SELECT CEILING(74.74);


SELECT Doctor_Id
  FROM Doctors 
 WHERE Doctor_Id IN (SELECT Doctor_Id
                FROM Doctors_Statics
               WHERE The_averge_of_salary > 8000)

SELECT Doctor_Id
  FROM Doctors 
 WHERE Doctor_Id IN (SELECT Doctor_Id
                FROM Doctors_Statics
               WHERE The_averge_of_salary > 6000)

SELECT Doctor_Id
  FROM Doctors 
 WHERE Doctor_Id IN (SELECT Doctor_Id
                FROM Doctors_Statics
               WHERE The_averge_of_salary > 4000)



SELECT COUNT(Doctor_Id)
  FROM Doctors 

SELECT Doctor_Id, patient_ID
  FROM Doctors_Schedule
 GROUP BY Date_of_Surgery


SELECT first_Name
FROM Doctors
FULL OUTER JOIN Doctors_Schedule
ON Doctors.Doctor_ID = Doctors_Schedule.Doctor_ID
WHERE first_Name=112207;


	INSERT INTO Doctors (Doctor_ID ,first_Name ,last_Name ,Phone_Number ,Specialization)
VALUES (112206,'Shawn','Murphy',01559898123,'Pediatric Surgery');

INSERT INTO Patient (Patient_ID ,first_Name ,last_Name ,Phone_Number ,Medical_Case)
VALUES (110006,'Mohamed','Hesham',01559872336,'Colon problem');

INSERT INTO Doctors_Statics (Doctor_ID ,The_averge_of_surgery_per_week ,The_averge_of_salary)
VALUES (112206,2,8000.00);

INSERT INTO Doctors_Schedule(Doctor_ID ,patient_ID ,Date_of_Surgery)
VALUES (112201,110005,2020-12-12);

	INSERT INTO Doctors (Doctor_ID ,first_Name ,last_Name ,Phone_Number ,Specialization)
VALUES (112207,'luke','cage',01559802913,'Pediatric Surgery');

UPDATE Doctors
   SET Phone_Number =01027626376

   UPDATE Doctors
   set last_Name= last_name
    
	UPDATE Doctors
	set first_Name=last_Name
	
	UPDATE Patient
	set first_Name=last_Name
	
	update Patient
	set last_Name=first_Name


	DELETE Doctors
 WHERE Doctor_ID = 112205

 DELETE Doctors
 WHERE first_Name = 'shawn'

 DELETE Doctors
 WHERE Doctor_ID = 112207

 DELETE Doctors_Schedule
 WHERE Date_of_Surgery = 2020-09-09

