CREATE TRIGGER Battle
	ON	Units
	FOR	UPDATE
AS
	IF	UPDATE(X) OR UPDATE(Y)
		AND EXISTS	(
					SELECT		X, Y
					FROM		Units
					GROUP BY	X, Y
					HAVING		COUNT(*) > 1
					)
			PRINT	'Battele!'