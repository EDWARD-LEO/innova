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

INSERT INTO clasificaciones (clasificacion) VALUES
	('Informática'),
    ('Metalmecánica'),
    ('Electricidad Industrial');

CREATE TABLE tiposactivo
(
	idtipo 					INT AUTO_INCREMENT PRIMARY KEY,
    idclasificacion 		INT  				NOT NULL,
    tipoactivo 				VARCHAR(300) 		NOT NULL,
	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT fk_idclasificacion_tac FOREIGN KEY (idclasificacion) REFERENCES clasificaciones (idclasificacion),
    CONSTRAINT uk_tipoactivo UNIQUE (idclasificacion, tipoactivo) --  Un tipo puede estar en varios tipos, más no repetir en esa clasificación
)ENGINE = INNODB;

-- Activos del tipo INFORMÁTICA
INSERT INTO tiposactivo (idclasificacion, tipoactivo) VALUES
	(1, 'Computadoras AIO'),
    (1, 'Impresoras de inyección'),
    (1, 'Impresoras Láser'),
    (1, 'Ticketeras'),
    (1, 'Tabletas Android'),
    (1, 'Tabletas digitalizadoras'),
    (1, 'Impresora 3D'),
    (1, 'Proyector multimedia');

SELECT * FROM tiposactivo;

-- Activos del tipo METALMECÁNICA
INSERT INTO tiposactivo (idclasificacion, tipoactivo) VALUES
	(2, 'Taladro alámbrico'),
    (2, 'Taladro inalámbrico'),
    (2, 'Amoladora'),
    (2, 'Fresadora'),
    (2, 'Torno');

INSERT INTO tiposactivo (idclasificacion, tipoactivo) VALUES
	(3, 'Taladro alámbrico'),
    (3, 'Taladro inalámbrico'),
    (3, 'Logo'),
    (3, 'PLC'),
    (3, 'Variador de frecuencia');

CREATE TABLE marcas
(
	idmarca 				INT AUTO_INCREMENT PRIMARY KEY,
    idtipo 					INT  				NOT NULL,
    marca 					VARCHAR(100)		NOT NULL,
	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT fk_tipo_mar FOREIGN KEY (idtipo) REFERENCES tiposactivo (idtipo),
    CONSTRAINT uk_marca_mar UNIQUE (idtipo, marca) -- Se puede registrar más de una vez una marca, siempre que no repita el tipo
)ENGINE = INNODB;


-- 1 Computadoras AIO
INSERT INTO marcas (idtipo, marca) VALUES
	(1, 'Lenovo'),
    (1, 'HP'),
	(1, 'Dell');

-- 2 Impresoras de inyección
INSERT INTO marcas (idtipo, marca) VALUES
	(2, 'Epson'),
    (2, 'HP'),
    (2, 'Canon'),
    (2, 'Brother');

-- 3 Impresoras láser
INSERT INTO marcas (idtipo, marca) VALUES
	(3, 'Epson'),
    (3, 'HP'),
    (3, 'Xerox');

-- 4 Ticketeras
INSERT INTO marcas (idtipo, marca) VALUES
	(4, 'Epson'),
    (4, 'HP');

-- 5 Tablet Android
INSERT INTO marcas (idtipo, marca) VALUES
	(5, 'Huawei'),
    (5, 'Samsung'),
    (5, 'Lenovo');

-- 6 Tabletas digitalizadoras
INSERT INTO marcas (idtipo, marca) VALUES
	(6, 'Wacom');

-- 7 Impresoras 3D
INSERT INTO marcas (idtipo, marca) VALUES
	(7, '3DLAC'),
    (7, 'Astroprint'),
    (7, 'Creality');

-- 8 Proyector multimedia
INSERT INTO marcas (idtipo, marca) VALUES
	(8, 'Canon'),
    (8, 'Sony'),
    (8, 'Epson');

-- 9 Talado alámbrico
INSERT INTO marcas (idtipo, marca) VALUES
	(9, 'Bosch'),
    (9, 'Stanley'),
    (9, 'Bauker');

-- 10 Talado inalámbrico
INSERT INTO marcas (idtipo, marca) VALUES
	(10, 'Bosch'),
    (10, 'Stanley'),
    (10, 'Bauker');

SELECT * FROM tiposactivo;
SELECT * FROM marcas;