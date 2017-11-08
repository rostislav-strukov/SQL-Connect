USE master
DROP DATABASE StorageDB
CREATE DATABASE StorageDB
ON
(
	NAME = 'StorageDB',
	FILENAME = 'E:\Programming\BE\SQL\CyberBionic\Essential\Lesson_1\DB\StorageDB.mdf',
	SIZE = 10MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB
)
LOG ON
(
	NAME = 'StorageDB_log',
	FILENAME = 'E:\Programming\BE\SQL\CyberBionic\Essential\Lesson_1\DB\StorageDB.ldf',
	SIZE = 5MB,
	MAXSIZE = 25MB,
	FILEGROWTH = 5MB
)
COLLATE Cyrillic_General_CI_AS
EXECUTE sp_helpdb StorageDB;
GO

DROP TABLE Emploóees
CREATE TABLE Emploóees
(
	EmployeeID int IDENTITY NOT NULL PRIMARY KEY, 
	FName varchar(30) NOT NULL,
	LName varchar(30) NOT NULL,
	TelNumber char (12) UNIQUE CHECK (TelNumber LIKE '([0-9][0-9][0-9])[0-9][0-9][0-9][0-9][0-9][0-9][0-9]') NOT NULL

)
GO

DROP TABLE EmployeesStatus
CREATE TABLE EmployeesStatus
(
	LineID int IDENTITY,
	Salary money NOT NULL,
	Position varchar(40)
)
GO

DROP TABLE EmployeesInfo
CREATE TABLE EmployeesInfo
(	
	LineID int IDENTITY,
	MaritalStatus varchar(60) NULL,
	DateBrith date NULL,
	PlaceBirth varchar(70) NULL
)
GO

INSERT INTO Emploóees
VALUES
('Jack', 'Daniels', '(095)8583322'),
('Bob', 'Rjac', '(097)5525535'),
('Max', 'Konotovski', '(095)2586958');
GO

INSERT INTO EmployeesStatus
VALUES
('5000', 'Director'),
('3000', 'Manager'),
('2000', 'Worker')
GO

INSERT INTO EmployeesInfo
VALUES
('married', '01/05/1979', 'California'),
('single', '05/06/1987', 'Ayova'),
('married', '02/11/1985', 'Texas')
GO

SELECT*FROM Emploóees;
SELECT*FROM EmployeesStatus;
SELECT*FROM EmployeesInfo;