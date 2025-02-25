CREATE TABLE [dbo].[Testimonials]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Heading] NVARCHAR(60) NOT NULL,
	[Title] NVARCHAR(60) NOT NULL,
	[Description] NVARCHAR(250) NOT NULL,
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_Testimonials_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_Testimonials_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id])
)
GO