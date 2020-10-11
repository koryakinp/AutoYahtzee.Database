CREATE PROCEDURE [dbo].[GetYahtzees]
AS
BEGIN
	SELECT p.ThrowId, p.Prediction, t.DateCreated
	FROM Throws t WITH(NOLOCK)
	JOIN Predictions p WITH(NOLOCK) ON t.Id = p.ThrowId
	WHERE t.IsYahtzee = 1
END
