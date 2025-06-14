#REVISA O HISTÓRICO DE CONSULTAS DE "JOÃO SILVA"
SELECT 
    p.Nome AS Paciente,
    c.Data_hora,
    pm.Nome AS Medico,
    c.Diagnostico,
    c.Status
FROM Pessoa p
JOIN Paciente pa ON p.Id_pessoa = pa.Id_pessoa
JOIN Consulta c ON pa.Id_paciente = c.Id_paciente
JOIN Medico m ON c.Id_medico = m.Id_medico
JOIN Pessoa pm ON m.Id_pessoa = pm.Id_pessoa
WHERE p.Nome = 'João Silva'
AND c.Data_hora BETWEEN '2025-06-05 00:00:00' AND '2025-06-12 14:00:00'
ORDER BY c.Data_hora DESC;

#IDENTIDICA MEDICAMENTOS COM MENOS DE 100 UNIDADES EM ESTOQUE
SELECT 
    Nome,
    Principio_ativo,
    Quantidade_estoque,
    Validade
FROM Medicamento
WHERE Quantidade_estoque < 100
ORDER BY Quantidade_estoque ASC;

#LISTA PACIENTES COM CONSULTAS PENDENTES POR ESPECIALIDADE MÉDICA
SELECT 
    p.Nome AS Paciente,
    m.Especialidade,
    c.Data_hora,
    c.Prioridade
FROM Pessoa p
JOIN Paciente pa ON p.Id_pessoa = pa.Id_pessoa
JOIN Consulta c ON pa.Id_paciente = c.Id_paciente
JOIN Medico m ON c.Id_medico = m.Id_medico
WHERE c.Status = 'Pendente'
AND c.Data_hora <= '2025-06-12 20:00:00'
ORDER BY m.Especialidade, c.Data_hora;