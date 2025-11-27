USE petfeliz;

-- 1. Listar todos os pets com o nome do cliente
SELECT p.nome AS pet, p.especie, c.nome AS cliente
FROM pet p
JOIN cliente c ON p.id_cliente = c.id_cliente;

-- 2. Listar consultas com o nome do veterinário e do pet
SELECT co.id_consulta, co.data, p.nome AS pet, v.nome AS veterinario
FROM consulta co
JOIN pet p ON co.id_pet = p.id_pet
JOIN veterinario v ON co.id_veterinario = v.id_veterinario
ORDER BY co.data DESC;

-- 3. Buscar todos os medicamentos utilizados na consulta 1
SELECT m.nome, mc.quantidade, mc.dosagem
FROM medicamento_consulta mc
JOIN medicamento m ON mc.id_medicamento = m.id_medicamento
WHERE mc.id_consulta = 1;

-- 4. Consultar apenas gatos cadastrados
SELECT * FROM pet WHERE especie = 'Gato';

-- 5. Listar os 2 veterinários mais recentes
SELECT * FROM veterinario ORDER BY id_veterinario DESC LIMIT 2;
