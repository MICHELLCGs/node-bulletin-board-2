-- Crear la base de datos BulletinBoard
CREATE DATABASE BulletinBoard;
GO

-- Usar la base de datos BulletinBoard
USE BulletinBoard;
GO

-- Crear la tabla Events
CREATE TABLE Events (
  Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  Title NVARCHAR(50),
  Detail NVARCHAR(200),
  [Date] DATETIMEOFFSET,
  CreatedAt DATETIMEOFFSET NOT NULL DEFAULT SYSDATETIMEOFFSET(),  -- Usar la fecha y hora actual
  UpdatedAt DATETIMEOFFSET NOT NULL DEFAULT SYSDATETIMEOFFSET()   -- Usar la fecha y hora actual
);
GO

-- Insertar datos en la tabla Events
INSERT INTO Events (Title, Detail, [Date], CreatedAt, UpdatedAt) VALUES
(N'Docker for Beginners', N'Introduction to Docker using Node.js', '2017-11-21', SYSDATETIMEOFFSET(), SYSDATETIMEOFFSET()),
(N'Advanced Orchestration', N'Deep dive into Docker Swarm', '2017-12-25', SYSDATETIMEOFFSET(), SYSDATETIMEOFFSET()),
(N'Docker on Windows', N'From 101 to production', '2018-01-01', SYSDATETIMEOFFSET(), SYSDATETIMEOFFSET());
GO

-- Seleccionar todos los registros de la tabla Events
SELECT * FROM Events;
GO
