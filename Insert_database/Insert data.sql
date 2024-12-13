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

