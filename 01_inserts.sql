-- SETOR
INSERT INTO SETOR (id_setor, nome_setor) VALUES
(1, 'Emergência'),
(2, 'Enfermaria'),
(3, 'UTI');

-- FUNCIONARIO
INSERT INTO FUNCIONARIO (id_funcionario, nome, cargo, id_setor) VALUES
(1, 'Ana Silva',   'Enfermeira',    2),
(2, 'Bruno Souza', 'Enfermeiro',    3),
(3, 'Carla Lima',  'Recepcionista', 1);

-- PACIENTE
INSERT INTO PACIENTE (id_paciente, nome, cpf, data_nascimento, telefone, endereco) VALUES
(1, 'João Pereira',  '12345678901', '1990-05-10', '51999990001', 'Rua A, 123'),
(2, 'Maria Oliveira','23456789012', '1985-09-22', '51999990002', 'Rua B, 456'),
(3, 'Pedro Santos',  '34567890123', '2000-01-15', '51999990003', 'Rua C, 789');

-- MEDICO
INSERT INTO MEDICO (id_medico, nome, crm, especialidade) VALUES
(1, 'Dr. Lucas Costa', '12345', 'Cardiologia'),
(2, 'Dra. Ana Dias',   '67890', 'Clínica Geral');

-- CONSULTA
INSERT INTO CONSULTA (id_consulta, id_paciente, id_medico, data_consulta) VALUES
(1, 1, 1, '2025-11-10 09:00:00'),
(2, 2, 2, '2025-11-11 10:30:00'),
(3, 3, 2, '2025-11-12 14:15:00');

-- INTERNACAO
INSERT INTO INTERNACAO (id_internacao, id_paciente, id_funcionario, data_entrada, data_alta, leito) VALUES
(1, 1, 1, '2025-11-15 18:00:00', NULL, '101A'),
(2, 2, 2, '2025-11-16 12:00:00', NULL, '202B');

-- EXAME
INSERT INTO EXAME (id_exame, id_internacao, id_medico, tipo_exame, data_exame, resultado) VALUES
(1, 1, 1, 'Hemograma',       '2025-11-16 08:00:00', 'Normal'),
(2, 1, 1, 'Raio-X de Tórax', '2025-11-16 10:00:00', 'Sem alterações'),
(3, 2, 2, 'Tomografia',      '2025-11-17 09:30:00', 'Em análise');

-- PRONTUARIO
INSERT INTO PRONTUARIO (id_prontuario, id_paciente, id_setor, observacoes) VALUES
(1, 1, 2, 'Paciente com histórico de hipertensão.'),
(2, 2, 3, 'Paciente em observação na UTI.'),
(3, 3, 1, 'Paciente atendido na emergência por trauma leve.');
