USE igreja_system;

DROP TABLE IF EXISTS eventos;

CREATE TABLE eventos (
    id INT(11) UNSIGNED NOT NULL  AUTO_INCREMENT,
    id_users INT(11) UNSIGNED NOT NULL,
    dataHoraInicio DATETIME NOT NULL,
    nomeEvento VARCHAR(255) NOT NULL,
    tipoEvento VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_users) REFERENCES users(id)
)

INSERT INTO eventos (id_users,dataHoraInicio,nomeEvento,tipoEvento)
VALUES
(1,'2024-07-01 10:00:00','Culto de Domingo','Religioso'),
(2,'2024-07-02 19:00:00','Reuniao de jovens','Social'),
(3,'2024-07-03 18:00:00','Aula de musica','cultural'),
(4,'2024-07-04 20:00:00','Grupo de estudo biblico','Religioso'),
(5,'2024-07-05 17:00:00','Evento de caridade','Social'),
(6,'2024-07-06 19:30:00','Encontro de casais','Social'),
(7,'2024-07-07 18:30:00','Oficina de artesanato','cultural'),
(8,'2024-07-08 20:30:00','Culto de quarta-feira','Religioso'),
(9,'2024-07-09 19:00:00','Reuniao de lideres','Social'),
(10,'2024-07-10 18:00:00','Aula de dança','cultural');


SELECT * FROM eventos;