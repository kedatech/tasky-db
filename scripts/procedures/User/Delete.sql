Create Procedure SPDeleteUsuario
  @UserName VARCHAR(15),
  @UserPassword VARCHAR(15)
AS 
BEGIN
  Declare @respuesta int;
  IF (
      @UserPassword != '' AND @UserName != '' 
      )
      BEGIN
          IF (
          EXISTS(SELECT * FROM Usuario WHERE UserName = @UserName and UserPassword = @UserPassword)
          )
          BEGIN
            DELETE FROM Usuario WHERE UserName = @UserName
            SET @respuesta = 0
          END
          ELSE
            SET @respuesta = -2
      END
  ELSE
     SET @respuesta = -1

  SELECT @respuesta AS respuesta
END;