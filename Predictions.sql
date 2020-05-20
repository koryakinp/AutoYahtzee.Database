CREATE TABLE [dbo].[Predictions]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY , 
    [ThrowId] UNIQUEIDENTIFIER NOT NULL, 
    [Prediction] TINYINT NOT NULL, 
    [Confidence] FLOAT NOT NULL, 
    CONSTRAINT [FK_Predictions_ToTableThrows] FOREIGN KEY ([ThrowId]) REFERENCES [Throws]([Id])
)
