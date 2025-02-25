CREATE PROCEDURE [dbo].[GetPricePlan]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[PriceId],
			[Title],
			[Cost],
			[PlanDetails],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [PricePlan];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
