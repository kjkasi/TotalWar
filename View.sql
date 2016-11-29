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