CREATE PROCEDURE SPAuthUsuario
  @UserName VARCHAR(15),
  @UserPassword VARCHAR(15),
  @Status INT OUTPUT
AS 
BEGIN
  
  IF (
      @UserName != '' AND @UserPassword != ''
      )
  BEGIN
      IF EXISTS (SELECT * FROM Usuario WHERE UserName = @UserName)
      BEGIN
        IF EXISTS (SELECT * FROM Usuario WHERE UserName = @UserName AND UserPassword = @UserPassword)
        BEGIN
          SET @Status = 100
        END
        ELSE
          SET @Status = -4
      END
      ELSE
        SET @Status = -3
  END
  ELSE
    SET @Status = -1
  
END;
