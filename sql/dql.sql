#REVISA O HISTÓRICO DE CONSULTAS DE "JOÃO SILVA"
SELECT 
    p.Nome AS Paciente,
    c.Data_hora,
    pm.Nome AS Medico,
    c.Diagnostico,
    c.Status
FROM Pessoa p
JOIN Usuario u_p ON p.Id_pessoa = u_p.Id_pessoa
JOIN Paciente pa ON u_p.Id_usuario = pa.Id_usuario
JOIN Consulta c ON pa.Id_paciente = c.Id_paciente
JOIN Medico m ON c.Id_medico = m.Id_medico
JOIN Usuario u_m ON m.Id_usuario = u_m.Id_usuario
JOIN Pessoa pm ON u_m.Id_pessoa = pm.Id_pessoa
WHERE p.Nome = 'João Silva'
AND DATE(c.Data_hora) BETWEEN '2025-06-05' AND '2025-06-12'
AND (HOUR(c.Data_hora) <= 20 OR DATE(c.Data_hora) < '2025-06-12')
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
JOIN Usuario u_p ON p.Id_pessoa = u_p.Id_pessoa
JOIN Paciente pa ON u_p.Id_usuario = pa.Id_usuario
JOIN Consulta c ON pa.Id_paciente = c.Id_paciente
JOIN Medico m ON c.Id_medico = m.Id_medico
WHERE c.Status = 'Pendente'
AND (DATE(c.Data_hora) < '2025-06-12' OR (DATE(c.Data_hora) = '2025-06-12' AND TIME(c.Data_hora) <= '20:00:00'))
ORDER BY m.Especialidade, c.Data_hora;