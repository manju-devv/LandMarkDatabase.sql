CREATE PROCEDURE [dbo].[GetFooter]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[Heading],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [Footer];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
