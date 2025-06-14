#UM NOVO MÉDICO, "RAFAEL SANTOS", FOI CONTRATADO E PRECISA DE ACESSO AO SISTEMA PARA REGISTRAR CONSULTAS E EXAMES
CREATE USER 'rafael.santos'@'localhost' IDENTIFIED BY 'senha_segura_789';
GRANT SELECT, INSERT, UPDATE ON hospital_vitalis.Consulta TO 'rafael.santos'@'localhost';
GRANT SELECT, INSERT, UPDATE ON hospital_vitalis.Exame TO 'rafael.santos'@'localhost';
GRANT SELECT ON hospital_vitalis.Prontuario TO 'rafael.santos'@'localhost';

#UMA ENFERMEIRA, "JULIANA PEREIRA" PRECISA GERENCIAR LEITOS E PACIENTES. ASSIM, RECEBER ACESSO PARA ATUALIZAR E CONSULTAR LEITO E PACIENTE
CREATE USER 'juliana.pereira'@'localhost' IDENTIFIED BY 'senha_segura_505';
GRANT SELECT, UPDATE ON hospital_vitalis.Leito TO 'juliana.pereira'@'localhost';
GRANT SELECT, UPDATE ON hospital_vitalis.Paciente TO 'juliana.pereira'@'localhost';

#UMA RECEPCIONISTA, "ANA.USER", FOI DEMITIDA E SEU ACESSO AO SISTEMA DEVE SER REVOGADO
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'ana.user'@'localhost';
DROP USER 'ana.user'@'localhost';

#UM MÉDICO, "Pedro Souza", FOI PROMOVIDO A ESPECIALISTA EM PEDIATRIA E AGORA PODE ACESSAR  E MODIFICAR DADOS DE PRONTUÁRIOS DE PACIENTES PEDIÁTRICOS
CREATE USER 'pedro.souza'@'localhost' IDENTIFIED BY 'pediatra_789';
GRANT SELECT, INSERT, UPDATE ON hospital_vitalis.Prontuario TO 'pedro.souza'@'localhost';
GRANT SELECT, INSERT, UPDATE ON hospital_vitalis.Consulta TO 'pedro.souza'@'localhost';
GRANT SELECT ON hospital_vitalis.Paciente TO 'pedro.souza'@'localhost';
FLUSH PRIVILEGES;
