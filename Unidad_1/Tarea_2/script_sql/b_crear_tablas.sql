USE MonteroMartin;


-- ==========================================
-- TABLA CLIENTE
-- ==========================================

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    dni_clientes VARCHAR(50),
    nombre_completo VARCHAR(100),
    telefono_principal VARCHAR(50),
    correo VARCHAR(100)
);


-- ==========================================
-- TABLA MASCOTA
-- ==========================================

CREATE TABLE mascota (
    id_mascota INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50),
    raza VARCHAR(100),
    fecha_nacimiento DATE,
    id_cliente INT,

    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente)
);


-- ==========================================
-- TABLA VETERINARIO
-- ==========================================

CREATE TABLE veterinario (
    id_veterinario INT PRIMARY KEY,   
    id_cliente INT NOT NULL,
    dni VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    telefonico VARCHAR(20) NOT NULL,

    FOREIGN KEY (id_cliente)
    REFERENCES cliente(id_cliente)
);


-- ==========================================
-- TABLA CITA
-- ==========================================

CREATE TABLE cita (
    id_cita INT PRIMARY KEY,
    fecha DATETIME NOT NULL,
    diagnostico VARCHAR(50) NOT NULL,
    costo DECIMAL,                      
    id_mascota INT,
    id_veterinario INT,

    FOREIGN KEY (id_mascota)
        REFERENCES mascota(id_mascota),

    FOREIGN KEY (id_veterinario)
        REFERENCES veterinario(id_veterinario)
);


-- ==========================================
-- TABLA MEDICAMENTO
-- ==========================================

CREATE TABLE medicamento (
    id_medicamento INT PRIMARY KEY,
    nombre_medicamento VARCHAR(100),
    fabricante VARCHAR(100),
    precio DECIMAL(10,2)
);


-- ==========================================
-- TABLA PRESCRIPCION MEDICA
-- ==========================================

CREATE TABLE prescripcion_medica (
    id_prescripcion INT PRIMARY KEY,
    cantidad VARCHAR(50),
    indicaciones TEXT,
    id_medicamento INT,
    id_cita INT,

    FOREIGN KEY (id_medicamento)
        REFERENCES medicamento(id_medicamento),

    FOREIGN KEY (id_cita)
        REFERENCES cita(id_cita)
);