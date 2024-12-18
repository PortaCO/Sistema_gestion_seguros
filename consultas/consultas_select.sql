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

select * from cliente