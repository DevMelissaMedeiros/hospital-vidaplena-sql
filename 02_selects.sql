-- 1) Listar todos os pacientes em ordem alfabética
SELECT
    id_paciente,
    nome,
    cpf,
    data_nascimento
FROM PACIENTE
ORDER BY nome;

-- 2) Listar consultas com nome do paciente e do médico
SELECT
    C.id_consulta,
    C.data_consulta,
    P.nome AS paciente,
    M.nome AS medico
FROM CONSULTA C
JOIN PACIENTE P ON P.id_paciente = C.id_paciente
JOIN MEDICO   M ON M.id_medico   = C.id_medico
ORDER BY C.data_consulta;

-- 3) Listar exames de uma internação específica
SELECT
    E.id_exame,
    E.tipo_exame,
    E.data_exame,
    E.resultado
FROM EXAME E
WHERE E.id_internacao = 1;

-- 4) Listar pacientes que ainda estão internados (sem alta)
SELECT
    I.id_internacao,
    P.nome AS paciente,
    I.leito,
    I.data_entrada
FROM INTERNACAO I
JOIN PACIENTE P ON P.id_paciente = I.id_paciente
WHERE I.data_alta IS NULL;

-- 5) Quantidade de internações por paciente
SELECT
    P.nome,
    COUNT(I.id_internacao) AS total_internacoes
FROM PACIENTE P
LEFT JOIN INTERNACAO I ON I.id_paciente = P.id_paciente
GROUP BY P.nome;
