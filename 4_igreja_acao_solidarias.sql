USE igreja_system;

DROP TABLE IF EXISTS acao_solidarias;

CREATE TABLE acao_solidarias (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
    id_user INT(11) UNSIGNED NOT NULL,
    data_hora_inicio DATETIME NOT NULL,
    nome_acao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user) REFERENCES users(id)
);
