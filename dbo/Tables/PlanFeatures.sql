CREATE TABLE [dbo].[PlanFeatures]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[PlanFeatureID] Int NOT NULL,
	[Description] VARCHAR(50) NOT NULL,
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_PlanFeatures_PriceID] FOREIGN KEY ([PlanFeatureID]) REFERENCES [dbo].[PricePlan]([ID]),
	CONSTRAINT [FK_PlanFeatures_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_PlanFeatures_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id])
)
GO
