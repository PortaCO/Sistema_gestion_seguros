CREATE DATABASE db_gestion_seguros
go

/**/
USE db_gestion_seguros
GO

-- TABLA Agente
CREATE TABLE AGENTE(
ID INT PRIMARY KEY IDENTITY(1,1),
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
telefono VARCHAR(20) NOT NULL,
correo VARCHAR(100) NOT NULL,
zona VARCHAR(50) NOT NULL
);
GO

--restringiendo las zonas en lima - Peru
ALTER TABLE AGENTE
ADD CONSTRAINT check_zona CHECK (zona in ('Lima Norte', 'Lima Sur', 'Lima Este', 'Lima Oeste', 'Lima Centro'))

-- TABLA tipo_poliza
CREATE TABLE TIPO_POLIZA(
ID INT PRIMARY KEY IDENTITY(1,1),
nombre_tipo VARCHAR(50) NOT NULL,
descripcion TEXT NULL
);
GO

-- TABLA metodo_pago
CREATE TABLE METODO_PAGO(
ID INT PRIMARY KEY IDENTITY(1,1),
nombre_metodo VARCHAR(50) NOT NULL,
detalle TEXT NULL
);
GO

-- TABLA cliente
CREATE TABLE CLIENTE(
ID INT PRIMARY KEY IDENTITY(1,1),
ID_AGENTE INT NOT NULL,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
DNI VARCHAR(15) UNIQUE NOT NULL,
direccion VARCHAR(255) NOT NULL, 
telefono VARCHAR(20) NOT NULL,
correo VARCHAR(100) NOT NULL
CONSTRAINT FK_ID_AGENTE FOREIGN KEY (ID_AGENTE) REFERENCES AGENTE(ID)
);
GO

-- TABLA cobertura_poliza
CREATE TABLE COBERTURA_POLIZA(
ID INT PRIMARY KEY IDENTITY(1,1),
ID_TIPO_POLIZA INT NOT NULL,
descripcion_poliza TEXT NOT NULL,
monto_maximo DECIMAL(15,2) NOT NULL,
CONSTRAINT FK_cobertura_poliza_tipo FOREIGN KEY (ID_TIPO_POLIZA) REFERENCES TIPO_POLIZA(ID)
);
GO

-- TABLA poliza
CREATE TABLE POLIZA(
ID INT PRIMARY KEY IDENTITY(1,1),
ID_CLIENTE INT NOT NULL,
ID_TIPO_POLIZA INT NOT NULL, 
monto_asegurado DECIMAL(15,2) NOT NULL,
prima_mensual DECIMAL(10,2) NOT NULL,
fecha_inicio DATE DEFAULT GETDATE() NOT NULL,
fecha_expiracion DATE NOT NULL,
estado VARCHAR(20) NOT NULL,
CONSTRAINT FK_cliente_poliza FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID),
CONSTRAINT FK_poliza_tipo FOREIGN KEY (ID_TIPO_POLIZA) REFERENCES TIPO_POLIZA(ID)
);
GO

ALTER TABLE POLIZA
ADD CONSTRAINT check_estado CHECK (estado in ('Activa', 'Suspendida', 'Cancelada'))

-- TABLA siniestro
CREATE TABLE SINIESTRO(
ID INT PRIMARY KEY IDENTITY(1,1),
ID_POLIZA INT NOT NULL,
descripcion TEXT NOT NULL,
fecha_siniestro DATETIME DEFAULT GETDATE() NOT NULL,
estado VARCHAR(20) NOT NULL,
monto_reclamado DECIMAL(15,2) NOT NULL,
CONSTRAINT FK_siniestro_poliza FOREIGN KEY (ID_POLIZA) REFERENCES POLIZA(ID)
);
GO

-- TABLA historial_estado_siniestro
CREATE TABLE HISTORIAL_ESTADO_SINIESTRO(
ID INT PRIMARY KEY IDENTITY(1,1),
ID_SINIESTRO INT NOT NULL,
estado_anterior VARCHAR(20),
estado_nuevo VARCHAR(20) NOT NULL, 
observacion TEXT NULL,
CONSTRAINT FK_historial_es_siniestro FOREIGN KEY (ID_SINIESTRO) REFERENCES SINIESTRO(ID) 
);
GO

-- TABLA pago
CREATE TABLE PAGO(
ID INT PRIMARY KEY IDENTITY(1,1),
ID_POLIZA INT NOT NULL,
ID_METODO_PAGO INT NOT NULL,
fecha_pago DATETIME DEFAULT GETDATE() NOT NULL,
monto_pago DECIMAL(10,2) NOT NULL,
CONSTRAINT FK_pago_poliza FOREIGN KEY (ID_POLIZA) REFERENCES POLIZA(ID),
CONSTRAINT FK_metodo_pago FOREIGN KEY (ID_METODO_PAGO) REFERENCES METODO_PAGO(ID)
);
GO

-- TABLA detalle_pago
CREATE TABLE DETALLE_PAGO(
ID INT PRIMARY KEY IDENTITY(1,1),
ID_PAGO INT NOT NULL,
desglose TEXT,
monto DECIMAL(10,2) NOT NULL,
CONSTRAINT FK_pago  FOREIGN KEY (ID_PAGO) REFERENCES PAGO(ID)
);
GO

