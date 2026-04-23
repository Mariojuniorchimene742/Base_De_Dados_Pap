USE igreja_system;

DROP TABLE IF EXISTS eventos;

CREATE TABLE eventos (
    id INT(11) UNSIGNED NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    id_user INT(11) UNSIGNED NOT NULL,
    dataHoraInicio DATETIME NOT NULL,
    nomeEvento VARCHAR(255) NOT NULL,
    tipoEvento VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_user) REFERENCES users(id)
)