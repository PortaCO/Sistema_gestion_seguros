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

-- Tipo de Poliza
INSERT INTO [dbo].[TIPO_POLIZA] (nombre_tipo, descripcion) VALUES
('Seguro de Auto', 'Cobertura por daños, robo o accidentes de vehículos automotores'),
('Seguro de Hogar', 'Protección contra incendios, robos y desastres naturales en el hogar'),
('Seguro de Vida', 'Cobertura por fallecimiento o invalidez del asegurado'),
('Seguro de Salud', 'Cobertura médica por hospitalización, enfermedades y emergencias'),
('Seguro de Viaje', 'Protección durante viajes por pérdida de equipaje o emergencias médicas'),
('Seguro de Accidentes', 'Cobertura por accidentes personales que causen lesiones o invalidez'),
('Seguro de Empresa', 'Cobertura contra riesgos específicos de negocios y empresas'),
('Seguro de Educación', 'Plan de ahorro y cobertura para gastos educativos'),
('Seguro de Responsabilidad Civil', 'Cobertura por daños a terceros'),
('Seguro de Mascotas', 'Cobertura médica para mascotas por enfermedades y accidentes');


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
INSERT INTO [dbo].[POLIZA] (ID_CLIENTE, ID_TIPO_POLIZA, monto_asegurado, prima_mensual, fecha_inicio, fecha_expiracion, estado) VALUES
(1, 1, 50000, 1041.67, '2024-01-15', '2028-01-15', 'Activa'),
(2, 2, 30000, 625.00, '2024-02-10', '2028-02-10', 'Suspendida'),
(3, 3, 40000, 833.33, '2024-03-05', '2028-03-05', 'Activa'),
(4, 4, 80000, 1666.67, '2024-04-01', '2028-04-01', 'Cancelada'),
(5, 5, 20000, 416.67, '2024-05-20', '2028-05-20', 'Activa'),
(6, 6, 25000, 520.83, '2024-06-15', '2028-06-15', 'Activa'),
(7, 7, 60000, 1250.00, '2024-07-10', '2028-07-10', 'Activa'),
(8, 8, 70000, 1458.33, '2024-08-25', '2028-08-25', 'Cancelada'),
(9, 9, 35000, 729.17, '2024-09-12', '2028-09-12', 'Activa'),
(10, 10, 55000, 1145.83, '2024-10-05', '2028-10-05', 'Activa'),
(11, 1, 40000, 833.33, '2024-01-20', '2028-01-20', 'Activa'),
(12, 2, 30000, 625.00, '2024-02-15', '2028-02-15', 'Activa'),
(13, 3, 45000, 937.50, '2024-03-10', '2028-03-10', 'Activa'),
(14, 4, 75000, 1562.50, '2024-04-05', '2028-04-05', 'Suspendida'),
(15, 5, 18000, 375.00, '2024-05-25', '2028-05-25', 'Activa'),
(16, 6, 22000, 458.33, '2024-06-20', '2028-06-20', 'Cancelada'),
(17, 7, 58000, 1208.33, '2024-07-15', '2028-07-15', 'Activa'),
(18, 8, 68000, 1416.67, '2024-08-30', '2028-08-30', 'Suspendida'),
(19, 9, 33000, 687.50, '2024-09-18', '2028-09-18', 'Activa'),
(20, 10, 52000, 1083.33, '2024-10-12', '2028-10-12', 'Cancelada'),
(1, 2, 47000, 979.17, '2024-01-30', '2028-01-30', 'Activa'),
(2, 3, 32000, 666.67, '2024-02-22', '2028-02-22', 'Suspendida'),
(3, 4, 41000, 854.17, '2024-03-17', '2028-03-17', 'Activa'),
(4, 5, 78000, 1625.00, '2024-04-10', '2028-04-10', 'Cancelada'),
(5, 6, 21000, 437.50, '2024-05-28', '2028-05-28', 'Activa'),
(6, 7, 24000, 500.00, '2024-06-25', '2028-06-25', 'Suspendida'),
(7, 8, 59000, 1229.17, '2024-07-20', '2028-07-20', 'Activa'),
(8, 9, 71000, 1479.17, '2024-08-15', '2028-08-15', 'Cancelada'),
(9, 10, 36000, 750.00, '2024-09-22', '2028-09-22', 'Activa'),
(10, 1, 53000, 1104.17, '2024-10-18', '2028-10-18', 'Suspendida');
GO

SELECT * FROM POLIZA

-- Siniestro
INSERT INTO [dbo].[SINIESTRO] (ID_POLIZA, descripcion, fecha_siniestro, estado, monto_reclamado) VALUES
(13, 'Fractura accidental.', '2025-02-24', 'Aprobado', 46661.78),
(27, 'Pérdida de equipaje en viaje.', '2028-03-06', 'Rechazado', 32926.28),
(11, 'Hospitalización por emergencia médica.', '2024-07-27', 'Rechazado', 3033.07),
(15, 'Robo total del vehículo.', '2025-06-14', 'Rechazado', 11434.00),
(11, 'Daños por desastres naturales.', '2026-11-26', 'Pendiente', 25988.38),
(10, 'Incendio en la vivienda.', '2024-11-27', 'Aprobado', 26200.50),
(21, 'Colisión con daños parciales.', '2027-03-13', 'Rechazado', 47521.13),
(25, 'Robo total del vehículo.', '2025-04-18', 'Rechazado', 40527.64),
(10, 'Robo total del vehículo.', '2025-07-14', 'Pendiente', 20813.55),
(23, 'Daños por desastres naturales.', '2027-03-13', 'Aprobado', 17227.94),
(19, 'Robo total del vehículo.', '2024-01-25', 'Pendiente', 6509.76),
(15, 'Robo total del vehículo.', '2025-09-29', 'Rechazado', 13079.81),
(13, 'Robo total del vehículo.', '2027-05-21', 'Aprobado', 9025.08),
(5, 'Fractura accidental.', '2027-10-10', 'Aprobado', 44567.41),
(13, 'Daños por desastres naturales.', '2028-03-24', 'Aprobado', 37828.35),
(23, 'Daños por desastres naturales.', '2025-02-16', 'Pendiente', 38863.05),
(13, 'Robo total del vehículo.', '2028-01-30', 'Pendiente', 36939.58),
(19, 'Colisión con daños parciales.', '2024-08-30', 'Pendiente', 41468.51),
(17, 'Daños por desastres naturales.', '2027-02-06', 'Pendiente', 32164.75),
(19, 'Accidente de tránsito con daños a terceros.', '2028-09-14', 'Pendiente', 17349.25);
GO
SELECT * FROM SINIESTRO

-- Metodo de pago
INSERT INTO [dbo].[METODO_PAGO] (nombre_metodo, detalle) VALUES
('Tarjeta de Crédito', 'Visa, MasterCard, American Express'),
('Tarjeta de Débito', 'Tarjetas de débito de cualquier banco'),
('Transferencia Bancaria', 'Transferencia interbancaria nacional'),
('Domiciliación Bancaria', 'Cargo automático mensual en cuenta bancaria'),
('Efectivo', 'Pago en oficinas o agentes autorizados'),
('Cheque', 'Pago mediante cheque emitido a nombre de la aseguradora'),
('PayPal', 'Pago en línea a través de la plataforma PayPal'),
('Pago en Línea', 'Portal web de la aseguradora'),
('Criptomoneda', 'Pago mediante Bitcoin, Ethereum u otras criptomonedas'),
('Depósito Bancario', 'Depósito directo en cuenta bancaria de la aseguradora');
GO

SELECT *  FROM METODO_PAGO
delete METODO_PAGO

-- PAGO
INSERT INTO [dbo].[PAGO] (ID_POLIZA, ID_METODO_PAGO, fecha_pago, monto_pago) VALUES
(11, 6, '2026-08-11', 833.33),
(25, 2, '2024-01-28', 437.50),
(10, 5, '2024-12-20', 1145.83),
(6, 2, '2026-01-06', 1145.83),
(27, 9, '2028-01-05', 1229.17),
(27, 6, '2026-06-30', 1145.83),
(13, 6, '2026-10-09', 937.50),
(15, 10, '2026-12-18', 1229.17),
(3, 5, '2025-03-01', 375.00),
(11, 2, '2025-01-04', 416.67),
(12, 10, '2025-11-20', 1145.83),
(1, 4, '2026-03-10', 1145.83),
(15, 7, '2027-03-14', 1229.17),
(21, 2, '2027-03-21', 979.17),
(15, 10, '2027-02-21', 1041.67),
(10, 4, '2026-10-24', 416.67),
(9, 7, '2024-09-17', 375.00),
(19, 10, '2026-06-11', 1208.33),
(7, 1, '2028-01-06', 687.50),
(1, 1, '2028-01-10', 1041.67);


SELECT * FROM PAGO

-- Detalle de pago
INSERT INTO [dbo].[DETALLE_PAGO] (ID_PAGO, desglose, monto) VALUES
(1, 'Prima mensual completa', 833.33),
(2, 'Prima mensual completa', 437.5),
(3, 'Prima mensual (parte 1)', 521.26),
(3, 'Prima mensual (parte 2)', 624.57),
(4, 'Prima mensual completa', 1145.83),
(5, 'Prima mensual completa', 1229.17),
(6, 'Prima mensual (parte 1)', 625.52),
(6, 'Prima mensual (parte 2)', 520.31),
(7, 'Prima mensual completa', 937.5),
(8, 'Prima mensual completa', 1229.17),
(9, 'Prima mensual completa', 375.0),
(10, 'Prima mensual completa', 416.67),
(11, 'Prima mensual completa', 1145.83),
(12, 'Prima mensual completa', 1145.83),
(13, 'Prima mensual completa', 1229.17),
(14, 'Prima mensual completa', 979.17),
(15, 'Prima mensual completa', 1041.67),
(16, 'Prima mensual completa', 416.67),
(17, 'Prima mensual completa', 375.0),
(18, 'Prima mensual completa', 1208.33),
(19, 'Prima mensual (parte 1)', 354.87),
(19, 'Prima mensual (parte 2)', 332.63),
(20, 'Prima mensual completa', 1041.67);
