/*
Muestra todos los pagos, indicando si se realizaron completos o en partes.
*/
SELECT 
    CONCAT(C.nombre, ' ', C.apellido) AS 'Nombre completo del cliente',
    PL.ID AS 'ID de la poliza',
    P.ID AS 'ID del pago',
    P.monto_pago AS 'Monto pagado del mes',
    CASE 
        WHEN EXISTS (
            SELECT 1 
            FROM DETALLE_PAGO DP 
            WHERE DP.ID_PAGO = P.ID 
            AND DP.desglose != 'Prima mensual completa'
        ) THEN 'Pago en partes'
        ELSE 'Pago completo'
    END AS 'Estado del pago'
FROM PAGO P
INNER JOIN POLIZA PL ON P.ID_POLIZA = PL.ID
INNER JOIN CLIENTE C ON PL.ID_CLIENTE = C.ID;


/*
Lista las coberturas de pólizas asociadas a cada cliente. Incluye el nombre del cliente, 
el tipo de póliza y la descripción de la cobertura.
*/
SELECT 
    C.nombre AS Nombre_Cliente,
    TP.nombre_tipo AS Tipo_Poliza,
    CP.descripcion_poliza AS Cobertura
FROM CLIENTE C
INNER JOIN POLIZA PO ON C.ID = PO.ID_CLIENTE
INNER JOIN TIPO_POLIZA TP ON PO.ID_TIPO_POLIZA = TP.ID
INNER JOIN COBERTURA_POLIZA CP ON TP.ID = CP.ID_TIPO_POLIZA;

/*
Lista las coberturas de pólizas asociadas a cada cliente. Incluye el nombre del cliente, 
el tipo de póliza y la descripción de la cobertura.
*/
SELECT 
    CONCAT(C.nombre, ' ', C.apellido) AS 'Nombre completo del cliente',
    COUNT(PL.ID) AS 'Cantidad de Pólizas Activas'
FROM CLIENTE C
INNER JOIN POLIZA PL ON C.ID = PL.ID_CLIENTE
WHERE PL.estado = 'Activa'
GROUP BY C.nombre, C.apellido
ORDER BY 'Cantidad de Pólizas Activas' ASC

/*
Obtén las pólizas con el mayor monto asegurado para cada tipo de póliza. Muestra el nombre del cliente, el tipo de póliza y el monto asegurado.
*/

SELECT 
    CONCAT(C.nombre, ' ', C.apellido) AS 'Nombre Completo del cliente',
    TP.nombre_tipo AS 'Tipo de Póliza',
    P.monto_asegurado AS 'Monto Asegurado'
FROM POLIZA P
INNER JOIN CLIENTE C ON P.ID_CLIENTE = C.ID
INNER JOIN TIPO_POLIZA TP ON P.ID_TIPO_POLIZA = TP.ID
WHERE P.monto_asegurado = (
    SELECT MAX(monto_asegurado)
    FROM POLIZA
    WHERE ID_TIPO_POLIZA = P.ID_TIPO_POLIZA
);

SELECT * 
FROM POLIZA P
INNER JOIN PAGO PG ON  PG.ID_POLIZA = P.ID

SELECT * 
FROM POLIZA P
INNER JOIN siniestro S ON S.ID_POLIZA = P.ID

use db_gestion_seguros


select * from DETALLE_PAGO


/*
Crea un procedimiento almacenado para actualizar el estado de una póliza por su ID
*/
CREATE PROCEDURE sp_ActualizarEstadoPoliza
    @ID_POLIZA INT,
    @nuevo_estado VARCHAR(20)
AS
BEGIN
    UPDATE POLIZA
    SET estado = @nuevo_estado
    WHERE ID = @ID_POLIZA;
END;

EXEC sp_ActualizarEstadoPoliza 
    @ID_POLIZA = 5,
    @nuevo_estado = 'Inactiva';


/*
Crea un procedimiento almacenado que devuelva los pagos realizados por un cliente específico utilizando su ID.
*/
CREATE PROCEDURE sp_ObtenerPagosPorCliente
    @ID_CLIENTE INT
AS
BEGIN
    SELECT 
        PG.ID AS 'ID del Pago',
        PG.fecha_pago AS 'Fecha del Pago',
        PG.monto_pago AS 'Monto Pagado',
        MP.nombre_metodo AS 'Método de Pago'
		
    FROM PAGO PG
    INNER JOIN POLIZA P ON PG.ID_POLIZA = P.ID
    INNER JOIN CLIENTE C ON P.ID_CLIENTE = C.ID
    INNER JOIN METODO_PAGO MP ON PG.ID_METODO_PAGO = MP.ID
    WHERE C.ID = @ID_CLIENTE;
END;

EXEC sp_ObtenerPagosPorCliente 
    @ID_CLIENTE = 3;


CREATE VIEW vw_ClientesPolizasSiniestros AS
SELECT 
    C.ID AS ID_Cliente,
    CONCAT(C.nombre, ' ', C.apellido) AS 'Nombre completo del ciente',
    C.DNI,
    P.ID AS ID_Poliza,
	TP.nombre_tipo AS 'Tipo de poliza',
    P.monto_asegurado AS Monto_Asegurado,
    S.ID AS ID_Siniestro,
    S.descripcion AS Descripcion_Siniestro,
    S.fecha_siniestro AS Fecha_Siniestro,
    S.monto_reclamado AS Monto_Reclamado,
    S.estado AS Estado_Siniestro
FROM CLIENTE C
INNER JOIN POLIZA P ON C.ID = P.ID_CLIENTE
INNER JOIN SINIESTRO S ON P.ID = S.ID_POLIZA
INNER JOIN TIPO_POLIZA TP ON TP.ID = P.ID_TIPO_POLIZA;

SELECT * FROM vw_ClientesPolizasSiniestros
