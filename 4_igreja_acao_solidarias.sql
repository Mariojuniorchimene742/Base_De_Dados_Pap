USE igreja_system;

DROP TABLE IF EXISTS acao_solidarias;

CREATE TABLE acao_solidarias (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_user INT(11) UNSIGNED NOT NULL,
    dataHoraInicio DATETIME NOT NULL,
    nomeAcao VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_user) REFERENCES users(id)
);

INSERT INTO acao_solidarias(id_user,dataHoraInicio,nomeAcao)
Values
(1,2024-06-01 10:00:00,Doação de Alimentos),
(2,2024-07-01 18:00:00,Apoio dos idosos),
(3,2024-08-01 20:00:00,recolha de alimento),
(4,2024-08-01 15:00:00,Entrega de Refeições),


