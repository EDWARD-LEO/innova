USE innova;

INSERT INTO tipoambientes (tipoambiente) VALUES
	('Laboratorio'),
    ('Taller'),
	('Aula tecnología'),
    ('Almacén');

INSERT INTO complejos (nombrecomplejo, direccion) VALUES
	('Pisco', 'Urb. Residencial Paracas, Calle #4 S/N'),
    ('Chincha', 'Calle Las Gardenias #120, Panamericana Sur Km 200'),
    ('Ica', 'Av. 28 de Julio 590, Entrada Principal a Subtanjalla'),
    ('Ayacucho', 'Jr. Wari N° 245, Urb. 16 de Abril, Huamanga');

INSERT INTO ambientes (idcomplejo, idtipoambiente, descripcion, codigo) VALUES
	(2, 2, 'Soldadura', 'E101'),
    (2, 1, 'Estudios Generales', 'F203'),
    (2, 1, 'ETI - Ingeniería de Software con IA', 'A101');

INSERT INTO roles (nombrerol) VALUES
	('Instructor'),
    ('Coordinador'),
    ('Jefe Centro'),
    ('Director');

INSERT INTO colaboradores 
	(idcomplejo, idrol, codlaboral, apellidos, nombres, email, claveacceso) VALUES
		(2, 1, '112233', 'TORRES MEJIA', 'Jesus', 'jtorres@senati.pe', '1234567'),
        (2, 1, '445566', 'ROJAS MARCOS', 'Joel', 'rjose@senati.pe', '1234567'),
        (2, 1, '713752', 'FRANCIA MINAYA', 'Jhon Edward', 'jfrancia@senati.pe', '1234567');

-- *** FALTA ACTUALIZAR CLAVE CIFRADA *** --
-- UPDATE colaboradores SET claveacceso = '';

INSERT INTO clasificaciones (clasificacion) VALUES
	('Informática'),
    ('Metalmecánica'),
    ('Electricidad Industrial');

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


-- ACTIVO DE PRUEBA CON JSON
-- Integrando JSON
INSERT INTO activos (idcolaborador, idmarca, descripcion, modelo, anio, datasheet) VALUES
	(3, 1, 'Intel Core i7 10ma generación Touch', 'DX001', '2023', '
    {
		"CPU"	: "Intel Core i7 102500",
        "RAM"	: "32 Gb DDR4",
        "HDD" 	: "1000 Gb"
	}'
);

SELECT * FROM activos;
SELECT idactivo, JSON_VALUE(datasheet, '$.CPU') 'CPU' FROM activos;
SELECT idactivo, JSON_VALUE(datasheet, '$.RAM') 'RAM' FROM activos;
SELECT idactivo, JSON_VALUE(datasheet, '$.HDD') 'HDD' FROM activos;

-- Agregando elementos al JSON
UPDATE activos SET datasheet = JSON_SET(datasheet, '$.VIDEO', 'Intel Iris HD') WHERE idactivo = 1;
SELECT idactivo, JSON_VALUE(datasheet, '$.VIDEO') 'VIDEO' FROM activos;