CREATE PROCEDURE [dbo].[GetMenuBar]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[Title],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [MenuBar];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
