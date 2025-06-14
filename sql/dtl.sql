#UM MÉDICO REGISTRA UMA CONSULTA COM PRESCRIÇÃO DE "PARACETAMOL". SE O ESTOQUE FOR INSUFICIENTE, A TRANSAÇÃO É REVERTIDA
DELIMITER //
CREATE PROCEDURE RegistrarConsultaPrescricao()
BEGIN
  START TRANSACTION;
  INSERT INTO Consulta (Id_consulta, Id_paciente, Id_medico, Data_hora, Diagnostico, Observacoes, Prioridade, Status)
  VALUES (12, 1, 2, '2025-06-13 19:20:00', 'Febre alta', 'Monitorar temperatura', 'Média', 'Agendada');
  INSERT INTO Prescricao (Id_prescricao, Id_consulta, Id_medicamento, Dosagem, Frequencia, Duracao)
  VALUES (13, 12, 2, '500mg', '4x ao dia', '5 dias');
  IF (SELECT Quantidade_estoque FROM Medicamento WHERE Id_medicamento = 2) > 0 THEN
      COMMIT;
  ELSE
      ROLLBACK;
  END IF;
END //
DELIMITER ;
CALL RegistrarConsultaPrescricao();


#É REGISTRADO UMA CONSULTA, MAS COM UMA PRIORIDADE INVÁLIDA, FORÇANDO O ROLLBACK
DELIMITER //
CREATE PROCEDURE RegistrarConsultaComValidacao()
BEGIN
    START TRANSACTION;
    INSERT INTO Consulta (Id_consulta, Id_paciente, Id_medico, Data_hora, Diagnostico, Observacoes, Prioridade, Status)
    VALUES (17, 6, 5, '2025-06-13 20:40:00', 'Tontura', 'Avaliar causa', 'Crítica', 'Agendada');
    IF (SELECT Prioridade FROM Consulta WHERE Id_consulta = 17) NOT IN ('Baixa', 'Média', 'Alta') THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END //
DELIMITER ;

CALL RegistrarConsultaComValidacao();


#É REGISTRADO UMA CONSULTA, CONFIRMANDO COM COMMIT
DELIMITER //
CREATE PROCEDURE RegistrarConsultaEOcuparLeito()
BEGIN
    START TRANSACTION;
    INSERT INTO Consulta (Id_consulta, Id_paciente, Id_medico, Data_hora, Diagnostico, Observacoes, Prioridade, Status)
    VALUES (18, 10, 6, '2025-06-13 20:45:00', 'Fratura', 'Imobilizar', 'Alta', 'Agendada');
    UPDATE Leito
    SET Id_paciente = 10, Status = 'Ocupado'
    WHERE Id_leito = 10;
    IF (SELECT COUNT(*) FROM Consulta WHERE Id_consulta = 18) = 1 
       AND (SELECT Status FROM Leito WHERE Id_leito = 10) = 'Ocupado' THEN
        COMMIT;
    ELSE
        ROLLBACK;
    END IF;
END //
DELIMITER ;

CALL RegistrarConsultaEOcuparLeito();