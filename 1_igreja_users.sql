USE igreja_system;

DROP TABLE IF EXISTS users;


CREATE TABLE users(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL, 
    telefone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Inserção de dados na tabela users    
INSERT INTO users (nome, telefone, email, password) VALUES
('Arthur Amaral', '912345678', 'arthur.amaral@email.com', '1234'),
('Fabio Vitoriano', '934567890', 'fabio.vitoriano@email.com', '1234'),
('Davi Clemente', '987654321', 'davi.clemente@email.com', '1234'),
('Francisco Prino', '923456789', 'francisco.prino@email.com', '1234'),
('Gerry Trindade', '915678234', 'gerry.trindade@email.com', '1234'),
('Henrique Morais', '936789451', 'henrique.morais@email.com', '1234'),
('Karamjit Singh', '918234567', 'karamjit.singh@email.com', '1234'),
('Mario Junior', '932145678', 'mario.junior@email.com', '1234'),
('Marco Figueiredo', '914567890', 'marco.figueiredo@email.com', '1234'),
('Rodrigo Andraz', '937654123', 'rodrigo.andraz@email.com', '1234');