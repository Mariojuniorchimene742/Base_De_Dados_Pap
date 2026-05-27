USE igreja_system;

DROP TABLE IF EXISTS pedido_oracoes;

CREATE TABLE pedido_oracoes (
    id INT(11) AUTO_INCREMENT NOT NULL,
    id_user INT(11) UNSIGNED NOT NULL,
    email VARCHAR(100) NOT NULL,
    tipo_pedido VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user) REFERENCES users(id) 
);
