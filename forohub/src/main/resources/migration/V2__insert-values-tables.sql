INSERT INTO perfiles(perfil) VALUES
('ALUMNO'),
('PROFESOR'),
('ADMID'),
('ROOT');

INSERT INTO usuarios(nombre_usuario, correo, contrasena, perfil_id) VALUES
('User1', 'usuario1@example.com', '147', 1),
('User2', 'usuario2@example.com', '258', 2),
('User3', 'usuario3@example.com', '369', 3),
('User4', 'usuario4@example.com', '123', 4),
('User5', 'usuario5@example.com', '456', 5);

INSERT INTO cursos (nombre_curso, categoria) VALUES
('Curso de Java', 'JAVA'),
('Curso de Python', 'PYTHON'),
('Curso de PostgreSQL', 'POSTGRESQL'),
('Curso de MySQL', 'MYSQL');