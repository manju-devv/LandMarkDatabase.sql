CREATE TABLE [dbo].[Price]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Title] NVARCHAR(20) NOT NULL,
	[Description] NVARCHAR(40) NOT NULL,
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_Price_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_Price_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id])
)
GO
