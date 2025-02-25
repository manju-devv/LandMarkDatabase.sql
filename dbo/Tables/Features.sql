CREATE TABLE [dbo].[Features]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Title] NVARCHAR(50) NOT NULL UNIQUE,
	[Description] NVARCHAR(50) NOT NULL,
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_Features_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_Features_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id])
)
GO
