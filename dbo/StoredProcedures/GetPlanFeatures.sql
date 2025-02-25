CREATE PROCEDURE [dbo].[GetPlanFeatures]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[PlanFeatureID],
			[Description],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [PlanFeatures];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
