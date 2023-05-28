CREATE DATABASE BDTasky
go
USE BDTasky
go

CREATE TABLE Tema(
  Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Nombre VARCHAR(15) NOT NULL,
  PrimaryColor VARCHAR(20) NOT NULL,
  SecondColor VARCHAR(20) NOT NULL,
  TextColor VARCHAR(20) NOT NULL
);

CREATE TABLE Usuario(
  Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  UserName VARCHAR(15) NOT NULL,
  UserPassword VARCHAR(15) NOT NULL,
  Nombre VARCHAR(60) NULL,
  IdTema INT NULL FOREIGN KEY REFERENCES Tema(Id)
);

CREATE TABLE Tareas(
  Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Titulo VARCHAR(100) NOT NULL,
  Descripcion VARCHAR(200) NOT NULL,
  Completada BIT NOT NULL DEFAULT 0,
);

