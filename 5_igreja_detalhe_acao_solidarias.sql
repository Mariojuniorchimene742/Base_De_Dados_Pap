USE igreja_system;

DROP TABLE IF EXISTS detalhe_acao_solidarias;

CREATE TABLE detalhe_acao_solidarias (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
    id_acao_solidaria INT(11) UNSIGNED NOT NULL,
    descricao TEXT NOT NULL,
    comoAjudar TEXT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_acao_solidaria) REFERENCES acao_solidarias(id)
);
INSERT INTO detalhe_acao_solidarias(id_acao_solidaria, descricao, comoAjudar)
Values
(1,'Ação de doação de alimentos para famílias carentes.','Doe alimentos não perecíveis, como arroz, feijão, macarrão, enlatados e óleo.'),
(2,'Visita a asilo para levar alegria e companhia aos idosos.','Participe das visitas levando palavras de conforto, música ou atividades recreativas.'),
(3,'Campanha de arrecadação de agasalhos para pessoas em situação de rua.','Doe agasalhos em bom estado, como casacos, blusas, cobertores e calçados.'),
(4,'Ação de limpeza de praia para preservar o meio ambiente.','Participe da limpeza levando sacos de lixo, luvas e disposição para ajudar a manter as praias limpas.'),
(5,'Doação de sangue para salvar vidas.','Doe sangue em um banco de sangue próximo, seguindo os requisitos de doação.'),
(6,'Ação de plantio de árvores para contribuir com a sustentabilidade.','Participe do plantio levando mudas de árvores e ajudando a cuidar delas.'),
(7,'Campanha de arrecadação de brinquedos para crianças carentes.','Doe brinquedos novos ou usados em bom estado para alegrar o Natal de crianças necessitadas.'),
(8,'Ação de apoio a moradores de rua com distribuição de kits de higiene e alimentos.','Participe da distribuição levando kits contendo itens como sabonete, pasta de dente, escova, roupas e alimentos prontos para consumo.'),
(9,'Doação de roupas para pessoas em situação de vulnerabilidade social.','Doe roupas em bom estado, especialmente agasalhos, calçados e roupas íntimas.'),
(10,'Ação de apoio a refugiados com doação de itens essenciais e integração social.','Participe da ação doando itens como alimentos, roupas, produtos de higiene e oferecendo apoio na integração social dos refugiados.');

SELECT * FROM detalhe_acao_solidarias;