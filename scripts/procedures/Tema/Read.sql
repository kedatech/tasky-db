CREATE PROCEDURE SPReadTemas
@IdUsuario INT
AS 
BEGIN
  SELECT * FROM Tema WHERE (IdUsuario = @IdUsuario OR IdUsuario IS NULL)
END;
