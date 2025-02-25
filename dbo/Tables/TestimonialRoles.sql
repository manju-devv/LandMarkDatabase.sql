CREATE TABLE [dbo].[TestimonialRoles]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[TestimonialId] INT,
	[Description] NVARCHAR(80) NOT NULL,
	[Name] NVARCHAR(30) NOT NULL,
	[Role] NVARCHAR(25) NOT NULL,
	[UserImage] NVARCHAR(300) NOT NULL,
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_TestimonialRoles_TestimonialId] FOREIGN KEY ([TestimonialId]) REFERENCES [dbo].[Testimonials]([ID]),
	CONSTRAINT [FK_TestimonialRoles_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_TestimonialRoles_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id])
)
GO
