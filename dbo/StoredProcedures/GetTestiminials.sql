CREATE PROCEDURE [dbo].[GetTestimonials]
AS
BEGIN
	BEGIN TRY
		SELECT 
			[ID],
			[Heading],
			[Title],
			[Description],
			[CreatedBy],
			[CreatedDay],
			[CreatedTime],
			[UpdatedBy],
			[UpdatedAt]
		FROM [Testimonials];
	END TRY
	BEGIN CATCH
		PRINT 'ERROR ' + ERROR_MESSAGE();
	END CATCH
END;
