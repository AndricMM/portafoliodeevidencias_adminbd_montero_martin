USE MonteroMartin;

-- mascota → cliente
ALTER TABLE mascota
ADD CONSTRAINT fk_mascota_cliente
FOREIGN KEY (id_cliente)
REFERENCES cliente(id_cliente);


-- cita → veterinario
ALTER TABLE cita
ADD CONSTRAINT fk_cita_veterinario
FOREIGN KEY (id_veterinario)
REFERENCES veterinario(id_veterinario);


-- cita → mascota
ALTER TABLE cita
ADD CONSTRAINT fk_cita_mascota
FOREIGN KEY (id_mascota)
REFERENCES mascota(id_mascota);


-- medicamento → prescripcion_medica
ALTER TABLE prescripcion_medica
ADD CONSTRAINT fk_prescripcion_medicamento
FOREIGN KEY (id_medicamento)
REFERENCES medicamento(id_medicamento);


-- cita → prescripcion_medica
ALTER TABLE prescripcion_medica
ADD CONSTRAINT fk_prescripcion_cita
FOREIGN KEY (id_cita)
REFERENCES cita(id_cita);