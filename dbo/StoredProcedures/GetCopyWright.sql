CREATE PROCEDURE [dbo].[GetCopyWright]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[DistributedBy],
			[Rights],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [CopyWright];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
