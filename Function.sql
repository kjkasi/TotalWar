CREATE FUNCTION ListEnemes (@UnitID int)
	RETURNS @Enemies TABLE	(
							Name	varchar(200),
							Attack	int,
							Defence	int,
							Health	int,
							X		int,
							Y		int
							)
AS
	BEGIN
		DECLARE	@X int, @Y int, @UserID int
		
		SELECT	@UserID = ID
		FROM	Players
		WHERE	Name = CURRENT_USER
		
		SELECT	@X = X,
				@Y = Y
		FROM	Units
		WHERE	ID = @UnitID AND PlayerID = @UserID
		
		INSERT	
		INTO	@Enemies (Name, Attack, Defence, X, Y)
		
		SELECT	Name, Attack, Defence, X, Y
		FROM	Units
		WHERE	PlayerID <>	@UserID
			AND	ABS(X - @X) + ABS(Y - @Y) = 1
			
		RETURN
	END
GO

SELECT	*
FROM ListEnemes(1)
GO