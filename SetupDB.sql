CREATE DATABASE TotalWar
GO

USE TotalWar
GO

CREATE TABLE Units
(
	ID int NOT NULL IDENTITY,
	Name varchar(50) NOT NULL,
	Attack int NOT NULL,
	Defence int NOT NULL,
	Health  int NOT NULL,
)
GO

ALTER TABLE Units ADD
	CONSTRAINT PK_Units PRIMARY KEY(ID)
GO

CREATE TABLE Players
(
	ID int NOT NULL IDENTITY,
	Name varchar(50) NOT NULL,
)
GO

ALTER TABLE Players ADD
	CONSTRAINT PK_Players PRIMARY KEY(ID)
GO

INSERT Players
(Name)
VALUES
('test1'),
('test2');
GO

ALTER TABLE Units
	ALTER COLUMN
	PlayerID int NOT NULL
GO

ALTER TABLE Units ADD
	CONSTRAINT FK_Units_Players FOREIGN KEY(PlayerID)
	REFERENCES Players(ID)
GO

INSERT Units
(Name, Attack, Defence, Health, PlayerID)
VALUES
('Unit1', 10, 10, 100, 1),
('Unit2', 10, 10, 100, 1),
('Unit3', 10, 10, 100, 2),
('Unit4', 10, 10, 100, 2);
GO

ALTER TABLE Players
ADD Balance money NOT NULL DEFAULT(100)
GO

CREATE TABLE Tavern
(
	ID int NOT NULL IDENTITY,
	Name varchar(50) NOT NULL,
	Price money NOT NULL,
	Attack int NOT NULL,
	Defence int NOT NULL,
	Health int NOT NULL
)
GO

INSERT Tavern
(Name, Price, Attack, Defence, Health)
VALUES
('Cat', 50, 10, 10, 100),
('Dog', 50, 10, 10, 100),
('Cow', 50, 10, 10, 100),
('Sheep', 50, 10, 10, 100);
GO

ALTER TABLE Tavern
ADD Quantity int NOT NULL DEFAULT(10)
GO

ALTER TABLE Units
ADD X int, Y int 
GO

SELECT *
FROM MyUnits
GO

