CREATE TABLE doacoes (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    id_membros INT(11),
    data_doacao DATE,
    valor DECIMAL(10,2), -- Alterado de INT para DECIMAL para suportar centavos
    FOREIGN KEY (id_membros) REFERENCES membros(id)
);
