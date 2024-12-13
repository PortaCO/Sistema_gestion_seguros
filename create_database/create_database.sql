--CREATE DATABASE db_gestion_seguros
--go

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
