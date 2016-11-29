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