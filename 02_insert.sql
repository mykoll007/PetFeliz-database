USE petfeliz;

-- Clientes
INSERT INTO cliente (nome, telefone) VALUES
('João Silva', '11987654321'),
('Maria Souza', '11999887766'),
('Carlos Pereira', '1188887777');

-- Pets
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES
('Rex', 'Cachorro', 5, 1),
('Luna', 'Gato', 3, 2),
('Thor', 'Cachorro', 2, 1),
('Mimi', 'Gato', 4, 3);

-- Veterinários
INSERT INTO veterinario (nome, especialidade) VALUES
('Dr. Roberto Almeida', 'Clínico Geral'),
('Dra. Ana Martins', 'Cirurgiã'),
('Dr. Pedro Lima', 'Dermatologista');

-- Consultas
INSERT INTO consulta (data, diagnostico, id_pet, id_veterinario) VALUES
('2025-02-10 10:00:00', 'Otite no ouvido esquerdo', 1, 3),
('2025-02-12 15:30:00', 'Exame de rotina', 2, 1),
('2025-02-15 09:00:00', 'Corte cirúrgico', 3, 2);

-- Medicamentos
INSERT INTO medicamento (nome, descricao) VALUES
('Amoxicilina', 'Antibiótico de amplo espectro'),
('Prednisolona', 'Anti-inflamatório'),
('Dipirona', 'Analgesico e antitérmico');

-- Medicamento_Consulta
INSERT INTO medicamento_consulta (id_consulta, id_medicamento, quantidade, dosagem) VALUES
(1, 1, 2, '1 comprimido a cada 12h'),
(1, 2, 1, '5 gotas por dia'),
(2, 3, 1, '10 ml após refeições');
