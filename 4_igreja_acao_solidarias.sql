USE igreja_system;

DROP TABLE IF EXISTS acao_solidarias;

CREATE TABLE acao_solidarias (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
    id_user INT(11) UNSIGNED NOT NULL,
    dataHoraInicio DATETIME NOT NULL,
    nomeAcao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user) REFERENCES users(id)
);

INSERT INTO acao_solidarias(id_user,dataHoraInicio,nomeAcao)
Values
(1,'2024-07-01 10:00:00','Doação de alimentos'),
(2,'2024-07-02 19:00:00','Visita a asilo'),
(3,'2024-07-03 18:00:00','Campanha de agasalhos'),
(4,'2024-07-04 20:00:00','Ação de limpeza de praia'),
(5,'2024-07-05 17:00:00','Doação de sangue'),
(6,'2024-07-06 19:30:00','Ação de plantio de árvores'),
(7,'2024-07-07 18:30:00','Campanha de arrecadação de brinquedos'),
(8,'2024-07-08 20:30:00','Ação de apoio a moradores de rua'),
(9,'2024-07-09 19:00:00','Doação de roupas'),
(10,'2024-07-10 18:00:00','Ação de apoio a refugiados');





SELECT * FROM acao_solidarias;
