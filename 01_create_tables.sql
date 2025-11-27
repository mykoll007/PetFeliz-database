CREATE DATABASE IF NOT EXISTS petfeliz;
USE petfeliz;

-- Tabela Cliente
CREATE TABLE cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

-- Tabela Pet
CREATE TABLE pet (
    id_pet INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    idade INT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela Veterinario
CREATE TABLE veterinario (
    id_veterinario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
);

-- Tabela Consulta
CREATE TABLE consulta (
    id_consulta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data DATETIME NOT NULL,
    diagnostico TEXT,
    id_pet INT NOT NULL,
    id_veterinario INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet),
    FOREIGN KEY (id_veterinario) REFERENCES veterinario(id_veterinario)
);

-- Tabela Medicamento
CREATE TABLE medicamento (
    id_medicamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Tabela Associativa Medicamento_Consulta
CREATE TABLE medicamento_consulta (
    id_consulta INT NOT NULL,
    id_medicamento INT NOT NULL,
    quantidade INT NOT NULL,
    dosagem VARCHAR(100),
    PRIMARY KEY (id_consulta, id_medicamento),
    FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta),
    FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento)
);
