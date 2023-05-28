CREATE PROCEDURE SPChangePassword
  @UserName VARCHAR(15),
  @UserPassword VARCHAR(15),
  @NewPassword VARCHAR(15)
AS 
BEGIN
  Declare @respuesta int;
  IF (
      @UserName != '' AND @UserPassword != '' AND @NewPassword != ''
      )
  BEGIN
      IF EXISTS (SELECT * FROM Usuario WHERE UserName = @UserName)
      BEGIN
        IF EXISTS (SELECT * FROM Usuario WHERE UserName = @UserName AND UserPassword = @UserPassword)
        BEGIN
          SET @respuesta = 0

          UPDATE Usuario
          SET UserPassword = @NewPassword
          WHERE UserName = @UserName;
          
        END
        ELSE
          SET @respuesta =  -4
      END
      ELSE
        SET @respuesta =  -3
  END
  ELSE
    SET @respuesta =  -1
  
  SELECT @respuesta AS respuesta
END;
