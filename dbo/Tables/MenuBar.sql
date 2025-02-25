CREATE TABLE [dbo].[MenuBar]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Title] NVARCHAR(30) NOT NULL UNIQUE,
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_MenuBar_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_MenuBar_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id])
)
GO
