CREATE PROCEDURE [dbo].[GetFeatures]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[Title],
			[Description],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [Features];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
