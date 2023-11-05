CREATE DATABASE innova;
USE innova;

CREATE TABLE tipoambientes
(
	idtipoambiente 			INT AUTO_INCREMENT PRIMARY KEY,
    tipoambiente 			VARCHAR(40) 		NOT NULL,
    create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT uk_tipoambiente_tam UNIQUE (tipoambiente)
)ENGINE = INNODB;

INSERT INTO tipoambientes (tipoambiente) VALUES
	('Laboratorio'),
    ('Taller'),
	('Aula tecnología'),
    ('Almacén');

CREATE TABLE complejos
(
	idcomplejo 				INT AUTO_INCREMENT PRIMARY KEY,
    nombrecomplejo 			VARCHAR(70) 		NOT NULL,
    direccion 				VARCHAR(100) 		NOT NULL,
    telefono 				CHAR(9) 			NULL,
	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT uk_nombrecomplejo_cen UNIQUE (nombrecomplejo)
)ENGINE = INNODB;

INSERT INTO complejos (nombrecomplejo, direccion) VALUES
	('Pisco', 'Urb. Residencial Paracas, Calle #4 S/N'),
    ('Chincha', 'Calle Las Gardenias #120, Panamericana Sur Km 200'),
    ('Ica', 'Av. 28 de Julio 590, Entrada Principal a Subtanjalla'),
    ('Ayacucho', 'Jr. Wari N° 245, Urb. 16 de Abril, Huamanga');

CREATE TABLE ambientes
(
	idambiente 				INT AUTO_INCREMENT PRIMARY KEY,
    idcomplejo 				INT 				NOT NULL,
    idtipoambiente 			INT 				NOT NULL,
    descripcion				VARCHAR(100) 		NOT NULL,
    codigo 					VARCHAR(10) 		NOT NULL,
    piso 					TINYINT 			NOT NULL DEFAULT 1,
 	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT fk_idcomplejo_amb FOREIGN KEY (idcomplejo) REFERENCES complejos (idcomplejo),
    CONSTRAINT fk_idtipoambiente_amb FOREIGN KEY (idtipoambiente) REFERENCES tipoambientes (idtipoambiente)
) ENGINE= INNODB;

INSERT INTO ambientes (idcomplejo, idtipoambiente, descripcion, codigo) VALUES
	(2, 2, 'Soldadura', 'E101'),
    (2, 1, 'Estudios Generales', 'F203'),
    (2, 1, 'ETI - Ingeniería de Software con IA', 'A101');


CREATE TABLE roles
(
	idrol 					INT AUTO_INCREMENT PRIMARY KEY,
    nombrerol 				VARCHAR(70) 		NOT NULL,
 	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT uk_nombrerol_rol UNIQUE (nombrerol)
)ENGINE = INNODB;

INSERT INTO roles (nombrerol) VALUES
	('Instructor'),
    ('Coordinador'),
    ('Jefe Centro'),
    ('Director');

CREATE TABLE colaboradores
(
	idcolaborador 			INT AUTO_INCREMENT PRIMARY KEY,
    idcomplejo				INT  				NOT NULL,
    idrol 					INT 				NOT NULL,
    codlaboral 				VARCHAR(15) 		NOT NULL,
    apellidos 				VARCHAR(50) 		NOT NULL,
    nombres 				VARCHAR(50) 		NOT NULL,
    tipodoc 				CHAR(3) 			NULL DEFAULT 'DNI',
    numerodoc 				VARCHAR(8) 			NULL,
    telefono 				CHAR(9) 			NULL,
    email 					VARCHAR(100) 		NOT NULL,
    claveacceso 			CHAR(60) 			NOT NULL,
    avatar 					VARCHAR(100) 		NULL,
    create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT fk_idcomplejo_col FOREIGN KEY (idcomplejo) REFERENCES complejos (idcomplejo),
    CONSTRAINT fk_idrol_col FOREIGN KEY (idrol) REFERENCES roles (idrol)
)ENGINE = INNODB;

INSERT INTO colaboradores 
	(idcomplejo, idrol, codlaboral, apellidos, nombres, email, claveacceso) VALUES
		(2, 1, '112233', 'TORRES MEJIA', 'Jesus', 'jtorres@senati.pe', '1234567'),
        (2, 1, '445566', 'ROJAS MARCOS', 'Joel', 'rjose@senati.pe', '1234567'),
        (2, 1, '713752', 'FRANCIA MINAYA', 'Jhon Edward', 'jfrancia@senati.pe', '1234567');

-- *** FALTA ACTUALIZAR CLAVE CIFRADA *** --
-- UPDATE colaboradores SET claveacceso = '';

CREATE TABLE clasificaciones
(
	idclasificacion			INT AUTO_INCREMENT PRIMARY KEY,
    clasificacion 			VARCHAR(100) 		NOT NULL,
	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT uk_clasificacion_cla UNIQUE (clasificacion)
)ENGINE = INNODB;



