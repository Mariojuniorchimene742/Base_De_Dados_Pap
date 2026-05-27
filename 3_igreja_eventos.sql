USE igreja_system;

DROP TABLE IF EXISTS eventos;

CREATE TABLE eventos (
    id INT(11) UNSIGNED NOT NULL  AUTO_INCREMENT,
    id_users INT(11) UNSIGNED NOT NULL,
    data_hora_inicio DATETIME NOT NULL,
    nome_evento VARCHAR(255) NOT NULL,
    tipo_evento VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_users) REFERENCES users(id)
);