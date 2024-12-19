/* Igualdad simple "Seleccionar el dni, nombre completo y emil de todos
los clientes" */

SELECT  
	CONCAT(nombre,' ',apellido) as 'Nombre Completo', 
	DNI, correo  
FROM CLIENTE
WHERE nombre in ('Ricardo','Diana');

/* Encontrar filas que contienen un valor como parte de una cadena
Seleccionar todos los apellido de los clientes que contengan la 
cadena "ez"
*/
SELECT  
	CONCAT(nombre,' ',apellido) as 'Nombre Completo', 
	DNI, correo  
FROM CLIENTE
WHERE apellido LIKE('%ez%');

-- Los apellidos que empiezen con R o terminen con S
SELECT  
	CONCAT(nombre,' ',apellido) as 'Nombre Completo', 
	DNI, correo  
FROM CLIENTE
WHERE apellido LIKE ('R%') OR apellido LIKE ('%S');

/* Entontrar filas mediante un operador de comparacion
Listar los clientes cuyos id sea mayor igual a 15
*/
SELECT  *  FROM CLIENTE
WHERE id >= 15;

-- Listar clientes cuyo id entre 10 y 18
SELECT  *  FROM CLIENTE
WHERE ID > 10 AND ID <18;

-- Incluyendo extremos
SELECT  *  FROM CLIENTE
WHERE ID BETWEEN 10 AND 18;

-- Seleccionar todos los id diferentes de 10 y diferentes a nombre Jorge
SELECT * FROM CLIENTE
WHERE  ID != 10 AND nombre !='Jorge'; 

/* Encontrar filas que cumplan cualquier de las 3 condiciones:
- Su id sea 3
- Su telefono sea 78901234
- Que su direccion sea una avenida
*/
SELECT * FROM CLIENTE
WHERE 
	ID = 3 OR 
	telefono = 78901234 OR 
	direccion LIKE ('Av%');

/* Encontrar filas que cumplan varias condiciones:
- Que su id sea mayor a 10
- Que su direccion no sea una  avenida
*/
SELECT * FROM CLIENTE
WHERE 
	id >10 AND
	direccion NOT LIKE 'Av%';

-- Encontrar filas que no esten en una lista
SELECT * FROM CLIENTE
WHERE DNI NOT IN ('12345678', '45678901', '34561210')


/* Funciones matematicas */

-- Funcion SUM
SELECT 
	ID_CLIENTE, 
	SUM(monto_asegurado) AS 'Monto total'
FROM POLIZA
GROUP BY ID_CLIENTE
ORDER BY 2 ASC;

-- Funcion Max Min
SELECT 
	ID_CLIENTE, 
	MAX(monto_asegurado) AS 'Monto maximo asegurado',
	MIN(monto_asegurado) AS 'Monto minimo asegurado'
FROM POLIZA
GROUP BY ID_CLIENTE
ORDER BY 1 ASC;

-- HAVING
SELECT 
	ID_CLIENTE, 
	MAX(monto_asegurado) AS 'Monto maximo asegurado',
	MIN(monto_asegurado) AS 'Monto minimo asegurado'
FROM POLIZA
GROUP BY ID_CLIENTE
HAVING ID_CLIENTE <=10
ORDER BY 1 ASC;

-- CREATE VIEW
CREATE VIEW vw_kv_nombre_completo_clientes AS
SELECT  
	CONCAT(nombre,' ',apellido) as 'Nombre Completo', 
	DNI, correo  
FROM CLIENTE
WHERE apellido LIKE ('R%') OR apellido LIKE ('%S');

SELECT * FROM vw_kv_nombre_completo_clientes;

/* Combinacion de tablas */
SELECT 
	p.ID_CLIENTE, 
	c.nombre,
	c.apellido,
	p.monto_asegurado
FROM POLIZA p, CLIENTE c
WHERE P.ID_CLIENTE = C.ID
GROUP BY P.ID_CLIENTE, C.nombre, C.apellido, P.monto_asegurado

SELECT 
	p.ID_CLIENTE, 
	c.nombre,
	c.apellido,
	p.monto_asegurado
FROM POLIZA P
INNER JOIN CLIENTE C ON P.ID_CLIENTE = C.ID
ORDER BY 4 ASC


--JOINS

-- INNER JOIN
SELECT
	CONCAT(A.nombre,' ' , A.apellido) AS 'Nombre del agente',
	C.ID AS 'ID del cliente'
FROM CLIENTE C
INNER JOIN AGENTE A ON A.ID = C.ID_AGENTE;

-- LEFT JOIN, RIGHT JOIN, FULL JOIN

ALTER TABLE [dbo].[AGENTE]
ADD DNI VARCHAR(15) NULL;

UPDATE [dbo].[AGENTE]
SET DNI = '95856215'
WHERE ID = 1;

UPDATE [dbo].[AGENTE]
SET DNI = '23585115'
WHERE ID = 2;

UPDATE [dbo].[AGENTE]
SET DNI = '34585129'
WHERE ID = 3;

UPDATE [dbo].[AGENTE]
SET DNI = '42315681'
WHERE ID = 4;

UPDATE [dbo].[AGENTE]
SET DNI = '56487412'
WHERE ID = 5;

UPDATE [dbo].[AGENTE]
SET DNI = '62578915'
WHERE ID = 6;

SELECT * FROM POLIZA
SELECT *  FROM PAGO
SELECT * FROM DETALLE_PAGO


-- Seleccion de relacion entre Agente - Cliente - Poliza
-- Polizas de los clientes
SELECT
	A.ID AS 'Id del agente',
	CONCAT(A.nombre,' ' , A.apellido) AS 'Nombre del agente',
	A.zona AS 'Zona del agente',
	C.ID AS 'ID del cliente',
	CONCAT(C.nombre,' ' , C.apellido) AS 'Nombre del cliente',
	C.DNI AS 'DNI del cliente',
	TP.nombre_tipo AS 'Tipo de poliza',
	P.monto_asegurado,
	P.prima_mensual
FROM CLIENTE C
INNER JOIN AGENTE A ON A.ID = C.ID_AGENTE
INNER JOIN POLIZA P ON P.ID_CLIENTE = C.ID
INNER JOIN TIPO_POLIZA TP ON TP.ID = P.ID_TIPO_POLIZA
ORDER BY 1 ASC

-- Modificando observacion de que la prima mensual es establecida por el monto asegurado y fecha inicio e fin
UPDATE [dbo].[POLIZA]
SET prima_mensual = monto_asegurado / DATEDIFF(MONTH, fecha_inicio, fecha_expiracion)
WHERE ROUND(DATEDIFF(MONTH, fecha_inicio, fecha_expiracion),0) > 0;


-- Modificando observacion entre el pago mensual realizado con la prima mensual establecia en poliza
UPDATE PG
SET PG.monto_pago = P.prima_mensual
FROM PAGO PG
INNER JOIN POLIZA P ON P.ID = PG.ID_POLIZA
WHERE P.ID = PG.ID_POLIZA

SELECT 
	P.monto_asegurado,
	P.prima_mensual,
	PG.monto_pago
FROM POLIZA P
INNER JOIN PAGO PG ON P.ID = PG.ID_POLIZA


