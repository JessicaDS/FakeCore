CREATE TABLE IF NOT EXISTS FAKECORE;

DROP TABLE IF EXISTS ALUMNO;
CREATE TABLE IF NOT EXISTS ALUMNO(
    ID_ALUMNO INT NOT NULL UNIQUE,
    NOMBRES VARCHAR(50) NOT NULL,
    APELLIDO_PATERNO VARCHAR(50) NOT NULL,
    APELLIDO_MATERNO VARCHAR(50) NOT NULL,
    PRIMARY KEY(ID_ALUMNO)
);

DROP TABLE IF EXISTS MAESTRO;
CREATE TABLE IF NOT EXISTS MAESTRO(
    ID_MAESTRO INT NOT NULL UNIQUE,
    NOMBRES VARCHAR(50) NOT NULL,
    APELLIDO_PATERNO VARCHAR(50) NOT NULL,
    APELLIDO_MATERNO VARCHAR(50) NOT NULL,
    PRIMARY KEY(ID_MAESTRO)
);

DROP TABLE IF EXISTS MATERIA;
CREATE TABLE IF NOT EXISTS MATERIA(
    ID_MATERIA INT NOT NULL UNIQUE,
    NOMBRE VARCHAR(50) NOT NULL,
    FK_ID_MAESTRO INT NOT NULL,
    LIMITE INT NOT NULL,
    ALUMNOS_REGISTRADOS INT NOT NULL,
    PRIMARY KEY(ID_MATERIA),
    FOREIGN KEY(FK_ID_MAESTRO) REFERENCES MAESTRO(ID_MAESTRO)
);

DROP TABLE IF EXISTS HORARIO;
CREATE TABLE IF NOT EXISTS HORARIO(
    ID_HORARIO INT NOT NULL UNIQUE AUTO_INCREMENT,
    FK_ID_MATERIA INT NOT NULL,
    DIA VARCHA(20) NOT NULL,
    HORA_INICIO TIME NOT NULL,
    HORA_FIN TIME NOT NULL,
    PRIMARY KEY(ID_HORARIO),
    FOREIGN KEY(FK_ID_MATERIA) REFERENCES MATERIA(ID_MATERIA)
);

DROP TABLE IF EXISTS ALUMNO_MATERIA;
CREATE TABLE IF NOT EXISTS ALUMNO_MATERIA(
    FK_ID_ALUMNO INT NOT NULL,
    FK_ID_MATERIA INT NOT NULL,
    FOREIGN KEY(FK_ID_ALUMNO) REFERENCES ALUMNO(ID_ALUMNO),
    FOREIGN KEY(FK_ID_MATERIA) REFERENCES MATERIA(ID_MATERIA)
);