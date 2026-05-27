USE igreja_system;

DROP TABLE IF EXISTS apoio_sociais;

CREATE TABLE apoio_sociais(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT(11) UNSIGNED NOT NULL,
    local VARCHAR(255) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    telefone VARCHAR(20) UNIQUE NOT NULL,
    membros_de_familia INT NOT NULL,
    pedido_ajuda TEXT NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (id_user) REFERENCES users(id)
);
