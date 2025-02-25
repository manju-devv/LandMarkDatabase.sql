CREATE TABLE [dbo].[FeatureTools]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[FeatureToolId] INT,
	[ImagePath] NVARCHAR(450) NOT NULL,
	[Title] NVARCHAR(30) NOT NULL,
	[Description] NVARCHAR(60) NOT NULL,
	[Link] NVARCHAR(30),
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_FeatureTools_FeatureToolId] FOREIGN KEY ([FeatureToolId]) REFERENCES [dbo].[Features]([ID]),
	CONSTRAINT [FK_FeaturesTools_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_FeaturesTools_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id])
)
Go
