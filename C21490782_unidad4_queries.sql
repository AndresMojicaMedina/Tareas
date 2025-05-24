-- Modificación de Tablas (DDL)
-- ===========================================

-- Agregar columna Email a Profesores
ALTER TABLE Profesores 
ADD COLUMN Email VARCHAR(100);

-- Agregar columna IDCampus a Cursos
ALTER TABLE Cursos 
ADD COLUMN IDCampus INT;

-- Agregar columna IDCarrera a Estudiantes
ALTER TABLE Estudiantes 
ADD COLUMN IDCarrera INT;

-- Relaciones Foráneas y Constraints
-- ===========================================

-- Crear relación foránea entre Cursos e Campus
ALTER TABLE Cursos
ADD CONSTRAINT fk_cursos_campus
FOREIGN KEY (IDCampus) REFERENCES Campus(IDCampus);

-- Crear relación foránea entre Estudiantes y Carreras
ALTER TABLE Estudiantes
ADD CONSTRAINT fk_estudiante_carrera
FOREIGN KEY (IDCarrera) REFERENCES Carreras(IDCarrera);

-- Actualización de Datos en Estudiantes (Asignar IDCarrera)
-- ===========================================

UPDATE Estudiantes SET IDCarrera = 1 WHERE IDEstudiante = 1;
UPDATE Estudiantes SET IDCarrera = 2 WHERE IDEstudiante = 2;
UPDATE Estudiantes SET IDCarrera = 3 WHERE IDEstudiante = 3;
UPDATE Estudiantes SET IDCarrera = 4 WHERE IDEstudiante = 4;
UPDATE Estudiantes SET IDCarrera = 5 WHERE IDEstudiante = 5;
UPDATE Estudiantes SET IDCarrera = 6 WHERE IDEstudiante = 6;
UPDATE Estudiantes SET IDCarrera = 7 WHERE IDEstudiante = 7;
UPDATE Estudiantes SET IDCarrera = 8 WHERE IDEstudiante = 8;
UPDATE Estudiantes SET IDCarrera = 9 WHERE IDEstudiante = 9;
UPDATE Estudiantes SET IDCarrera = 10 WHERE IDEstudiante = 10;
UPDATE Estudiantes SET IDCarrera = 11 WHERE IDEstudiante = 11;
UPDATE Estudiantes SET IDCarrera = 12 WHERE IDEstudiante = 12;
UPDATE Estudiantes SET IDCarrera = 13 WHERE IDEstudiante = 13;
UPDATE Estudiantes SET IDCarrera = 14 WHERE IDEstudiante = 14;
UPDATE Estudiantes SET IDCarrera = 15 WHERE IDEstudiante = 15;

-- Eliminación de Columnas y Tablas
-- ===========================================

-- Eliminar columna Ciudad de Estudiantes
ALTER TABLE Estudiantes 
DROP COLUMN Ciudad;

-- Eliminar tabla Aulas si existe
DROP TABLE Aulas;

-- Consultas Específicas
-- ===========================================

-- 1. Selección Básica
SELECT Nombre, Apellido
FROM Estudiantes;

-- 2. Cláusula WHERE
SELECT NombreCurso
FROM Cursos
WHERE Creditos =5;

-- 3. INNER JOIN: Estudiantes y Cursos inscritos
SELECT e.Nombre AS NombreEstudiante, c.NombreCurso
FROM Inscripciones i
JOIN Estudiantes e ON i.IDEstudiante = e.IDEstudiante
JOIN Cursos c ON i.IDCurso = c.IDCurso;

-- 4. LEFT JOIN: Estudiantes con sus cursos o NULL
SELECT e.Nombre AS NombreEstudiante, c.NombreCurso
FROM Estudiantes e
LEFT JOIN Inscripciones i ON e.IDEstudiante = i.IDEstudiante
LEFT JOIN Cursos c ON i.IDCurso = c.IDCurso;

-- 5. RIGHT JOIN: Cursos con estudiantes o NULL
SELECT c.NombreCurso, e.Nombre AS NombreEstudiante
FROM Cursos c
LEFT JOIN Inscripciones i ON c.IDCurso = i.IDCurso
LEFT JOIN Estudiantes e ON i.IDEstudiante = e.IDEstudiante;

-- 6. GROUP BY y COUNT: Estudiantes por curso
SELECT c.NombreCurso, COUNT(i.IDEstudiante) AS TotalEstudiantes
FROM Cursos c
LEFT JOIN Inscripciones i ON c.IDCurso = i.IDCurso
GROUP BY c.NombreCurso;

-- 7. BETWEEN: Estudiantes nacidos entre 1995 y 1998
SELECT Nombre, Apellido, FechaNacimiento
FROM Estudiantes
WHERE FechaNacimiento BETWEEN '2000-07-19' AND '2002-05-14';

-- 8. ORDER BY: Cursos ordenados alfabéticamente
SELECT *
FROM Cursos
ORDER BY NombreCurso ASC;

-- 9. CTE: Top 3 estudiantes con más inscripciones
WITH InscripcionesPorEstudiante AS (
    SELECT e.IDEstudiante, e.Nombre, COUNT(i.IDCurso) AS TotalInscripciones
    FROM Estudiantes e
    JOIN Inscripciones i ON e.IDEstudiante = i.IDEstudiante
    GROUP BY e.IDEstudiante, e.Nombre
)
SELECT *
FROM InscripcionesPorEstudiante
ORDER BY TotalInscripciones DESC
LIMIT 3;

-- 10. Consulta Compleja 1: Curso más inscrito por departamento
WITH Conteo AS (
    SELECT 
        d.IDDepartamento, 
        d.NombreDepartamento, 
        c.IDCurso, 
        c.NombreCurso, 
        COUNT(i.IDEstudiante)::INT AS TotalInscritos
    FROM Departamentos d
    JOIN Profesores p ON d.IDDepartamento = p.IDDepartamento
    JOIN Cursos c ON p.IDProfesor = c.IDProfesor
    LEFT JOIN Inscripciones i ON c.IDCurso = i.IDCurso
    GROUP BY d.IDDepartamento, d.NombreDepartamento, c.IDCurso, c.NombreCurso
),
Maximo AS (
    SELECT IDDepartamento, MAX(TotalInscritos) AS MaxInscritos
    FROM Conteo
    GROUP BY IDDepartamento
)
SELECT c.NombreDepartamento, c.NombreCurso, c.TotalInscritos
FROM Conteo c
JOIN Maximo m ON c.IDDepartamento = m.IDDepartamento AND c.TotalInscritos = m.MaxInscritos;

-- 11. Consulta Compleja 2: Profesores con más de 2 cursos
SELECT 
    p.Nombre,
    p.Apellido,
    COUNT(c.IDCurso) AS TotalCursos
FROM Profesores p
JOIN Cursos c ON p.IDProfesor = c.IDProfesor
GROUP BY p.IDProfesor, p.Nombre, p.Apellido
HAVING COUNT(c.IDCurso) > 2;

-- 12. Consulta Compleja 3: Curso con mejor promedio por programa
WITH Promedios AS (
    SELECT pe.IDPrograma, pe.NombrePrograma, c.IDCurso, c.NombreCurso, ROUND(AVG(i.Calificacion), 2) AS Promedio
    FROM ProgramasEstudio pe
    JOIN ProgramasCursos pc ON pe.IDPrograma = pc.IDPrograma
    JOIN Cursos c ON pc.IDCurso = c.IDCurso
    JOIN Inscripciones i ON c.IDCurso = i.IDCurso
    GROUP BY pe.IDPrograma, pe.NombrePrograma, c.IDCurso, c.NombreCurso
),
Maximos AS (
    SELECT IDPrograma, MAX(Promedio) AS MaxProm
    FROM Promedios
    GROUP BY IDPrograma
)
SELECT p.NombrePrograma, p.NombreCurso, p.Promedio
FROM Promedios p
JOIN Maximos m ON p.IDPrograma = m.IDPrograma AND p.Promedio = m.MaxProm;
