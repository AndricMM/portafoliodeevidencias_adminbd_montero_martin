USE MonteroMartin;

INSERT INTO cliente (dni_clientes, nombre_completo, telefono_principal, correo) VALUES
('100123456-0', 'Juan Pérez', '555-1001', 'juan.perez@email.com'),
('20023456-1', 'María González', '555-1002', 'maria.gonzalez@email.com'),
('30034567-2', 'Carlos Ramírez', '555-1003', 'carlos.ramirez@email.com'),
('40045678-3', 'Ana López', '555-1004', 'ana.lopez@email.com'),
('50056789-4', 'Pedro Martínez', '555-1005', 'pedro.martinez@email.com');

INSERT INTO mascota (id_mascota, nombre, especie, raza, fecha_nacimiento, id_cliente) VALUES
(1, 'Max', 'Perro', 'Labrador', '2020-05-12', 5),
(2, 'Luna', 'Gato', 'Siamés', '2021-08-20', 3),
(3, 'Rocky', 'Perro', 'Bulldog', '2019-03-15', 1),
(4, 'Nala', 'Gato', 'Persa', '2022-01-10', 2),
(5, 'Toby', 'Perro', 'Beagle', '2020-11-25', 4);

INSERT INTO veterinario (id_veterinario, id_cliente, dni, nombre, especialidad, telefonico) VALUES
(1, 1, 'VET-001', 'Dr. Roberto Sánchez', 'Medicina interna', '555-2001'),
(2, 2, 'VET-002', 'Dra. Laura Torres', 'Dermatología', '555-2002'),
(3, 3, 'VET-003', 'Dr. Miguel Herrera', 'Cirugía', '555-003'),
(4, 4, 'VET-004', 'Dr. Sofía Castro', 'Medicina felina', '555-004'),
(5, 5, 'VET-005', 'Dr. Daniel Ruiz', 'Traumatología', '555-005');

INSERT INTO cita (id_cita, fecha, diagnostico, costo, id_mascota, id_veterinario) VALUES
(1, '2026-09-01 09:30:00', 'Infección de oído', 450.00, 5, 1),
(2, '2026-09-01 11:00:00', 'Dermatitis alérgica', 500.00, 4, 5),
(3, '2026-09-02 10:15:00', 'Dolor muscular', 400.00, 3, 3),
(4, '2026-09-03 14:30:00', 'Infección respiratoria', 550.00, 2, 4),
(5, '2026-09-04 16:00:00', 'Lesión en pata delantera', 600.00, 1, 2);

INSERT INTO medicamento (id_medicamento, nombre_medicamento, fabricante, precio) VALUES
(5, 'AntibióticoVet', 'BioPet', 300.00),
(4, 'RespiraVet', 'FarmaAnimal', 220.00),
(3, 'DolorPet', 'VetMed', 150.00),
(2, 'Dermacare', 'AnimalPharma', 250.00),
(1, 'OticVet', 'Laboratorios VetLab', 180.00);

INSERT INTO prescripcion_medica (id_prescripcion, cantidad, indicaciones, id_cita, id_medicamento) VALUES
(1, '1', 'Aplicar 2 gotas cada 8 horas por 7 días', 1, 1),
(2, '2', 'Administrar 1 tableta cada 12 horas por 5 días', 2, 2),
(3, '1', 'Administrar 1 tableta cada 24 horas por 5 días', 1, 1),
(4, '1', 'Administrar 5 ml cada 8 horas por 7 días', 4, 4),
(5, '2', 'Administrar 1 tableta cada 12 horas por 7 días', 5, 5);