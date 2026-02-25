CREATE TABLE pedidos_oracao (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    id_utilizador INT(11),
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    mensagem VARCHAR(100),
    FOREIGN KEY (id_utilizador) REFERENCES membros(id) 
);