CREATE TABLE [dbo].[CopyWright]
(
	[ID] INT IDENTITY(1,1) PRIMARY KEY,
	[DistributedBy] NVARCHAR(20) NOT NULL,
	[Rights] NVARCHAR(20) NOT NULL,
	[CreatedBy] INT,
	[CreatedDay] DATETIME,
	[CreatedTime] TIME,
	[UpdatedBy] INT,
	[UpdatedAt] TIME,
	CONSTRAINT [FK_CopyWright_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
	CONSTRAINT [FK_CopyWright_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id])
)
GO
