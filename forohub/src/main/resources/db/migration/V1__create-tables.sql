CREATE TABLE cursos (
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_curso VARCHAR(200) NOT NULL,
	categoria VARCHAR(100) NOT NULL
);

CREATE TABLE perfiles (
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	perfil VARCHAR(100) NOT NULL
);

CREATE TABLE usuarios (
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_usuario VARCHAR(100) NOT NULL UNIQUE,
	correo VARCHAR(200) NOT NULL UNIQUE,
	contrasena VARCHAR(2550) NOT NULL,
	perfil_id BIGINT NOT NULL
);

CREATE TABLE topicos (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL UNIQUE,
    mensaje VARCHAR(255) NOT NULL UNIQUE,
    fecha DATE NOT NULL,
    status TINYINT NOT NULL,
    autor_id BIGINT NOT NULL,
    curso_id BIGINT NOT NULL
);

CREATE TABLE respuestas (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mensaje_respuesta TEXT NOT NULL,
    topico_id BIGINT NOT NULL,
    fecha_respuesta DATE NOT NULL,
    autor_id BIGINT NOT NULL,
    solucion TINYINT NOT NULL
);