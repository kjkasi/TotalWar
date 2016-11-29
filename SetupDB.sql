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
	Health  int NOT NULL
)
GO