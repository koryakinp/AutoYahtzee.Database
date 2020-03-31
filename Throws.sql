CREATE TABLE [dbo].[Throws]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [DateCreated] DATETIME NOT NULL DEFAULT GETUTCDATE(), 
    [Result] VARCHAR(10) NULL, 
    [ExperimentId] UNIQUEIDENTIFIER NULL, 
    [VideoUrl] VARCHAR(MAX) NULL, 
    [ImageUrl] VARCHAR(MAX) NULL, 
    [VideoProcessedDate] DATETIME NULL, 
    [ImageProcessedDate] DATETIME NULL, 
    [ResultProcessedDate] DATETIME NULL, 
    CONSTRAINT [FK_Throws_ToTableExperiments] FOREIGN KEY ([ExperimentId]) REFERENCES [Experiments]([Id])
)
