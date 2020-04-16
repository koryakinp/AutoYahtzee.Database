CREATE TABLE [dbo].[Throws]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [DateCreated] DATETIME NOT NULL DEFAULT GETUTCDATE(), 
    [Result] VARCHAR(10) NULL, 
    [ExperimentId] UNIQUEIDENTIFIER NOT NULL, 
    [VideoUrl] VARCHAR(MAX) NULL, 
    [ImageUrl] VARCHAR(MAX) NULL, 
    [ResultProcessedDate] DATETIME NULL, 
	[ThrowNumber] INT IDENTITY(10000000,1) NOT NULL,
    CONSTRAINT [FK_Throws_ToTableExperiments] FOREIGN KEY ([ExperimentId]) REFERENCES [Experiments]([Id])
)
