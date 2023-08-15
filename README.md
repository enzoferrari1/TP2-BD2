# Trabajo Práctico - Bases de Datos 2
Trabajo Práctico Final de la materia Base de Datos 2.

## Hecho con
- SQL Managment Studio.
- Visual Studio SSIS Toolbox.
- PowerBI

## Descripción
Este trabajo se enfatiza en la creación de un Datawarehouse.

Se cuenta con una base de datos transaccional la cual según información respecto de las actividades de la empresa, se desea poder realizar un análisis sobre las actividades de esta mediante el diseño y creación de un DataWarehouse, que incluye el respectivo proceso de ETL y una adecuada visualización desde un Tablero de Control.

Las consignas del trabajo están más detalladas en el enunciado. Se trabajará sobre las actividades de una empresa cuyos hechos principales son las ventas.

### Contenido

La base de datos transaccional está dada en forma de un backup de SQL, dentro del archivo comprimido.

Se utilizó SQL Server y SQL Managment Studio para el procesamiento de la base de datos transaccional y también para la creacion de las tablas de nuestro DataWarehouse.

La creación de las tablas y dimensiones del DataWarehouse están presentes en el archivo query de SQL.

Se utilizaron herramientas de Visual Studio para el proceso de ETL desde la BD transaccional hasta el DataWarehouse.

Se utilizó Power BI para la creación del Tablero de control empresarial, allí se incluyen visualizaciones del desempeño de las ventas de la empresa según lo requerido por las consignas del trabajo.

### Archivos

- Dashboard_TP.pbix contiene las visualizaciones del DataWarehouse mediante PowerBI.

- Query_TP_DATAWAREHOUSE.sql contiene las queries para crear el DataWarehouse en SQL.

- TRADEProd_29032023.zip es un backup de la base de datos transaccional de la empresa.

- TUIA-BBDD2_TP-UNIDAD1.pdf y BasesDatos2-2023-TP-FINAL.pdf contiene las consignas del trabajo.

- TP_FINAL_BD2-Enzo_Ferrari.pdf contiene el informe creado por el alumno.

- Dentro de la carpeta TP2-BD2 se encuentra el proyecto de Visual Studio para el proceso ETL.

## Uso
Simplemente abra cada archivo con su respectivo programa, ejecutando la query de SQL. Es probable que se deban cambiar las conexiones en el proyecto de Visual Studio manualmente.

