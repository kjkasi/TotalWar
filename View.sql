USE TotalWar
GO

CREATE VIEW MyUnits
	AS
		SELECT	*
		FROM	Units
		WHERE	PlayerID = (
							SELECT ID
							FROM Players
							WHERE Name = CURRENT_USER
							)
GO

SELECT *
FROM MyUnits
GO

CREATE VIEW MyInfo
	AS
		SELECT *
		FROM Players
		WHERE Name = CURRENT_USER
GO

SELECT *
FROM MyInfo
GO


CREATE VIEW MyTavern
	AS
		SELECT *
		FROM Tavern
		WHERE Price <= (
						SELECT Balance
						FROM Players
						WHERE Name = CURRENT_USER
						)