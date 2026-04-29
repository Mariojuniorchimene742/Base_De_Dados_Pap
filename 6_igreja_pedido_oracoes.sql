USE igreja_system;

DROP TABLE IF EXISTS pedido_oracoes;

CREATE TABLE pedido_oracoes (
    id INT(11) AUTO_INCREMENT NOT NULL,
    id_user INT(11) UNSIGNED NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    tipoPedido VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user) REFERENCES users(id) 
);

INSERT INTO pedido_oracoes (id_user, email, tipoPedido, descricao)
VALUES 
(1, 'chimenejorge@gmail.com', 'Saúde', 'Peço orações pela saúde do meu pai, que está em tratamento.'),
(2, 'ana.silva@gmail.com', 'Família', 'Peço oração pela união da minha família.'),
(3, 'joao.pereira@gmail.com', 'Trabalho', 'Estou desempregado e preciso de oração para conseguir um novo emprego.'),
(4, 'maria.ferreira@gmail.com', 'Finanças', 'Peço oração para superar dificuldades financeiras.'),
(5, 'carlos.santos@gmail.com', 'Saúde', 'Peço oração pela recuperação de uma cirurgia recente.'),
(6, 'ines.lopes@gmail.com', 'Proteção', 'Peço oração por proteção espiritual e paz interior.'),
(7, 'ricardo.mendes@gmail.com', 'Estudos', 'Peço oração para conseguir foco e sucesso nos estudos.'),
(8, 'fatima.costa@gmail.com', 'Família', 'Peço oração pela restauração do meu casamento.');
SELECT * FROM pedido_oracoes;