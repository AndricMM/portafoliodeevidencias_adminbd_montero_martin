USE selva_viva;

INSERT INTO usuarios (id_usuario, nombre, correo) VALUES
(1, 'Ana López', 'ana.lopez@selvaviva.mx'),
(2, 'Carlos Pech', 'carlos.pech@selvaviva.mx'),
(3, 'María Canul', 'maria.canul@selvaviva.mx');

INSERT INTO especies (id_especie, nombre_comun, nombre_cientifico, bioma, habito) VALUES
(1, 'Jaguar', 'Panthera onca', 'Selva tropical', 'Nocturno'),
(2, 'Mono araña', 'Ateles geoffroyi', 'Selva tropical', 'Diurno'),
(3, 'Cocodrilo de pantano', 'Crocodylus moreletii', 'Manglar', 'Nocturno');

INSERT INTO areas (id_area, nombre, bioma, capacidad_maxima, ocupacion_actual) VALUES
(1, 'Recinto Felinos A', 'Selva tropical', 2, 1),
(2, 'Recinto Primates', 'Selva tropical', 6, 1),
(3, 'Estanque Manglar', 'Manglar', 3, 0);

INSERT INTO animales (id_animal, id_especie, id_area, nombre_identificador, fecha_ingreso, estado_salud, estatus) VALUES
(1, 1, 1, 'JAG-001 Balam', '2026-08-02 10:00:00', 'Critico', 'En resguardo'),
(2, 2, 2, 'MON-001 Chispa', '2026-08-20 15:30:00', 'Estable', 'En resguardo'),
(3, 3, NULL, 'COC-001 Kan', '2026-07-11 09:00:00', 'Estable', 'Trasladado');

INSERT INTO diagnosticos (id_diagnostico, id_animal, id_veterinario, fecha, descripcion, tratamiento, estado_salud) VALUES
(1, 1, 2, '2026-08-02 11:30:00', 'Herida en extremidad posterior', 'Cirugía y analgésico', 'Critico'),
(2, 2, 2, '2026-08-20 16:00:00', 'Deshidratación leve', 'Suero oral', 'Estable'),
(3, 3, 2, '2026-07-12 10:15:00', 'Lesiones en escamas', 'Limpieza y pomada', 'Estable');

INSERT INTO movimientos (id_movimiento, id_animal, id_usuario_autoriza, tipo, origen, destino, fecha, motivo) VALUES
(1, 2, 1, 'Reubicacion interna', 'Recinto Felinos A', 'Recinto Primates', '2026-08-21 09:00:00', 'Registrado por error en área de felinos'),
(2, 3, 1, 'Traslado externo', 'Estanque Manglar', 'UMA Cocodrilario Peninsular', '2026-09-05 08:00:00', 'Traslado a UMA especializada'),
(3, 1, 1, 'Reubicacion interna', 'Recinto Primates', 'Recinto Felinos A', '2026-08-03 12:00:00', 'Aislamiento por estado crítico');

CREATE INDEX idx_animales_estado ON animales(estado_salud);
CREATE INDEX idx_areas_bioma ON areas(bioma);
CREATE INDEX idx_diagnosticos_animal_fecha ON diagnosticos(id_animal, fecha);
CREATE INDEX idx_movimientos_animal_fecha ON movimientos(id_animal, fecha);