use jormilcapocBD;

CREATE TABLE IF NOT EXISTS alumnos(
	id INTEGER(11) NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(100),
    ap_paterno VARCHAR(70),
    ap_materno VARCHAR(70),
    matricula VARCHAR(30),
    status TINYINT(1) NOT NULL DEFAULT 1,
	fecha_creacion DATETIME NOT NULL DEFAULT NOW(),
	fecha_modificacion DATETIME NOT NULL DEFAULT NOW(),
	PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS grupos(
	id INTEGER(11) NOT NULL AUTO_INCREMENT,
	grado VARCHAR(2),
    grupo_letra VARCHAR(70),
    status TINYINT(1) NOT NULL DEFAULT 1,
	fecha_creacion DATETIME NOT NULL DEFAULT NOW(),
	fecha_modificacion DATETIME NOT NULL DEFAULT NOW(),
	PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS alumnos_grupos(
	id INTEGER(11) NOT NULL AUTO_INCREMENT,
	alumno_id INTEGER(11),
    grupo_id INTEGER(11),
    status TINYINT(1) NOT NULL DEFAULT 1,
	fecha_creacion DATETIME NOT NULL DEFAULT NOW(),
	fecha_modificacion DATETIME NOT NULL DEFAULT NOW(),
	PRIMARY KEY (id),
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY (grupo_id) REFERENCES grupos(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;