# Sistema_gestion_seguros

## Caso: Gestión de Seguros

Una aseguradora necesita un sistema para administrar las pólizas contratadas por sus clientes. Este sistema debe permitir registrar y consultar información sobre los clientes, las pólizas emitidas, los siniestros reportados y los pagos realizados.

## Requisitos
### Clientes:
Se debe almacenar información básica de los clientes, como su tipo (persona natural o jurídica), nombre completo o razón social, número de identificación, dirección, teléfono y correo electrónico.

### Pólizas:
Cada póliza debe estar asociada a un cliente.
Se debe registrar el tipo de póliza (vida, auto, hogar, salud), el monto asegurado, la prima mensual, la fecha de inicio y la fecha de expiración.
Las pólizas deben tener un estado (activa, suspendida o cancelada).

### Siniestros:
Cada siniestro debe estar asociado a una póliza activa.
Se debe registrar la descripción del siniestro, la fecha en la que ocurrió, el estado del siniestro (pendiente, en proceso, rechazado, aprobado) y el monto reclamado.
Debe existir un historial de cambios de estado para cada siniestro, incluyendo la fecha y hora de cada cambio.

### Pagos:
Cada pago debe estar asociado a una póliza específica.
Se debe registrar la fecha del pago, el monto pagado y el método de pago (tarjeta, transferencia, efectivo).

## Reglas del Negocio <br>
-  Un cliente no puede tener más de una póliza del mismo tipo con la misma fecha de inicio.
-  Las pólizas entran en estado "Suspendida" si acumulan más de tres meses de falta de pago.
-  Solo se pueden registrar siniestros para pólizas activas.
-  El monto asegurado de una póliza debe ser mayor a cero.

## Objetivos del Sistema <br>
-  Gestionar la información de clientes, pólizas, siniestros y pagos.
-  Generar reportes sobre pólizas activas, pagos pendientes, y siniestros según su estado.
-  Automatizar las actualizaciones de estado de las pólizas y los siniestros.

# Modelo Entidad Relacion
![Gestion_Seguros](https://github.com/user-attachments/assets/d58eb640-bb5a-4f3a-aa09-486c69c4126f)

# Modelo Logico
![Modelo_Logico_prueba](https://github.com/user-attachments/assets/91cd1c19-154d-4638-9b4b-1728346ae24a)

# Modelo Fisico
![Modelo Fisico](https://github.com/user-attachments/assets/2263f312-c765-4540-ac9c-11c84d575002)


