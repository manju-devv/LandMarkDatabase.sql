CREATE PROCEDURE [dbo].[GetFooterDetails]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[DetailsID],
			[Policies],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [FooterDetails];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
