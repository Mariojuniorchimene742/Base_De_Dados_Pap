USE igreja_system;

DROP TABLE IF EXISTS apoio_sociais;

CREATE TABLE apoio_sociais(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT(11) UNSIGNED NOT NULL,
    local VARCHAR(255) NOT NULL,
    codigoPostal VARCHAR(10) NOT NULL,
    telefone VARCHAR(20) UNIQUE NOT NULL,
    membrosDeFamilia INT NOT NULL,
    pedidoAjuda TEXT NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (id_user) REFERENCES users(id)
);

-- Inserção de dados na tabela apoio_sociais
INSERT INTO apoio_sociais (id_user, local, codigoPostal, telefone, membrosDeFamilia, pedidoAjuda)
VALUES
(1, 'Lisboa', '1000-001', '912345678', 4, 'Precisamos de alimentos e roupas'),
(2, 'Loures', '2670-123', '913456789', 3, 'Apoio financeiro urgente'),
(3, 'Odivelas', '2675-456', '914567890', 5, 'Alimentos para família numerosa'),
(4, 'Amadora', '2700-789', '915678901', 2, 'Apoio médico e medicação'),
(5, 'Sintra', '2710-111', '916789012', 6, 'Roupas e bens essenciais'),
(6, 'Cascais', '2750-222', '917890123', 1, 'Apoio temporário de habitação'),
(7, 'Setúbal', '2900-333', '918901234', 4, 'Ajuda alimentar'),
(8, 'Almada', '2800-444', '919012345', 3, 'Desemprego recente, apoio necessário'),
(9, 'Barreiro', '2830-555', '910123456', 2, 'Apoio financeiro e alimentação'),
(10, 'Mafra', '2640-666', '911234567', 5, 'Família precisa de apoio geral');



SELECT * FROM apoio_sociais;