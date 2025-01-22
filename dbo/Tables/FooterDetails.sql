CREATE TABLE [dbo].[FooterDetails]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[DetailsID] INT,
	[Policies] NVARCHAR(120) NOT NULL,
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_FooterDetails_DetailsID] FOREIGN KEY ([DetailsID]) REFERENCES [dbo].[Footer]([ID]),
	CONSTRAINT [FK_FooterDetails_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_FooterDetails_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id])
)
GO
