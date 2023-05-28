CREATE PROCEDURE SPLearnUsuario
  @UserName VARCHAR(15)
AS 
BEGIN
  DECLARE @respuesta INT;
  IF (
      @UserName != ''
      )
  BEGIN
      SELECT * FROM Usuario WHERE UserName = @UserName

  END;
END;
