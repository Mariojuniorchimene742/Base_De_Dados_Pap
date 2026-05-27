USE igreja_system;

DROP TABLE IF EXISTS detalhe_acao_solidarias;

CREATE TABLE detalhe_acao_solidarias (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
    id_acao_solidaria INT(11) UNSIGNED NOT NULL,
    descricao TEXT NOT NULL,
    como_ajudar TEXT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_acao_solidaria) REFERENCES acao_solidarias(id)
);