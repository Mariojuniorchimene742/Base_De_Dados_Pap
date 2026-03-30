USE igreja_system;

DROP TABLE IF EXISTS detalhe_acao_solidarias;

CREATE TABLE detalhe_acao_solidarias (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_acao_solidaria INT(11) UNSIGNED NOT NULL,
    descricao TEXT NOT NULL,
    comoAjudar TEXT NOT NULL,
    FOREIGN KEY (id_acao_solidaria) REFERENCES acao_solidarias(id)
);