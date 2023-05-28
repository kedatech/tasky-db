CREATE PROCEDURE SPCreateTema
  @Nombre VARCHAR(15),
  @PrimaryColor VARCHAR(20),
  @SecondColor VARCHAR(20),
  @TextColor VARCHAR(20),
  @IdUsuario INT
AS 
BEGIN
  IF (@Nombre != '' AND @PrimaryColor != '' AND @SecondColor != '' AND @TextColor != '')
  BEGIN
    INSERT INTO Tema (Nombre, PrimaryColor, SecondColor, TextColor, IdUsuario) 
    VALUES (@Nombre, @PrimaryColor, @SecondColor, @TextColor, @IdUsuario)
  END
  ELSE
    RETURN -1
END;
