CREATE PROCEDURE SPAuthUsuario
  @UserName VARCHAR(15),
  @UserPassword VARCHAR(15)
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
          SELECT Status = 100
        END
        ELSE
          SELECT Status = -4
      END
      ELSE
        SELECT Status = -3
  END
  ELSE
    SELECT Status = -1
  
END;
