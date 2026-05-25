USE igreja_system;

-- Inserção de dados na tabela users    
INSERT INTO users (is_admin, nome, telefone, email, estado, password) VALUES
(1, 'Gerry', '912345678', '35420@esjaloures.org', 'ativo', '$2y$10$uT2rgweFd5L5RJ/9/uKrkeI2rDIbZi2EwMR76WSaeN7xZ5l3kFg4S'),
(0, 'Fabio Vitoriano', '934567890', 'fabio.vitoriano@email.com', 'ativo', '1234'),
(0, 'Davi Clemente', '987654321', 'davi.clemente@email.com', 'ativo', '1234'),
(0, 'Francisco Prino', '923456789', 'francisco.prino@email.com', 'ativo', '1234'),
(0, 'Gerry Trindade', '915678234', 'gerry.trindade@email.com', 'ativo', '1234'),
(0, 'Henrique Morais', '936789451', 'henrique.morais@email.com', 'ativo', '1234'),
(0, 'Karamjit Singh', '918234567', 'karamjit.singh@email.com', 'ativo', '1234'),
(0, 'Mario Junior', '932674987', 'mario.junior@email.com', 'ativo', '1234'),
(0, 'Marco Figueiredo', '914567890', 'marco.figueiredo@email.com', 'ativo', '1234'),
(0, 'Rodrigo Andraz', '937654123', 'rodrigo.andraz@email.com', 'ativo', '1234');

-- Inserção de dados na tabela apoio sociais
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

--- Inserção de dados na tabela eventos
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

--- Inserção de dados na tabela acao solidarias
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

--- Inserção de dados na tabela detalhe acao solidarias
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

--- Insersão de dados na tabela pedido orações
INSERT INTO pedido_oracoes (id_user, email, tipoPedido, descricao)
VALUES 
(1, 'chimenejorge@gmail.com', 'Saúde', 'Peço orações pela saúde do meu pai, que está em tratamento.'),
(2, 'ana.silva@gmail.com', 'Família', 'Peço oração pela união da minha família.'),
(3, 'joao.pereira@gmail.com', 'Trabalho', 'Estou desempregado e preciso de oração para conseguir um novo emprego.'),
(4, 'maria.ferreira@gmail.com', 'Finanças', 'Peço oração para superar dificuldades financeiras.'),
(5, 'carlos.santos@gmail.com', 'Saúde', 'Peço oração pela recuperação de uma cirurgia recente.'),
(6, 'ines.lopes@gmail.com', 'Proteção', 'Peço oração por proteção espiritual e paz interior.'),
(7, 'ricardo.mendes@gmail.com', 'Estudos', 'Peço oração para conseguir foco e sucesso nos estudos.'),
(8, 'fatima.costa@gmail.com', 'Família', 'Peço oração pela restauração do meu casamento.');


SELECT * FROM users;
SELECT * FROM apoio_sociais;
SELECT * FROM eventos;
SELECT * FROM acao_solidarias;
SELECT * FROM detalhe_acao_solidarias;

SELECT * FROM pedido_oracoes;
SELECT * FROM email_verifications;
