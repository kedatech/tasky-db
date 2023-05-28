CREATE PROCEDURE SPLearnUsuario
  @UserName VARCHAR(15)
AS 
BEGIN
  DECLARE @respuesta INT;
  IF (
      @UserName != ''
      )
  BEGIN
      IF EXISTS (SELECT * FROM Usuario WHERE UserName = @UserName)
      BEGIN
       SELECT * FROM Usuario WHERE UserName = @UserName
      END
      ELSE
        SET @respuesta = -3
  END
  ELSE
    SET @respuesta = -1
    
    SELECT @respuesta as respuesta
END;
