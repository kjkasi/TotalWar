BEGIN TRANSACTION
	DELETE FROM Players
	SELECT * FROM Players
	ROLLBACK