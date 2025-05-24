--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: aulas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: campus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.campus VALUES (1, 'Campus Central', 'Av. Principal 123');
INSERT INTO public.campus VALUES (2, 'Campus Norte', 'Calle Norte 456');
INSERT INTO public.campus VALUES (3, 'Campus Sur', 'Boulevard Sur 789');
INSERT INTO public.campus VALUES (4, 'Campus Este', 'Avenida Este 101');
INSERT INTO public.campus VALUES (5, 'Campus Oeste', 'Calle Oeste 202');
INSERT INTO public.campus VALUES (6, 'Campus Tecnológico', 'Camino Tech 303');
INSERT INTO public.campus VALUES (7, 'Campus Ciencias', 'Avenida Ciencia 404');
INSERT INTO public.campus VALUES (8, 'Campus Humanidades', 'Calle Cultura 505');
INSERT INTO public.campus VALUES (9, 'Campus Medicina', 'Boulevard Salud 606');
INSERT INTO public.campus VALUES (10, 'Campus Artes', 'Plaza Arte 707');
INSERT INTO public.campus VALUES (11, 'Campus Economía', 'Calle Finanzas 808');
INSERT INTO public.campus VALUES (12, 'Campus Derecho', 'Avenida Justicia 909');
INSERT INTO public.campus VALUES (13, 'Campus Ingeniería', 'Calle Ingeniería 110');
INSERT INTO public.campus VALUES (14, 'Campus Internacional', 'Camino Global 120');
INSERT INTO public.campus VALUES (15, 'Campus Virtual', 'Internet 130');


--
-- Data for Name: carreras; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carreras VALUES (1, 'Ingeniería en Sistemas Computacionales', 'Ingeniero en Sistemas Computacionales');
INSERT INTO public.carreras VALUES (2, 'Ingeniería Industrial', 'Ingeniero Industrial');
INSERT INTO public.carreras VALUES (3, 'Ingeniería Civil', 'Ingeniero Civil');
INSERT INTO public.carreras VALUES (4, 'Ingeniería Mecánica', 'Ingeniero Mecánico');
INSERT INTO public.carreras VALUES (5, 'Ingeniería Electrónica', 'Ingeniero Electrónico');
INSERT INTO public.carreras VALUES (6, 'Arquitectura', 'Arquitecto');
INSERT INTO public.carreras VALUES (7, 'Contaduría Pública', 'Contador Público');
INSERT INTO public.carreras VALUES (8, 'Administración de Empresas', 'Licenciado en Administración de Empresas');
INSERT INTO public.carreras VALUES (9, 'Derecho', 'Licenciado en Derecho');
INSERT INTO public.carreras VALUES (10, 'Medicina', 'Médico Cirujano');
INSERT INTO public.carreras VALUES (11, 'Enfermería', 'Licenciado en Enfermería');
INSERT INTO public.carreras VALUES (12, 'Psicología', 'Licenciado en Psicología');
INSERT INTO public.carreras VALUES (13, 'Diseño Gráfico', 'Licenciado en Diseño Gráfico');
INSERT INTO public.carreras VALUES (14, 'Ciencias de la Comunicación', 'Licenciado en Ciencias de la Comunicación');
INSERT INTO public.carreras VALUES (15, 'Ingeniería Ambiental', 'Ingeniero Ambiental');


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departamentos VALUES (1, 'Ingeniería', 'A');
INSERT INTO public.departamentos VALUES (2, 'Ciencias Sociales', 'B');
INSERT INTO public.departamentos VALUES (3, 'Negocios', 'C');
INSERT INTO public.departamentos VALUES (4, 'Matemáticas', 'D');
INSERT INTO public.departamentos VALUES (5, 'Biología', 'E');
INSERT INTO public.departamentos VALUES (6, 'Física', 'F');
INSERT INTO public.departamentos VALUES (7, 'Química', 'G');
INSERT INTO public.departamentos VALUES (8, 'Historia', 'H');
INSERT INTO public.departamentos VALUES (9, 'Filosofía', 'I');
INSERT INTO public.departamentos VALUES (10, 'Psicología', 'J');
INSERT INTO public.departamentos VALUES (11, 'Educación', 'K');
INSERT INTO public.departamentos VALUES (12, 'Literatura', 'L');
INSERT INTO public.departamentos VALUES (13, 'Arte', 'M');
INSERT INTO public.departamentos VALUES (14, 'Música', 'N');
INSERT INTO public.departamentos VALUES (15, 'Derecho', 'O');
INSERT INTO public.departamentos VALUES (18, 'Humanidades', NULL);
INSERT INTO public.departamentos VALUES (19, 'Administración de Empresas', NULL);
INSERT INTO public.departamentos VALUES (20, 'Diseño Gráfico', NULL);
INSERT INTO public.departamentos VALUES (16, 'Ingeniería', NULL);
INSERT INTO public.departamentos VALUES (17, 'Humanidades', NULL);
INSERT INTO public.departamentos VALUES (50, 'Ingeniería', NULL);
INSERT INTO public.departamentos VALUES (51, 'Ciencias Sociales', NULL);


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cursos VALUES (1, 'Matemáticas I', 'Curso básico de matemáticas', 5, '1', 1, 1, NULL);
INSERT INTO public.cursos VALUES (2, 'Física I', 'Curso básico de física', 5, '1', 2, 2, NULL);
INSERT INTO public.cursos VALUES (3, 'Química General', 'Introducción a la química', 5, '1', 3, 3, NULL);
INSERT INTO public.cursos VALUES (4, 'Programación I', 'Introducción a la programación', 6, '1', 4, 4, NULL);
INSERT INTO public.cursos VALUES (5, 'Electrónica Básica', 'Fundamentos de electrónica', 5, '2', 5, 5, NULL);
INSERT INTO public.cursos VALUES (6, 'Historia Universal', 'Estudio de la historia mundial', 4, '2', 6, 6, NULL);
INSERT INTO public.cursos VALUES (7, 'Contabilidad I', 'Principios contables', 5, '1', 7, 7, NULL);
INSERT INTO public.cursos VALUES (8, 'Marketing', 'Fundamentos de marketing', 5, '2', 8, 8, NULL);
INSERT INTO public.cursos VALUES (9, 'Derecho Constitucional', 'Estudio de la constitución', 4, '3', 9, 9, NULL);
INSERT INTO public.cursos VALUES (10, 'Anatomía Humana', 'Estudio del cuerpo humano', 6, '1', 10, 10, NULL);
INSERT INTO public.cursos VALUES (11, 'Psicología General', 'Introducción a la psicología', 5, '1', 11, 11, NULL);
INSERT INTO public.cursos VALUES (12, 'Diseño Gráfico', 'Fundamentos del diseño', 5, '2', 12, 12, NULL);
INSERT INTO public.cursos VALUES (13, 'Economía I', 'Principios económicos', 5, '1', 13, 13, NULL);
INSERT INTO public.cursos VALUES (14, 'Ingeniería de Software', 'Desarrollo de software', 6, '3', 14, 14, NULL);
INSERT INTO public.cursos VALUES (15, 'Educación Virtual', 'Herramientas de educación en línea', 4, '2', 15, 15, NULL);
INSERT INTO public.cursos VALUES (21, 'Física I', NULL, 2, NULL, NULL, 1, 21);
INSERT INTO public.cursos VALUES (22, 'Literatura Clásica', NULL, 3, NULL, NULL, 2, 22);
INSERT INTO public.cursos VALUES (23, 'Psicología General', NULL, 5, NULL, NULL, 3, 23);
INSERT INTO public.cursos VALUES (24, 'Estructuras de Datos', NULL, 3, NULL, NULL, 4, 24);
INSERT INTO public.cursos VALUES (25, 'Marketing Estratégico', NULL, 4, NULL, NULL, 5, 25);
INSERT INTO public.cursos VALUES (16, 'Matemáticas Avanzadas', NULL, 5, NULL, NULL, 1, 16);
INSERT INTO public.cursos VALUES (17, 'Filosofía', NULL, 3, NULL, NULL, 2, 18);
INSERT INTO public.cursos VALUES (18, 'Programación', NULL, 5, NULL, NULL, 3, 17);
INSERT INTO public.cursos VALUES (19, 'Historia', NULL, 4, NULL, NULL, 4, 18);
INSERT INTO public.cursos VALUES (20, 'Estadística', NULL, 4, NULL, NULL, 5, 16);
INSERT INTO public.cursos VALUES (50, 'Matemáticas', NULL, NULL, NULL, NULL, NULL, 50);
INSERT INTO public.cursos VALUES (51, 'Física', NULL, NULL, NULL, NULL, NULL, 50);
INSERT INTO public.cursos VALUES (52, 'Sociología', NULL, NULL, NULL, NULL, NULL, 52);
INSERT INTO public.cursos VALUES (92, 'Curso Extra 1', NULL, 4, NULL, NULL, NULL, 80);
INSERT INTO public.cursos VALUES (93, 'Curso Extra 2', NULL, 3, NULL, NULL, NULL, 80);


--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.profesores VALUES (1, 'Laura', 'Hernández', 'PhD', 1, NULL);
INSERT INTO public.profesores VALUES (2, 'Ricardo', 'Gómez', 'MSc', 2, NULL);
INSERT INTO public.profesores VALUES (3, 'Patricia', 'Morales', 'PhD', 3, NULL);
INSERT INTO public.profesores VALUES (4, 'Andrés', 'Díaz', 'MSc', 4, NULL);
INSERT INTO public.profesores VALUES (5, 'Rosa', 'Santos', 'PhD', 5, NULL);
INSERT INTO public.profesores VALUES (6, 'Pedro', 'Cano', 'MSc', 6, NULL);
INSERT INTO public.profesores VALUES (7, 'Gabriela', 'Medina', 'PhD', 7, NULL);
INSERT INTO public.profesores VALUES (8, 'Ernesto', 'Beltrán', 'PhD', 8, NULL);
INSERT INTO public.profesores VALUES (9, 'Claudia', 'Pérez', 'MSc', 9, NULL);
INSERT INTO public.profesores VALUES (10, 'Héctor', 'Aguilar', 'PhD', 10, NULL);
INSERT INTO public.profesores VALUES (11, 'Julieta', 'Nava', 'MSc', 11, NULL);
INSERT INTO public.profesores VALUES (12, 'César', 'Zamora', 'PhD', 12, NULL);
INSERT INTO public.profesores VALUES (13, 'Marcela', 'Vargas', 'MSc', 13, NULL);
INSERT INTO public.profesores VALUES (14, 'Luis', 'Nieto', 'PhD', 14, NULL);
INSERT INTO public.profesores VALUES (15, 'Daniela', 'Mora', 'MSc', 15, NULL);
INSERT INTO public.profesores VALUES (50, 'Carlos', 'Lopez', NULL, 50, NULL);
INSERT INTO public.profesores VALUES (51, 'Ana', 'Martinez', NULL, 50, NULL);
INSERT INTO public.profesores VALUES (52, 'Luis', 'Perez', NULL, 51, NULL);


--
-- Data for Name: cursosprofesores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estudiantes VALUES (1, 'Ana', 'García', '2002-05-14', 'Calle A #123', 'ana.garcia@email.com', 1);
INSERT INTO public.estudiantes VALUES (2, 'Luis', 'Martínez', '2001-03-22', 'Av. Reforma 45', 'luis.martinez@email.com', 2);
INSERT INTO public.estudiantes VALUES (3, 'Carla', 'López', '2000-07-19', 'Col. Centro 202', 'carla.lopez@email.com', 3);
INSERT INTO public.estudiantes VALUES (4, 'Pablo', 'Ramírez', '2003-11-30', 'Sur 7 #33', 'pablo.ramirez@email.com', 4);
INSERT INTO public.estudiantes VALUES (5, 'Lucía', 'Torres', '2002-09-10', 'Norte 18 #8', 'lucia.torres@email.com', 5);
INSERT INTO public.estudiantes VALUES (6, 'Diego', 'Hernández', '2001-01-15', 'Ote 3 #56', 'diego.h@email.com', 6);
INSERT INTO public.estudiantes VALUES (7, 'María', 'Flores', '2003-12-01', 'Col. Roma #77', 'maria.flores@email.com', 7);
INSERT INTO public.estudiantes VALUES (8, 'Sofía', 'Jiménez', '2002-06-25', 'Av. Juárez 99', 'sofia.jimenez@email.com', 8);
INSERT INTO public.estudiantes VALUES (9, 'Carlos', 'Cruz', '2001-10-04', 'Zaragoza #13', 'carlos.cruz@email.com', 9);
INSERT INTO public.estudiantes VALUES (10, 'Elena', 'Ruiz', '2000-08-17', 'La Paz 55', 'elena.ruiz@email.com', 10);
INSERT INTO public.estudiantes VALUES (11, 'Jorge', 'Ortiz', '2001-04-03', 'Niza 21', 'jorge.ortiz@email.com', 11);
INSERT INTO public.estudiantes VALUES (12, 'Valeria', 'Mendoza', '2002-02-28', 'Col. Del Valle 123', 'valeria.mendoza@email.com', 12);
INSERT INTO public.estudiantes VALUES (13, 'Hugo', 'Castillo', '2000-12-30', 'Hidalgo 99', 'hugo.castillo@email.com', 13);
INSERT INTO public.estudiantes VALUES (14, 'Fernanda', 'Silva', '2001-05-20', 'Camino Real 77', 'fernanda.silva@email.com', 14);
INSERT INTO public.estudiantes VALUES (15, 'Miguel', 'Reyes', '2002-07-09', 'Independencia 16', 'miguel.reyes@email.com', 15);
INSERT INTO public.estudiantes VALUES (50, 'Juan', 'Gomez', '2001-05-20', NULL, NULL, NULL);
INSERT INTO public.estudiantes VALUES (51, 'Maria', 'Lopez', '2000-07-12', NULL, NULL, NULL);


--
-- Data for Name: estudiantescarreras; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: horarios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: inscripciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.inscripciones VALUES (1, 1, 1, NULL, 85.0);
INSERT INTO public.inscripciones VALUES (2, 1, 2, NULL, 90.0);
INSERT INTO public.inscripciones VALUES (3, 2, 1, NULL, 75.0);
INSERT INTO public.inscripciones VALUES (4, 3, 3, NULL, 88.0);
INSERT INTO public.inscripciones VALUES (5, 2, 3, NULL, 92.0);
INSERT INTO public.inscripciones VALUES (6, 4, 4, NULL, 80.0);
INSERT INTO public.inscripciones VALUES (7, 5, 5, NULL, 87.0);
INSERT INTO public.inscripciones VALUES (8, 6, 6, NULL, 78.0);
INSERT INTO public.inscripciones VALUES (9, 7, 7, NULL, 85.0);
INSERT INTO public.inscripciones VALUES (10, 8, 8, NULL, 90.0);
INSERT INTO public.inscripciones VALUES (11, 9, 9, NULL, 82.0);
INSERT INTO public.inscripciones VALUES (12, 10, 10, NULL, 88.0);
INSERT INTO public.inscripciones VALUES (13, 11, 11, NULL, 91.0);
INSERT INTO public.inscripciones VALUES (14, 12, 12, NULL, 84.0);
INSERT INTO public.inscripciones VALUES (15, 13, 13, NULL, 79.0);
INSERT INTO public.inscripciones VALUES (50, 50, 50, NULL, 85.0);
INSERT INTO public.inscripciones VALUES (51, 50, 51, NULL, 90.0);
INSERT INTO public.inscripciones VALUES (52, 51, 50, NULL, 88.0);
INSERT INTO public.inscripciones VALUES (53, 51, 52, NULL, 92.0);


--
-- Data for Name: programasestudio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.programasestudio VALUES (1, 'Ingeniería en Sistemas', 'Formación en sistemas y desarrollo de software');
INSERT INTO public.programasestudio VALUES (2, 'Psicología', 'Estudio del comportamiento humano');
INSERT INTO public.programasestudio VALUES (3, 'Matemáticas', 'Fundamentos matemáticos y aplicados');
INSERT INTO public.programasestudio VALUES (4, 'Biología', 'Estudio de organismos vivos');
INSERT INTO public.programasestudio VALUES (5, 'Física', 'Leyes de la naturaleza y sus aplicaciones');
INSERT INTO public.programasestudio VALUES (6, 'Contabilidad', 'Gestión financiera y contable');
INSERT INTO public.programasestudio VALUES (7, 'Historia', 'Análisis histórico y cultural');
INSERT INTO public.programasestudio VALUES (8, 'Ética', 'Estudio de principios morales');
INSERT INTO public.programasestudio VALUES (9, 'Sociología', 'Estructura social y relaciones');
INSERT INTO public.programasestudio VALUES (10, 'Microbiología', 'Estudio de microorganismos');
INSERT INTO public.programasestudio VALUES (11, 'Lógica', 'Razonamiento formal y argumentación');
INSERT INTO public.programasestudio VALUES (12, 'Lengua y Literatura', 'Análisis y creación literaria');
INSERT INTO public.programasestudio VALUES (13, 'Artes Plásticas', 'Expresión artística y técnicas');
INSERT INTO public.programasestudio VALUES (14, 'Derecho', 'Normas jurídicas y legales');
INSERT INTO public.programasestudio VALUES (15, 'Música', 'Teoría e historia musical');
INSERT INTO public.programasestudio VALUES (18, 'Psicología', NULL);
INSERT INTO public.programasestudio VALUES (16, 'Ingeniería de Sistemas', NULL);
INSERT INTO public.programasestudio VALUES (17, 'Ciencias Sociales', NULL);
INSERT INTO public.programasestudio VALUES (50, 'Ingeniería en Sistemas', NULL);
INSERT INTO public.programasestudio VALUES (51, 'Ciencias Sociales', NULL);


--
-- Data for Name: programascursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.programascursos VALUES (1, 16, 16);
INSERT INTO public.programascursos VALUES (2, 16, 17);
INSERT INTO public.programascursos VALUES (3, 17, 18);
INSERT INTO public.programascursos VALUES (4, 17, 19);
INSERT INTO public.programascursos VALUES (5, 18, 20);
INSERT INTO public.programascursos VALUES (6, 16, 21);
INSERT INTO public.programascursos VALUES (7, 17, 22);
INSERT INTO public.programascursos VALUES (8, 18, 23);
INSERT INTO public.programascursos VALUES (9, 18, 24);
INSERT INTO public.programascursos VALUES (10, 16, 25);
INSERT INTO public.programascursos VALUES (11, 50, 50);
INSERT INTO public.programascursos VALUES (12, 50, 51);
INSERT INTO public.programascursos VALUES (13, 51, 52);


--
-- Name: aulas_idaula_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aulas_idaula_seq', 1, false);


--
-- Name: cursos_idcurso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cursos_idcurso_seq', 1, false);


--
-- Name: cursosprofesores_idcursoprofesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cursosprofesores_idcursoprofesor_seq', 1, false);


--
-- Name: departamentos_iddepartamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamentos_iddepartamento_seq', 1, false);


--
-- Name: estudiantes_idestudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiantes_idestudiante_seq', 1, false);


--
-- Name: horarios_idhorario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horarios_idhorario_seq', 1, false);


--
-- Name: inscripciones_idinscripcion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inscripciones_idinscripcion_seq', 1, true);


--
-- Name: profesores_idprofesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesores_idprofesor_seq', 1, false);


--
-- Name: programascursos_idprogramacurso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programascursos_idprogramacurso_seq', 13, true);


--
-- Name: programasestudio_idprograma_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programasestudio_idprograma_seq', 1, false);


--
-- PostgreSQL database dump complete
--

