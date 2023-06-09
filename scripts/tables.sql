CREATE DATABASE BDTasky;
GO
USE BDTasky;
GO

CREATE TABLE Tema(
  Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Nombre VARCHAR(15) NOT NULL,
  PrimaryColor VARCHAR(20) NOT NULL,
  SecondColor VARCHAR(20) NOT NULL,
  TextColor VARCHAR(20) NOT NULL,
  IdUsuario INT NULL
);

CREATE TABLE Usuario(
  Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  UserName VARCHAR(15) NOT NULL UNIQUE,
  UserPassword VARCHAR(15) NOT NULL,
  Nombre VARCHAR(60) NULL,
  IdTema INT NULL
);

CREATE TABLE Tareas(
  Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Titulo VARCHAR(100) NOT NULL,
  Descripcion VARCHAR(200) NOT NULL,
  Completada BIT NOT NULL DEFAULT 0,
  IdUsuario INT NOT NULL
);

ALTER TABLE Tema
ADD CONSTRAINT FK_Tema_Usuario
FOREIGN KEY (IdUsuario)
REFERENCES Usuario (Id);

ALTER TABLE Usuario
ADD CONSTRAINT FK_Usuario_Tema
FOREIGN KEY (IdTema)
REFERENCES Tema (Id);

ALTER TABLE Tareas
ADD CONSTRAINT FK_Tareas_Usuario
FOREIGN KEY (IdUsuario)
REFERENCES Usuario (Id);
