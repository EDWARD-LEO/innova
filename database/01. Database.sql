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

CREATE TABLE roles
(
	idrol 					INT AUTO_INCREMENT PRIMARY KEY,
    nombrerol 				VARCHAR(70) 		NOT NULL,
 	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT uk_nombrerol_rol UNIQUE (nombrerol)
)ENGINE = INNODB;

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

CREATE TABLE clasificaciones
(
	idclasificacion			INT AUTO_INCREMENT PRIMARY KEY,
    clasificacion 			VARCHAR(100) 		NOT NULL,
	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT uk_clasificacion_cla UNIQUE (clasificacion)
)ENGINE = INNODB;

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

CREATE TABLE activos
(
	idactivo 				INT AUTO_INCREMENT PRIMARY KEY,
    idcolaborador 			INT 				NOT NULL, -- Persona que registra
    idmarca 				INT 				NOT NULL, -- Clasificación > Tipo > Marca
    descripcion 			VARCHAR(300) 		NOT NULL,
    modelo 					VARCHAR(100) 		NULL,
    anio 					CHAR(4) 			NULL,
    precioestimado  		DECIMAL(9,2) 		NULL,
    fotografia 				VARCHAR(300) 		NULL,
	datasheet 				JSON 				NULL,
	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT fk_idcolaborador_act FOREIGN KEY (idcolaborador) REFERENCES colaboradores (idcolaborador),
    CONSTRAINT fk_idmarca_act FOREIGN KEY (idmarca) REFERENCES marcas (idmarca)
)ENGINE = INNODB;


-- PRIMER PROCESO (revise README.md)
-- 1. Recepción de activos a través de una guía de remisión

CREATE TABLE guiasremision
(
	idguia 					INT AUTO_INCREMENT PRIMARY KEY,
    idcolaborador 			INT 				NOT NULL,
    emisor 					VARCHAR(100) 		NOT NULL,
    direccionemisor			VARCHAR(150) 		NOT NULL,
    fechaguia 				DATE 				NOT NULL,
    serieguia 				VARCHAR(10) 		NOT NULL,
    numeroguia 				VARCHAR(10) 		NOT NULL,
    motivotraslado 			VARCHAR(100) 		NOT NULL,
	create_at 				DATETIME 			NOT NULL DEFAULT NOW(),
    update_at 				DATETIME 			NULL,
    inactive_at 			DATETIME 			NULL,
    CONSTRAINT fk_idcolaborador_gre FOREIGN KEY (idcolaborador) REFERENCES colaboradores (idcolaborador)
)ENGINE = INNODB;

CREATE TABLE detalleguia
(
	iddetguia 				INT AUTO_INCREMENT PRIMARY KEY,
	idguia 					INT  				NOT NULL,
    idactivo 				INT 				NOT NULL,
    unidadmedida 			VARCHAR(40) 		NOT NULL,
    numeroserie 			VARCHAR(40) 		NULL,
    CONSTRAINT fk_idguia_dgu FOREIGN KEY (idguia) REFERENCES guiasremision (idguia),
    CONSTRAINT fk_idactivo_dgu FOREIGN KEY (idactivo) REFERENCES activos (idactivo)
)ENGINE = INNODB;

