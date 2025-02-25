CREATE PROCEDURE [dbo].[GetHomePage]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[Title],
			[Description],
			[Button],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [HomePage];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
