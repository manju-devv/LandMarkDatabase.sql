CREATE TABLE [dbo].[HomePage]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Title] NVARCHAR(80) NOT NULL UNIQUE,
	[Description] NVARCHAR(120) NOT NULL,
	[Button] NVARCHAR(30) NOT NULL,
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_HomePage_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_HomePage_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
)
GO
