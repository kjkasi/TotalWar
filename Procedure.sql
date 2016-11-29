CREATE PROCEDURE BuyUnit @UnitID int
	AS
		DECLARE @Balance money, @UnitPrice money, @PlayerID int
		
		SELECT	@Balance = Balance,
				@PlayerID = ID
		FROM	Players
		WHERE	Name = CURRENT_USER
		
		SELECT	@UnitPrice = Price
		FROM	Tavern
		WHERE	ID = @UnitID
		
		IF @Balance >= @UnitPrice
			BEGIN
				
				INSERT
				INTO Units(PlayerID, Name, Attack, Defence, Health)
					SELECT @PlayerID, Name, Attack, Defence, Health
					FROM Tavern
					WHERE ID = @UnitID
				
				UPDATE Players
				SET Balance = Balance - @UnitPrice
				WHERE ID = @PlayerID
				
				IF EXISTS (
							SELECT *
							FROM Tavern
							WHERE ID = @UnitID AND Quantity > 1
							)
					UPDATE	Tavern
					SET		Quantity = Quantity - 1
					WHERE	ID = @UnitID
				ELSE
					DELETE
					FROM	Tavern
					WHERE	ID = @UnitID
					
			END
GO

EXECUTE BuyUnit 2
GO

CREATE PROCEDURE Move @UnitID int, @Direction char
	AS
		DECLARE @UserID int
		SELECT	@UserID = ID
		FROM	Players
		WHERE Name = CURRENT_USER
		
		PRINT Current_User
		PRINT @UserID
		
		IF EXISTS	(
					SELECT * 
					FROM Units
					WHERE ID = @UnitID AND PlayerID = @UserID
					)
		BEGIN
			UPDATE	Units
			SET		X = CASE @Direction
						 WHEN 'W' THEN X - 1
						 WHEN 'E' THEN X + 1
						 ELSE X
					    END,
					Y = CASE @Direction
						 WHEN 'N' THEN Y + 1
						 WHEN 'S' THEN Y - 1
						 ELSE Y
					    END
			WHERE ID = @UnitID
			
			UPDATE	Units
			SET		X = 1
			WHERE	X < 1
			
			UPDATE	Units
			SET		Y = 1
			WHERE	Y < 1
			
			UPDATE	Units
			SET		X = 20
			WHERE	X > 20
			
			UPDATE	Units
			SET		Y = 20
			WHERE	Y > 20
		END
GO
					