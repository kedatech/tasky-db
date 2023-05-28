CREATE PROCEDURE SPChageConfig
  @Id INT,
  @UserPassword VARCHAR(15),
  @Nombre VARCHAR(60),
  @IdTema INT
AS 
BEGIN
  Declare @respuesta int;
  IF (
      @Nombre != '' AND @UserPassword != '' AND @UserPassword != '' AND @ID IS NOT NULL
      )
  BEGIN
      IF EXISTS (SELECT * FROM Usuario WHERE Id = @Id)
      BEGIN
        IF NOT EXISTS (SELECT * FROM Usuario WHERE UserName = @UserName AND Id <> @Id)
        BEGIN
          UPDATE Usuario
          SET UserName = @UserName, UserPassword = @UserPassword, Nombre = @Nombre, IdTema = @IdTema
          WHERE Id = @Id
          SET @respuesta = 0
        END
        ELSE
          SET @respuesta =  -2
      END
      ELSE
        SET @respuesta =  -3
  END
  ELSE
    SET @respuesta =  -1
  
  SELECT @respuesta AS respuesta
END;
