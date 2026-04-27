USE igreja_system;

DROP TABLE IF EXISTS detalhe_acao_solidarias;

CREATE TABLE detalhe_acao_solidarias (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_acao_solidaria INT(11) UNSIGNED NOT NULL,
    descricao TEXT NOT NULL,
    comoAjudar TEXT NOT NULL,
    FOREIGN KEY (id_acao_solidaria) REFERENCES acao_solidarias(id)
);
INSERT INTO detalhe_acao_solidarias(id_acao_solidaria, descricao, comoAjudar)
Values
(1,'Ação de doação de alimentos para famílias carentes.','Doe alimentos não perecíveis, como arroz, feijão, macarrão, enlatados e óleo.'),
(2,'Visita a asilo para levar alegria e companhia aos idosos.','Participe das visitas levando palavras de conforto, música ou atividades recreativas.'),
(3,'Campanha de arrecadação de agasalhos para pessoas em situação de rua.','Doe agasalhos em bom estado, como casacos, blusas, cobertores e calçados.');