USE petfeliz;

-- 1. Remover medicamento da consulta 2
DELETE FROM medicamento_consulta
WHERE id_consulta = 2 AND id_medicamento = 3;

-- 2. Deletar um pet (somente se não tiver consultas vinculadas)
DELETE FROM pet
WHERE id_pet = 4;

-- 3. Deletar um cliente que não possui pets
DELETE FROM cliente
WHERE id_cliente = 3;
