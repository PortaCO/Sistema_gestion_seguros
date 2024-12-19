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
