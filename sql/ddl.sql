CREATE TABLE Endereco (
    Id_endereco INT PRIMARY KEY,
    Cep VARCHAR(9),
    Complemento VARCHAR(100),
    Estado VARCHAR(2),
    Rua VARCHAR(100),
    Numero VARCHAR(10),
    Bairro VARCHAR(50),
    Cidade VARCHAR(50)
);

CREATE TABLE Pessoa (
    Id_pessoa INT PRIMARY KEY,
    Id_endereco INT,
    Nome VARCHAR(100),
    CPF VARCHAR(14),
    Telefone VARCHAR(15),
    Email VARCHAR(100),
    FOREIGN KEY (Id_endereco) REFERENCES Endereco(Id_endereco)
);

CREATE TABLE Usuario (
    Id_usuario INT PRIMARY KEY,
    Id_pessoa INT,
    Nome_usuario VARCHAR(50),
    Senha VARCHAR(100),
    Tipo_usuario VARCHAR(50),
    FOREIGN KEY (Id_pessoa) REFERENCES Pessoa(Id_pessoa) ON DELETE CASCADE
);

CREATE TABLE Medico (
    Id_medico INT PRIMARY KEY,
    Id_usuario INT,
    CRM VARCHAR(20),
    UF VARCHAR(2),
    Especialidade VARCHAR(50),
    FOREIGN KEY (Id_usuario) REFERENCES Usuario(Id_usuario) ON DELETE CASCADE
);

CREATE TABLE Paciente (
    Id_paciente INT PRIMARY KEY,
    Id_usuario INT,
    Genero VARCHAR(10),
    Celular VARCHAR(15),
    Data_nascimento DATE,
    Numero_cartao_sus VARCHAR(20),
    Nome_responsavel_legal VARCHAR(100),
    Telefone_responsavel_legal VARCHAR(15),
    Cpf_responsavel_legal VARCHAR(14),
    FOREIGN KEY (Id_usuario) REFERENCES Usuario(Id_usuario) ON DELETE CASCADE
);

CREATE TABLE Prontuario (
    Id_prontuario INT PRIMARY KEY,
    Id_paciente INT,
    Alergias VARCHAR(200),
    Doencas VARCHAR(200),
    Tipo_sanguineo VARCHAR(3),
    FOREIGN KEY (Id_paciente) REFERENCES Paciente(Id_paciente) ON DELETE CASCADE
);

CREATE TABLE Departamento (
    Id_departamento INT PRIMARY KEY,
    Nome VARCHAR(50),
    Localizacao VARCHAR(100)
);

CREATE TABLE Leito (
    Id_leito INT PRIMARY KEY,
    Id_departamento INT,
    Id_paciente INT,
    Numero_leito VARCHAR(10),
    Tipo VARCHAR(50),
    Status VARCHAR(20),
    FOREIGN KEY (Id_departamento) REFERENCES Departamento(Id_departamento) ON DELETE SET NULL,
    FOREIGN KEY (Id_paciente) REFERENCES Paciente(Id_paciente) ON DELETE SET NULL
);

CREATE TABLE Consulta (
    Id_consulta INT PRIMARY KEY,
    Id_paciente INT,
    Id_medico INT,
    Data_hora DATETIME,
    Diagnostico VARCHAR(200),
    Observacoes VARCHAR(500),
    Prioridade VARCHAR(20),
    Status VARCHAR(20),
    FOREIGN KEY (Id_paciente) REFERENCES Paciente(Id_paciente) ON DELETE CASCADE,
    FOREIGN KEY (Id_medico) REFERENCES Medico(Id_medico) ON DELETE SET NULL
);

CREATE TABLE Exame (
    Id_exame INT PRIMARY KEY,
    Id_paciente INT,
    Id_medico INT,
    Data_solicitacao DATETIME,
    Data_realizacao DATETIME,
    Tipo_exame VARCHAR(50),
    Resultado VARCHAR(500),
    Status VARCHAR(20),
    FOREIGN KEY (Id_paciente) REFERENCES Paciente(Id_paciente) ON DELETE CASCADE,
    FOREIGN KEY (Id_medico) REFERENCES Medico(Id_medico) ON DELETE SET NULL
);

CREATE TABLE Medicamento (
    Id_medicamento INT PRIMARY KEY,
    Nome VARCHAR(100),
    Principio_ativo VARCHAR(100),
    Quantidade_estoque INT,
    Validade DATE
);

CREATE TABLE Prescricao (
    Id_prescricao INT PRIMARY KEY,
    Id_consulta INT,
    Id_medicamento INT,
    Dosagem VARCHAR(50),
    Frequencia VARCHAR(50),
    Duracao VARCHAR(50),
    FOREIGN KEY (Id_consulta) REFERENCES Consulta(Id_consulta) ON DELETE CASCADE,
    FOREIGN KEY (Id_medicamento) REFERENCES Medicamento(Id_medicamento) ON DELETE SET NULL
);

CREATE TABLE Medico_Departamento (
    Id_medico INT,
    Id_departamento INT,
    PRIMARY KEY (Id_medico, Id_departamento),
    FOREIGN KEY (Id_medico) REFERENCES Medico(Id_medico) ON DELETE CASCADE,
    FOREIGN KEY (Id_departamento) REFERENCES Departamento(Id_departamento) ON DELETE CASCADE
);

