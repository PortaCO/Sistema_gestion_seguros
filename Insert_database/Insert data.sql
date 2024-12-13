-- INSERT DATA
USE db_gestion_seguros;

-- Agente
INSERT INTO [dbo].[AGENTE] (nombre, apellido, telefono, correo, zona) VALUES
('Juan', 'Pérez', '987654321', 'juan.perez@email.com', 'Lima Norte'),
('María', 'González', '987123456', 'maria.gonzalez@email.com', 'Lima Sur'),
('Carlos', 'Ramírez', '986543210', 'carlos.ramirez@email.com', 'Lima Este'),
('Ana', 'Torres', '985432109', 'ana.torres@email.com', 'Lima Oeste'),
('Luis', 'Martínez', '984321098', 'luis.martinez@email.com', 'Lima Centro'),
('Carmen', 'Lopez', '983210987', 'carmen.lopez@email.com', 'Lima Norte');
GO

SELECT * FROM AGENTE;

-- Cliente
INSERT INTO [dbo].[CLIENTE] (ID_AGENTE, nombre, apellido, DNI, direccion, telefono, correo) VALUES
(1, 'Pedro', 'Gómez', '12345678', 'Av. Los Olivos 123, Lima Norte', '987654321', 'pedro.gomez@email.com'),
(1, 'Lucía', 'Hernández', '23456789', 'Jr. Las Magnolias 456, Lima Norte', '987654322', 'lucia.hernandez@email.com'),
(1, 'Miguel', 'Salazar', '34567890', 'Calle Las Palmeras 789, Lima Norte', '987654323', 'miguel.salazar@email.com'),
(2, 'Ana', 'Martínez', '45678901', 'Av. Los Pinos 321, Lima Sur', '987654324', 'ana.martinez@email.com'),
(2, 'Elena', 'Cruz', '56789012', 'Jr. Las Rosas 654, Lima Sur', '987654325', 'elena.cruz@email.com'),
(2, 'Jorge', 'Reyes', '67890123', 'Calle Los Cedros 987, Lima Sur', '987654326', 'jorge.reyes@email.com'),
(3, 'Diana', 'Flores', '78901234', 'Av. San Juan 111, Lima Este', '987654327', 'diana.flores@email.com'),
(3, 'Raúl', 'Ramírez', '89012345', 'Jr. Los Jazmines 222, Lima Este', '987654328', 'raul.ramirez@email.com'),
(3, 'Sofía', 'Quispe', '90123456', 'Calle Los Tulipanes 333, Lima Este', '987654329', 'sofia.quispe@email.com'),
(4, 'Ricardo', 'Vargas', '01234567', 'Av. Colonial 444, Lima Oeste', '987654330', 'ricardo.vargas@email.com'),
(4, 'Patricia', 'Torres', '12345098', 'Jr. La Marina 555, Lima Oeste', '987654331', 'patricia.torres@email.com'),
(4, 'Gabriel', 'Mendoza', '23456109', 'Calle Bolívar 666, Lima Oeste', '987654332', 'gabriel.mendoza@email.com'),
(5, 'Carla', 'Rojas', '34561210', 'Av. Arequipa 777, Lima Centro', '987654333', 'carla.rojas@email.com'),
(5, 'Fernando', 'Castro', '45672321', 'Jr. Tacna 888, Lima Centro', '987654334', 'fernando.castro@email.com'),
(5, 'Valeria', 'Sánchez', '56783432', 'Calle Puno 999, Lima Centro', '987654335', 'valeria.sanchez@email.com'),
(6, 'Martín', 'López', '67894543', 'Av. Universitaria 101, Lima Norte', '987654336', 'martin.lopez@email.com'),
(6, 'Isabel', 'Jiménez', '78905654', 'Jr. Los Andes 202, Lima Norte', '987654337', 'isabel.jimenez@email.com'),
(6, 'Renato', 'Paredes', '89016765', 'Calle Amazonas 303, Lima Norte', '987654338', 'renato.paredes@email.com'),
(1, 'Mariana', 'García', '90127876', 'Av. Próceres 404, Lima Norte', '987654339', 'mariana.garcia@email.com'),
(2, 'Esteban', 'Huerta', '01238987', 'Jr. Libertad 505, Lima Sur', '987654340', 'esteban.huerta@email.com');
GO

SELECT * FROM CLIENTE;
SELECT * FROM CLIENTE WHERE ID_AGENTE = 1;

-- Tipo de Poliza
--Importando data de un archivo plano (tipo_poliza_datos.txt)
SELECT * FROM TIPO_POLIZA;

-- Cobertura de tipo de poliza
INSERT INTO [dbo].[COBERTURA_POLIZA] (ID_TIPO_POLIZA, descripcion_poliza, monto_maximo) VALUES
(1, 'Cobertura por fallecimiento natural.', 50000.00),
(1, 'Cobertura por fallecimiento accidental.', 75000.00),
(1, 'Gastos funerarios.', 10000.00),
(1, 'Cobertura por invalidez total y permanente.', 30000.00),
(2, 'Cobertura por daños a terceros.', 20000.00),
(2, 'Cobertura por robo total del vehículo.', 15000.00),
(2, 'Cobertura por pérdida parcial del vehículo.', 10000.00),
(2, 'Cobertura por accidentes del conductor.', 25000.00),
(2, 'Cobertura por daños por desastres naturales.', 30000.00),
(3, 'Cobertura de hospitalización.', 40000.00),
(3, 'Cobertura de cirugías.', 50000.00),
(3, 'Cobertura de consultas médicas.', 10000.00),
(3, 'Cobertura de medicamentos.', 15000.00),
(3, 'Cobertura de emergencias médicas.', 20000.00),
(4, 'Cobertura por incendio de la vivienda.', 80000.00),
(4, 'Cobertura por robo de bienes.', 30000.00),
(4, 'Cobertura por daños por inundación.', 25000.00),
(4, 'Cobertura por daños estructurales.', 60000.00),
(5, 'Cobertura por pérdida de equipaje.', 5000.00),
(5, 'Cobertura por cancelación de viaje.', 10000.00),
(5, 'Cobertura por emergencias médicas en el extranjero.', 20000.00),
(5, 'Cobertura por retraso de vuelo.', 3000.00),
(6, 'Cobertura por fracturas accidentales.', 15000.00),
(6, 'Cobertura por invalidez temporal.', 20000.00),
(6, 'Cobertura por pérdida de extremidades.', 30000.00),
(7, 'Cobertura de responsabilidad civil profesional.', 50000.00),
(7, 'Cobertura por daños a terceros.', 40000.00),
(8, 'Cobertura por daños materiales por incendio.', 70000.00),
(9, 'Cobertura por robo de bienes personales.', 20000.00),
(10, 'Cobertura por pérdida de mercancía en transporte.', 60000.00);
GO

SELECT * FROM COBERTURA_POLIZA;

-- Poliza
INSERT INTO [dbo].[POLIZA] (ID_CLIENTE, ID_TIPO_POLIZA, monto_asegurado, prima_mensual, fecha_expiracion, estado) VALUES
(1, 1, 50000, 100, '2025-01-01', 'Activa'),
(2, 1, 75000, 120, '2025-03-01', 'Suspendida'),
(3, 2, 20000, 80, '2024-12-15', 'Activa'),
(4, 2, 15000, 70, '2025-02-10', 'Cancelada'),
(5, 2, 10000, 60, '2024-11-20', 'Activa'),
(6, 3, 40000, 150, '2025-05-05', 'Activa'),
(7, 3, 50000, 180, '2025-06-15', 'Suspendida'),
(8, 3, 10000, 90, '2024-12-30', 'Activa'),
(9, 3, 15000, 95, '2025-02-25', 'Cancelada'),
(10, 4, 80000, 200, '2025-07-01', 'Activa'),
(11, 4, 30000, 110, '2025-03-15', 'Suspendida'),
(12, 4, 25000, 105, '2025-04-20', 'Activa'),
(13, 4, 60000, 190, '2025-06-10', 'Cancelada'),
(14, 5, 5000, 50, '2024-12-10', 'Activa'),
(15, 5, 10000, 60, '2025-01-15', 'Suspendida'),
(16, 5, 20000, 85, '2025-03-05', 'Activa'),
(17, 6, 15000, 70, '2025-02-01', 'Cancelada'),
(18, 6, 20000, 90, '2025-04-01', 'Activa'),
(19, 6, 30000, 110, '2025-06-01', 'Suspendida'),
(20, 7, 50000, 200, '2025-05-10', 'Activa'),
(1, 7, 40000, 180, '2025-03-20', 'Suspendida'),
(2, 8, 70000, 210, '2025-04-15', 'Activa'),
(3, 8, 60000, 190, '2025-07-20', 'Cancelada'),
(4, 9, 20000, 100, '2025-01-25', 'Activa'),
(5, 9, 15000, 80, '2024-12-15', 'Suspendida'),
(6, 10, 60000, 220, '2025-08-01', 'Activa'),
(7, 10, 50000, 180, '2025-06-01', 'Cancelada'),
(8, 10, 45000, 170, '2025-04-10', 'Activa'),
(9, 10, 55000, 200, '2025-05-25', 'Suspendida');

SELECT * FROM POLIZA;



