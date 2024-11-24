# Sistema_gestion_seguros

Caso General: Sistema de Gestión de Seguros
Una compañía aseguradora quiere implementar un sistema de base de datos para gestionar su operación diaria. La compañía ofrece diversos tipos de seguros, como seguros de vida, autos, hogar y salud. Cada cliente puede contratar varias pólizas de diferentes tipos, realizar pagos periódicos y reportar siniestros. Además, la empresa emplea agentes que supervisan las pólizas y ayudan a los clientes en diferentes áreas geográficas.

Objetivos del Sistema
El sistema debe permitir:

Gestionar la información de clientes, agentes, pólizas, pagos y siniestros.
Mantener un historial detallado de siniestros y cambios de estado.
Supervisar los pagos realizados por los clientes para evitar la suspensión de pólizas.
Optimizar la asignación de agentes a los clientes con base en áreas geográficas y carga de trabajo.
Generar reportes que ayuden en la toma de decisiones estratégicas.
Entidades Principales
Clientes

Identificación única.
Datos personales (nombre, dirección, teléfono, correo electrónico).
Relación con las pólizas contratadas.
Agentes

Identificación única.
Datos personales (nombre, área geográfica, contacto).
Relación con los clientes que supervisan.
Pólizas

Número único de póliza.
Tipo de seguro (vida, auto, hogar, salud).
Fecha de inicio y expiración.
Monto asegurado.
Estado de la póliza (activa, suspendida, cancelada).
Relación con un cliente y un agente.
Pagos

Identificación única.
Fecha del pago.
Monto pagado.
Método de pago (tarjeta, transferencia, efectivo).
Relación con una póliza.
Siniestros

Número de siniestro.
Descripción.
Fecha del siniestro.
Estado (pendiente, en proceso, rechazado, aprobado).
Relación con una póliza.
Historial de cambios de estado (con fecha y hora).
