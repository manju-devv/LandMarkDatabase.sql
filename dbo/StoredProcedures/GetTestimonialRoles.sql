CREATE PROCEDURE [dbo].[GetTestimonialRoles]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[TestimonialId],
			[Description],
			[Name],
			[Role],
			[UserImage],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [TestimonialRoles];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
