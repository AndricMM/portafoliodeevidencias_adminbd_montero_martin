CREATE DATABASE IF NOT EXISTS selva_viva;
USE selva_viva;

CREATE TABLE usuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  correo VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE especies (
  id_especie INT AUTO_INCREMENT PRIMARY KEY,
  nombre_comun VARCHAR(100) NOT NULL,
  nombre_cientifico VARCHAR(120) NOT NULL UNIQUE,
  bioma VARCHAR(50) NOT NULL,
  habito VARCHAR(20) NOT NULL
);

CREATE TABLE areas (
  id_area INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  bioma VARCHAR(50) NOT NULL,
  capacidad_maxima INT NOT NULL,
  ocupacion_actual INT NOT NULL
);

CREATE TABLE animales (
  id_animal INT AUTO_INCREMENT PRIMARY KEY,
  id_especie INT NOT NULL,
  id_area INT NULL,
  nombre_identificador VARCHAR(50) NOT NULL UNIQUE,
  fecha_ingreso DATETIME NOT NULL,
  estado_salud VARCHAR(20) NOT NULL,
  estatus VARCHAR(20) NOT NULL,
  CONSTRAINT animales_especie FOREIGN KEY (id_especie) REFERENCES especies(id_especie),
  CONSTRAINT animales_area FOREIGN KEY (id_area) REFERENCES areas(id_area)
);

CREATE TABLE diagnosticos (
  id_diagnostico INT AUTO_INCREMENT PRIMARY KEY,
  id_animal INT NOT NULL,
  id_veterinario INT NOT NULL,
  fecha DATETIME NOT NULL,
  descripcion VARCHAR(250) NOT NULL,
  tratamiento VARCHAR(250),
  estado_salud VARCHAR(20) NOT NULL,
  CONSTRAINT diagnosticos_animal FOREIGN KEY (id_animal) REFERENCES animales(id_animal),
  CONSTRAINT diagnosticos_vet FOREIGN KEY (id_veterinario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE movimientos (
  id_movimiento INT AUTO_INCREMENT PRIMARY KEY,
  id_animal INT NOT NULL,
  id_usuario_autoriza INT NOT NULL,
  tipo VARCHAR(30) NOT NULL,
  origen VARCHAR(150) NOT NULL,
  destino VARCHAR(150) NOT NULL,
  fecha DATETIME NOT NULL,
  motivo VARCHAR(250) NOT NULL,
  CONSTRAINT movimientos_animal FOREIGN KEY (id_animal) REFERENCES animales(id_animal),
  CONSTRAINT movimientos_usuario FOREIGN KEY (id_usuario_autoriza) REFERENCES usuarios(id_usuario)
);
