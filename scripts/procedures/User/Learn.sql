CREATE PROCEDURE SPAuthUsuario
  @UserName VARCHAR(15)
AS 
BEGIN
  
  IF (
      @UserName != '' AND @UserPassword != ''
      )
  BEGIN
      IF EXISTS (SELECT * FROM Usuario WHERE UserName = @UserName)
      BEGIN
       SELECT * FROM Usuario WHERE UserName = @UserName
      END
      ELSE
        SET @Status = -3
  END
  ELSE
    SET @Status = -1
  
END;
