-- UPDATES

-- 1) Atualizar telefone de um paciente
UPDATE PACIENTE
SET telefone = '51988880001'
WHERE id_paciente = 1;

-- 2) Atualizar o leito de uma internação
UPDATE INTERNACAO
SET leito = '203C'
WHERE id_internacao = 2;

-- 3) Alterar o setor de um funcionário
UPDATE FUNCIONARIO
SET id_setor = 3
WHERE id_funcionario = 1;


-- DELETES

-- 1) Deletar uma consulta específica
DELETE FROM CONSULTA
WHERE id_consulta = 3;

-- 2) Deletar um exame específico
DELETE FROM EXAME
WHERE id_exame = 3;

-- 3) Deletar uma internação sem exames vinculados
-- (garanta que os exames dessa internação já foram apagados)
DELETE FROM INTERNACAO
WHERE id_internacao = 2;
