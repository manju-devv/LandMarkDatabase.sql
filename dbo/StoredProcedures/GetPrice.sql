CREATE PROCEDURE [dbo].[GetPrice]
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
		FROM [Price];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
