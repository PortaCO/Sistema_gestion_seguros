/* Igualdad simple "Seleccionar el dni, nombre completo y emil de todos
los clientes" */

SELECT  
	CONCAT(nombre,' ',apellido) as 'Nombre Completo', 
	DNI, correo  
FROM CLIENTE
WHERE nombre in ('Ricardo','Diana');


select * from cliente