USE igreja+_system;

DROP TABLE IF EXISTS pastor;
CREATE TABLE pastor(
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

