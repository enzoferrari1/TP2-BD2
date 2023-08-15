CREATE DATABASE Datawarehouse_TP
USE Datawarehouse_TP

-- Creación del datawarehouse
-- Crear las tablas

-- Tablas de dimensiones provenientes de la base de datos transaccional

CREATE TABLE Productos (
	CODIGO_PRODUCTO nvarchar(255) NOT NULL PRIMARY KEY,
	NOMBRE nvarchar(255),
	FAMILIA nvarchar(255)
	);

CREATE TABLE Vendedores (
	ID_VENDEDOR smallint NOT NULL PRIMARY KEY,
	TIPO_CAPACITACION nvarchar(255),
	HORAS_CAPACITACION smallint
	);

-- Tabla de ubicación para cliente y sucursales
CREATE TABLE Ubicacion (
	COMUNA_ID smallint,
	REGION_NOMBRE nvarchar(255),
	PROVINCIA_NOMBRE nvarchar(255),
	COMUNA_NOMBRE nvarchar(255),
	CONSTRAINT PK_Ubicacion PRIMARY KEY (COMUNA_ID)
);

CREATE TABLE Clientes (
	ID_CLIENTE nvarchar(255) NOT NULL PRIMARY KEY,
	COMUNA_ID smallint,
	ESTADO_CIVIL nvarchar(255),
	AÑO_NACIMIENTO smallint,
	CONSTRAINT FK_Clientes FOREIGN KEY (COMUNA_ID) REFERENCES Ubicacion(COMUNA_ID)
);

CREATE TABLE Sucursales (
	SUCURSAL_ID smallint NOT NULL PRIMARY KEY,
	NOMBRE_SUCURSAL nvarchar(255),
	REGION_ID smallint,
	PROVINCIA_ID smallint,
	COMUNA_ID smallint,
	CONSTRAINT FK_Sucursales FOREIGN KEY (COMUNA_ID) REFERENCES Ubicacion(COMUNA_ID)
);

CREATE TABLE Fecha (
	FECHA datetime NOT NULL PRIMARY KEY,
	DIA smallint,
	MES smallint,
	AÑO smallint,
	SEMANA smallint,
	BIMESTRE smallint,
	TRIMESTRE smallint,
	CUATRIMESTRE smallint,
	SEMESTRE smallint
	)

-- Tabla de hechos: Ventas.

CREATE TABLE Ventas (
	DOCUMENTO nvarchar(255) NOT NULL PRIMARY KEY,
	CODIGO_PRODUCTO nvarchar(255),
	ID_VENDEDOR smallint,
	ID_CLIENTE nvarchar(255),
	SUCURSAL_ID smallint,
	FECHA datetime,
	TOTAL_NETO int,
	CANTIDAD int,
	PRECIO_UNITARIO int,
	COSTO_UNITARIO int,
	FOREIGN KEY (FECHA) REFERENCES Fecha(FECHA),
	FOREIGN KEY (CODIGO_PRODUCTO) REFERENCES Productos(CODIGO_PRODUCTO),
	FOREIGN KEY (ID_VENDEDOR) REFERENCES Vendedores(ID_VENDEDOR),
	FOREIGN KEY (ID_CLIENTE) REFERENCES Clientes(ID_CLIENTE),
	FOREIGN KEY (SUCURSAL_ID) REFERENCES Sucursales(SUCURSAL_ID)
	);


-- Tabla auxiliar, para cargar los datos del csv

CREATE TABLE Residencia_a_Comuna (
	RESIDENCIA nvarchar(255),
	COMUNA nvarchar(255)
	)

-- Columnas auxiliares, para manejar los datos externos

ALTER TABLE Clientes
ADD TEMP_RESIDENCIA nvarchar(255),
	 TEMP_COMUNA_NOMBRE  nvarchar(255);
