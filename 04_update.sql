USE petfeliz;

-- 1. Atualizar telefone de um cliente
UPDATE cliente
SET telefone = '11911112222'
WHERE id_cliente = 1;

-- 2. Atualizar especialidade de um veterinário
UPDATE veterinario
SET especialidade = 'Ortopedista'
WHERE id_veterinario = 2;

-- 3. Atualizar diagnóstico de uma consulta
UPDATE consulta
SET diagnostico = 'Infecção leve tratada com antibiótico'
WHERE id_consulta = 1;
