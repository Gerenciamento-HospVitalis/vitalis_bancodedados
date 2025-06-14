#INSERE DADOS
INSERT INTO Endereco (Id_endereco, Cep, Complemento, Estado, Rua, Numero, Bairro, Cidade) VALUES
(1, '12345-678', 'Apto 101', 'SP', 'Rua das Flores', '100', 'Centro', 'São Paulo'),
(2, '23456-789', 'Casa 2', 'RJ', 'Av. Atlântica', '200', 'Copacabana', 'Rio de Janeiro'),
(3, '34567-890', 'Bloco B', 'MG', 'Rua da Paz', '300', 'Savassi', 'Belo Horizonte'),
(4, '45678-901', '', 'PR', 'Rua das Palmeiras', '400', 'Batel', 'Curitiba'),
(5, '56789-012', 'Fundos', 'RS', 'Av. Farrapos', '500', 'Centro', 'Porto Alegre'),
(6, '67890-123', 'Apto 305', 'SC', 'Rua das Araucárias', '600', 'Trindade', 'Florianópolis'),
(7, '78901-234', '', 'BA', 'Rua do Sol', '700', 'Pelourinho', 'Salvador'),
(8, '89012-345', 'Casa 15', 'PE', 'Av. Boa Viagem', '800', 'Boa Viagem', 'Recife'),
(9, '90123-456', 'Apto 12', 'DF', 'Setor Comercial Sul', '900', 'Asa Sul', 'Brasília'),
(10, '01234-567', '', 'ES', 'Rua da Praia', '1000', 'Praia do Canto', 'Vitória');

INSERT INTO Pessoa (Id_pessoa, Id_endereco, Nome, CPF, Telefone, Email) VALUES
(1, 1, 'João Silva', '123.456.789-00', '(11) 98765-4321', 'joao.silva@email.com'),
(2, 2, 'Maria Oliveira', '234.567.890-11', '(21) 98765-4322', 'maria.oliveira@email.com'),
(3, 3, 'Pedro Souza', '345.678.901-22', '(31) 98765-4323', 'pedro.souza@email.com'),
(4, 4, 'Ana Costa', '456.789.012-33', '(41) 98765-4324', 'ana.costa@email.com'),
(5, 5, 'Carlos Lima', '567.890.123-44', '(51) 98765-4325', 'carlos.lima@email.com'),
(6, 6, 'Fernanda Alves', '678.901.234-55', '(47) 98765-4326', 'fernanda.alves@email.com'),
(7, 7, 'Rafael Santos', '789.012.345-66', '(71) 98765-4327', 'rafael.santos@email.com'),
(8, 8, 'Juliana Pereira', '890.123.456-77', '(81) 98765-4328', 'juliana.pereira@email.com'),
(9, 9, 'Lucas Mendes', '901.234.567-88', '(61) 98765-4329', 'lucas.mendes@email.com'),
(10, 10, 'Beatriz Rocha', '012.345.678-99', '(27) 98765-4330', 'beatriz.rocha@email.com');

INSERT INTO Medico (Id_medico, Id_pessoa, CRM, UF, Especialidade) VALUES
(1, 1, 'CRM12345', 'SP', 'Cardiologia'),
(2, 2, 'CRM23456', 'RJ', 'Ortopedia'),
(3, 3, 'CRM34567', 'MG', 'Pediatria'),
(4, 4, 'CRM45678', 'PR', 'Neurologia'),
(5, 5, 'CRM56789', 'RS', 'Clínica Geral'),
(6, 6, 'CRM67890', 'SC', 'Dermatologia'),
(7, 7, 'CRM78901', 'BA', 'Oftalmologia'),
(8, 8, 'CRM89012', 'PE', 'Ginecologia'),
(9, 9, 'CRM90123', 'DF', 'Psiquiatria'),
(10, 10, 'CRM01234', 'ES', 'Cirurgia');

INSERT INTO Paciente (Id_paciente, Id_pessoa, Genero, Celular, Data_nascimento, Numero_cartao_sus, Nome_responsavel_legal, Telefone_responsavel_legal, Cpf_responsavel_legal) VALUES
(1, 1, 'Feminino', '(11) 98765-4321', '1990-05-15', 'SUS1234567', 'Maria Silva', '(11) 98765-4322', '234.567.890-11'),
(2, 2, 'Masculino', '(21) 98765-4322', '1985-09-20', 'SUS2345678', 'João Oliveira', '(21) 98765-4323', '345.678.901-22'),
(3, 3, 'Feminino', '(31) 98765-4323', '2000-03-10', 'SUS3456789', 'Ana Souza', '(31) 98765-4324', '456.789.012-33'),
(4, 4, 'Masculino', '(41) 98765-4324', '1975-12-25', 'SUS4567890', 'Pedro Costa', '(41) 98765-4325', '567.890.123-44'),
(5, 5, 'Feminino', '(51) 98765-4325', '1995-07-30', 'SUS5678901', 'Lucia Lima', '(51) 98765-4326', '678.901.234-55'),
(6, 6, 'Masculino', '(47) 98765-4326', '1988-11-05', 'SUS6789012', 'Rafael Alves', '(47) 98765-4327', '789.012.345-66'),
(7, 7, 'Feminino', '(71) 98765-4327', '2002-04-18', 'SUS7890123', 'Juliana Santos', '(71) 98765-4328', '890.123.456-77'),
(8, 8, 'Masculino', '(81) 98765-4328', '1992-08-12', 'SUS8901234', 'Lucas Pereira', '(81) 98765-4329', '901.234.567-88'),
(9, 9, 'Feminino', '(61) 98765-4329', '1980-01-25', 'SUS9012345', 'Beatriz Mendes', '(61) 98765-4330', '012.345.678-99'),
(10, 10, 'Masculino', '(27) 98765-4330', '1998-06-14', 'SUS0123456', 'Carlos Rocha', '(27) 98765-4331', '123.456.789-00');

INSERT INTO Prontuario (Id_prontuario, Id_paciente, Alergias, Doencas, Tipo_sanguineo) VALUES
(1, 1, 'Penicilina', 'Hipertensão', 'A+'),
(2, 2, 'Aspirina', 'Diabetes', 'B-'),
(3, 3, 'Nenhuma', 'Asma', 'AB+'),
(4, 4, 'Amoxilina', 'Artrite', 'O-'),
(5, 5, 'Nenhuma', 'Gripe', 'A-'),
(6, 6, 'Ibuprofeno', 'Rinite', 'B+'),
(7, 7, 'Nenhuma', 'Febre', 'AB-'),
(8, 8, 'Paracetamol', 'Sinusite', 'O+'),
(9, 9, 'Nenhuma', 'Colesterol', 'A+'),
(10, 10, 'Dipirona', 'Migraña', 'B-');

INSERT INTO Departamento (Id_departamento, Nome, Localizacao) VALUES
(1, 'Cardiologia', 'Prédio A, 2º andar'),
(2, 'Ortopedia', 'Prédio B, 1º andar'),
(3, 'Pediatria', 'Prédio C, 3º andar'),
(4, 'Neurologia', 'Prédio A, 4º andar'),
(5, 'Clínica Geral', 'Prédio B, 2º andar'),
(6, 'Dermatologia', 'Prédio C, 1º andar'),
(7, 'Oftalmologia', 'Prédio A, 3º andar'),
(8, 'Ginecologia', 'Prédio B, 4º andar'),
(9, 'Psiquiatria', 'Prédio C, 2º andar'),
(10, 'Cirurgia', 'Prédio A, 1º andar');

INSERT INTO Leito (Id_leito, Id_departamento, Id_paciente, Numero_leito, Tipo, Status) VALUES
(1, 1, 1, '101', 'Enfermaria', 'Ocupado'),
(2, 2, 2, '202', 'UTI', 'Ocupado'),
(3, 3, 3, '303', 'Enfermaria', 'Ocupado'),
(4, 4, NULL, '404', 'UTI', 'Livre'),
(5, 5, 5, '505', 'Enfermaria', 'Ocupado'),
(6, 6, NULL, '606', 'UTI', 'Livre'),
(7, 7, 7, '707', 'Enfermaria', 'Ocupado'),
(8, 8, NULL, '808', 'UTI', 'Livre'),
(9, 9, 9, '909', 'Enfermaria', 'Ocupado'),
(10, 10, NULL, '1010', 'UTI', 'Livre');

INSERT INTO Consulta (Id_consulta, Id_paciente, Id_medico, Data_hora, Diagnostico, Observacoes, Prioridade, Status) VALUES
(1, 1, 1, '2025-06-12 14:00:00', 'Taquicardia', 'Paciente relatou dor no peito', 'Alta', 'Concluída'),
(2, 2, 2, '2025-06-12 15:00:00', 'Fratura', 'Raio-X solicitado', 'Média', 'Agendada'),
(3, 3, 3, '2025-06-12 16:00:00', 'Febre alta', 'Observar por 24h', 'Alta', 'Concluída'),
(4, 4, 4, '2025-06-12 17:00:00', 'Dor de cabeça', 'Exame neurológico', 'Baixa', 'Pendente'),
(5, 5, 5, '2025-06-12 18:00:00', 'Gripe', 'Repouso indicado', 'Média', 'Concluída'),
(6, 6, 6, '2025-06-12 19:00:00', 'Alergia', 'Teste de pele', 'Alta', 'Agendada'),
(7, 7, 7, '2025-06-12 20:00:00', 'Visão turva', 'Consulta oftalmológica', 'Média', 'Pendente'),
(8, 8, 8, '2025-06-12 21:00:00', 'Infecção', 'Antibióticos prescritos', 'Alta', 'Concluída'),
(9, 9, 9, '2025-06-12 22:00:00', 'Ansiedade', 'Terapia sugerida', 'Baixa', 'Agendada'),
(10, 10, 10, '2025-06-12 23:00:00', 'Ferimento', 'Cirurgia agendada', 'Alta', 'Pendente');

INSERT INTO Exame (Id_exame, Id_paciente, Id_medico, Data_solicitacao, Data_realizacao, Tipo_exame, Resultado, Status) VALUES
(1, 1, 1, '2025-06-12 14:00:00', '2025-06-12 15:00:00', 'Eletrocardiograma', 'Normal', 'Realizado'),
(2, 2, 2, '2025-06-12 15:00:00', NULL, 'Raio-X', '', 'Pendente'),
(3, 3, 3, '2025-06-12 16:00:00', '2025-06-12 17:00:00', 'Hemograma', 'Leucocitose', 'Realizado'),
(4, 4, 4, '2025-06-12 17:00:00', NULL, 'Ressonância', '', 'Pendente'),
(5, 5, 5, '2025-06-12 18:00:00', '2025-06-12 19:00:00', 'Teste de gripe', 'Positivo', 'Realizado'),
(6, 6, 6, '2025-06-12 19:00:00', NULL, 'Teste de alergia', '', 'Pendente'),
(7, 7, 7, '2025-06-12 20:00:00', '2025-06-12 21:00:00', 'Exame de vista', 'Miopia', 'Realizado'),
(8, 8, 8, '2025-06-12 21:00:00', NULL, 'Cultura de urina', '', 'Pendente'),
(9, 9, 9, '2025-06-12 22:00:00', '2025-06-12 23:00:00', 'Exame psicológico', 'Normal', 'Realizado'),
(10, 10, 10, '2025-06-12 23:00:00', NULL, 'Tomografia', '', 'Pendente');

INSERT INTO Medicamento (Id_medicamento, Nome, Principio_ativo, Quantidade_estoque, Validade) VALUES
(1, 'Aspirina', 'Ácido acetilsalicílico', 100, '2026-06-01'),
(2, 'Paracetamol', 'Paracetamol', 150, '2026-07-01'),
(3, 'Amoxilina', 'Amoxicilina', 120, '2026-08-01'),
(4, 'Ibuprofeno', 'Ibuprofeno', 80, '2026-09-01'),
(5, 'Omeprazol', 'Omeprazol', 90, '2026-10-01'),
(6, 'Dipirona', 'Metamizol sódico', 110, '2026-11-01'),
(7, 'Losartana', 'Losartana potássica', 70, '2026-12-01'),
(8, 'Atorvastatina', 'Atorvastatina', 95, '2027-01-01'),
(9, 'Salbutamol', 'Salbutamol', 85, '2027-02-01'),
(10, 'Ciprofloxacino', 'Ciprofloxacino', 75, '2027-03-01');

INSERT INTO Prescricao (Id_prescricao, Id_consulta, Id_medicamento, Dosagem, Frequencia, Duracao) VALUES
(1, 1, 1, '100mg', '2x ao dia', '5 dias'),
(2, 2, 3, '500mg', '3x ao dia', '7 dias'),
(3, 3, 2, '500mg', '4x ao dia', '3 dias'),
(4, 5, 4, '200mg', '2x ao dia', '5 dias'),
(5, 6, 6, '1g', '3x ao dia', '7 dias'),
(6, 7, 7, '50mg', '1x ao dia', '10 dias'),
(7, 8, 5, '20mg', '2x ao dia', '5 dias'),
(8, 9, 9, '100mcg', '4x ao dia', '3 dias'),
(9, 10, 10, '500mg', '2x ao dia', '7 dias'),
(10, 1, 8, '10mg', '1x ao dia', '30 dias');

INSERT INTO Medico_Departamento (Id_medico, Id_departamento) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Usuario (Id_usuario, Id_pessoa, Nome_usuario, Senha, Tipo_usuario) VALUES
(1, 1, 'joao.med', 'senha123', 'Médico'),
(2, 2, 'maria.med', 'senha456', 'Médico'),
(3, 3, 'pedro.med', 'senha789', 'Médico'),
(4, 4, 'ana.user', 'senha101', 'Recepcionista'),
(5, 5, 'carlos.enf', 'senha202', 'Enfermeiro'),
(6, 6, 'fernanda.user', 'senha303', 'Recepcionista'),
(7, 7, 'rafael.med', 'senha404', 'Médico'),
(8, 8, 'juliana.enf', 'senha505', 'Enfermeiro'),
(9, 9, 'lucas.pac', 'senha606', 'Paciente'),
(10, 10, 'beatriz.pac', 'senha707', 'Paciente');

INSERT INTO Exame (Id_exame, Id_paciente, Id_medico, Data_solicitacao, Data_realizacao, Tipo_exame, Resultado, Status) VALUES
(11, 1, 1, '2025-06-12 14:30:00', NULL, 'Eletrocardiograma', '', 'Pendente'),
(12, 5, 5, '2025-06-12 18:30:00', NULL, 'Teste de gripe', '', 'Pendente'); 

#SELECIONA DETERMINADAS INFORMAÇÕES
SELECT 
    p.Nome AS Paciente,
    c.Data_hora,
    c.Prioridade,
    pm.Nome AS Medico,
    c.Status
FROM Pessoa p
JOIN Paciente pa ON p.Id_pessoa = pa.Id_pessoa
JOIN Consulta c ON pa.Id_paciente = c.Id_paciente
JOIN Medico m ON c.Id_medico = m.Id_medico
JOIN Pessoa pm ON m.Id_pessoa = pm.Id_pessoa
WHERE DATE(c.Data_hora) = '2025-06-12'
AND c.Prioridade = 'Alta'
AND c.Status = 'Agendada'
ORDER BY c.Data_hora;

SELECT 
    p.Nome AS Paciente,
    l.Numero_leito,
    l.Tipo,
    e.Tipo_exame,
    e.Data_solicitacao,
    pm.Nome AS Medico_Responsavel
FROM Pessoa p
JOIN Paciente pa ON p.Id_pessoa = pa.Id_pessoa
JOIN Leito l ON pa.Id_paciente = l.Id_paciente
JOIN Exame e ON pa.Id_paciente = e.Id_paciente
JOIN Medico m ON e.Id_medico = m.Id_medico
JOIN Pessoa pm ON m.Id_pessoa = pm.Id_pessoa
WHERE l.Status = 'Ocupado'
AND e.Status = 'Pendente'
ORDER BY l.Numero_leito;

SELECT 
    p.Nome AS Paciente,
    m.Nome AS Medicamento,
    pr.Dosagem,
    pr.Frequencia,
    pr.Duracao,
    c.Data_hora
FROM Pessoa p
JOIN Paciente pa ON p.Id_pessoa = pa.Id_pessoa
JOIN Consulta c ON pa.Id_paciente = c.Id_paciente
JOIN Prescricao pr ON c.Id_consulta = pr.Id_consulta
JOIN Medicamento m ON pr.Id_medicamento = m.Id_medicamento
WHERE DATE(c.Data_hora) = '2025-06-12'
AND c.Status = 'Concluída'
ORDER BY c.Data_hora;

SELECT 
    p.Nome AS Paciente,
    pr.Alergias,
    pr.Doencas
FROM Pessoa p
JOIN Paciente pa ON p.Id_pessoa = pa.Id_pessoa
JOIN Prontuario pr ON pa.Id_paciente = pr.Id_paciente
WHERE pr.Alergias != 'Nenhuma'
ORDER BY p.Nome;

#ALTERA DADOS
UPDATE Exame
SET Data_realizacao = '2025-06-12 14:00:00',
    Resultado = 'Fratura no braço direito',
    Status = 'Realizado'
WHERE Id_exame = 2;


UPDATE Leito
SET Status = 'Livre',
    Id_paciente = NULL
WHERE Id_leito = 1;

UPDATE Consulta
SET Diagnostico = 'Infecção respiratória aguda',
    Observacoes = CONCAT(Observacoes, ' | Reavaliação às 14:00 confirmou infecção respiratória.'),
    Data_hora = '2025-06-12 14:00:00'
WHERE Id_consulta = 5;


#EXCLUI DADOS
DELETE FROM Prescricao
WHERE Id_consulta = 6;

DELETE FROM Consulta
WHERE Id_consulta = 6;

DELETE FROM Usuario
WHERE Id_usuario = 8;




