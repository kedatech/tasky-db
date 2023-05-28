Create Procedure SPCreateUsuario
  @UserName VARCHAR(15),
  @UserPassword VARCHAR(15),
  @Nombre VARCHAR(60)
AS 
BEGIN
  Declare @respuesta int;
  IF (
      @Nombre != '' AND  @UserPassword != '' AND @UserName != '' 
      )
      BEGIN
          IF (
          NOT EXISTS(SELECT * FROM Usuario WHERE UserName = @UserName)
          )
          BEGIN
            INSERT INTO Usuario (UserName, UserPassword, Nombre) 
            VALUES (@UserName, @UserPassword, @Nombre)
            SET @respuesta = 0

          END
          ELSE
            SET @respuesta = -2
      END
  ELSE
     SET @respuesta = -1

  SELECT @respuesta AS respuesta
END;