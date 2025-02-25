CREATE PROCEDURE [dbo].[GetUser]
AS
BEGIN
	SELECT 
		[Id],
		[UserName]
	FROM
		[User]
END;
