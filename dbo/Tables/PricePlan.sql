CREATE TABLE [dbo].[PricePlan]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[PriceId] INT FOREIGN KEY REFERENCES Price(ID),
	[Title] NVARCHAR(20) NOT NULL,
	[Cost] VARCHAR(10) NOT NULL,
	[PlanDetails] NVARCHAR(200),
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_PricePlan_PriceID] FOREIGN KEY ([PriceId]) REFERENCES [dbo].[Price]([ID]),
	CONSTRAINT [FK_PricePlan_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_PricePlan_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id])
)
GO
