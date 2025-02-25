CREATE PROCEDURE [dbo].[GetFeatureTools]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[FeatureToolId],
			[ImagePath],
			[Title],
			[Description],
			[Link],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [FeatureTools];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
