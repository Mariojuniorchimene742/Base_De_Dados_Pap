USE igreja_system;

DROP TABLE IF EXISTS pedido_oracoes;

CREATE TABLE pedido_oracoes (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    id_user INT(11) UNSIGNED NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    tipoPedido VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES users(id) 
);

INSERT INTO pedido_oracoes (id_user, email, tipoPedido, descricao)
VALUES (1, 'chimenemariojorge@gmail.com', 'Saúde', 'Peço orações pela saúde do meu pai, que está enfrentando um tratamento difícil.');