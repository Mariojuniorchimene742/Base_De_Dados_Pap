USE igreja+_system;

DROP TABLE IF EXISTS membro;

CREATE TABLE membro(
    id INT(11) INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Sobrenome VARCHAR(50) NOT NULL,
    DataNascimento DATE,
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Endereco VARCHAR(255),
    PRIMARY KEY(id)
);