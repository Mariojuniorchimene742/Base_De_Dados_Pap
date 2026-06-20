-- Script completo para recriar a base de dados igreja_system
-- Inclui as novas funcionalidades: notificações, contribuições e ministérios


-- =====================================================
-- 0_igreja_DB.sql
-- =====================================================
DROP DATABASE IF EXISTS igreja_system;

CREATE DATABASE igreja_system;

USE igreja_system;

USE igreja_system;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    is_admin BOOLEAN NOT NULL DEFAULT FALSE,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20) UNIQUE NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_registro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(20) NULL,
    password VARCHAR(255) NOT NULL,
    is_verified TINYINT(1) DEFAULT 0,
    updated_at TIMESTAMP NULL DEFAULT NULL,
    deleted_at TIMESTAMP NULL DEFAULT NULL,
    verified_at TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY (id)
);

-- =====================================================
-- 2_igreja_apoio_sociais.sql
-- =====================================================
USE igreja_system;

DROP TABLE IF EXISTS apoio_sociais;

CREATE TABLE apoio_sociais(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT(11) UNSIGNED NOT NULL,
    local VARCHAR(255) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    telefone VARCHAR(20) UNIQUE NOT NULL,
    membros_de_familia INT NOT NULL,
    pedido_ajuda TEXT NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (id_user) REFERENCES users(id)
);

-- =====================================================
-- 3_igreja_eventos.sql
-- =====================================================
USE igreja_system;

DROP TABLE IF EXISTS eventos;

CREATE TABLE eventos (
    id INT(11) UNSIGNED NOT NULL  AUTO_INCREMENT,
    id_users INT(11) UNSIGNED NOT NULL,
    data_hora_inicio DATETIME NOT NULL,
    nome_evento VARCHAR(255) NOT NULL,
    tipo_evento VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_users) REFERENCES users(id)
);

-- =====================================================
-- 4_igreja_acao_solidarias.sql
-- =====================================================
USE igreja_system;

DROP TABLE IF EXISTS acao_solidarias;

CREATE TABLE acao_solidarias (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
    id_user INT(11) UNSIGNED NOT NULL,
    data_hora_inicio DATETIME NOT NULL,
    nome_acao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user) REFERENCES users(id)
);

-- =====================================================
-- 5_igreja_detalhe_acao_solidarias.sql
-- =====================================================

USE igreja_system;

DROP TABLE IF EXISTS detalhe_acao_solidarias;

CREATE TABLE detalhe_acao_solidarias (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_acao_solidaria INT UNSIGNED NOT NULL,
    descricao TEXT NOT NULL,
    como_ajudar TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_acao_solidaria) REFERENCES acao_solidarias(id)
);

-- =====================================================
-- 6_igreja_pedido_oracoes.sql
-- =====================================================
USE igreja_system;

DROP TABLE IF EXISTS pedido_oracoes;

CREATE TABLE pedido_oracoes (
    id INT(11) AUTO_INCREMENT NOT NULL,
    id_user INT(11) UNSIGNED NOT NULL,
    email VARCHAR(100) NOT NULL,
    tipo_pedido VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user) REFERENCES users(id) 
);

-- =====================================================
-- 13-email_verifications.sql
-- =====================================================
DROP TABLE IF EXISTS email_verifications;
USE igreja_system;

CREATE TABLE email_verifications (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    token_hash VARCHAR(255) NOT NULL,
    expires_at DATETIME NOT NULL,
    used_at DATETIME NULL DEFAULT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT fk_email_verifications_user
        FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);

-- =====================================================
-- 14_novas_funcionalidades.sql
-- =====================================================
USE igreja_system;

-- =====================================================
-- Novas funcionalidades da app/admin
-- 1) Notificações
-- 2) Dízimos e Ofertas / Contribuições
-- 3) Inscrições para Servir em Ministérios
-- =====================================================

CREATE TABLE IF NOT EXISTS notificacoes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT UNSIGNED NULL,
    titulo VARCHAR(150) NOT NULL,
    mensagem TEXT NOT NULL,
    tipo VARCHAR(50) NOT NULL DEFAULT 'Geral',
    lida TINYINT(1) NOT NULL DEFAULT 0,
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    INDEX idx_notificacoes_id_user (id_user),
    CONSTRAINT fk_notificacoes_user
        FOREIGN KEY (id_user) REFERENCES users(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS contribuicoes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT UNSIGNED NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    metodo_pagamento VARCHAR(50) NOT NULL,
    observacao TEXT NULL,
    estado VARCHAR(30) NOT NULL DEFAULT 'Pendente',
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    INDEX idx_contribuicoes_id_user (id_user),
    CONSTRAINT fk_contribuicoes_user
        FOREIGN KEY (id_user) REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS ministerios_inscricoes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT UNSIGNED NOT NULL,
    ministerio VARCHAR(100) NOT NULL,
    experiencia TEXT NULL,
    disponibilidade VARCHAR(150) NULL,
    mensagem TEXT NULL,
    estado VARCHAR(30) NOT NULL DEFAULT 'Pendente',
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    INDEX idx_ministerios_inscricoes_id_user (id_user),
    CONSTRAINT fk_ministerios_inscricoes_user
        FOREIGN KEY (id_user) REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- =====================================================
-- 8_igreja_inserts_datas.sql
-- =====================================================
USE igreja_system;

-- Inserção de dados na tabela users
INSERT INTO users (is_admin, nome, telefone, email, estado, password) VALUES
(1, 'Gerry', '912345678', '35420@esjaloures.org', 'ativo', '$2y$10$uT2rgweFd5L5RJ/9/uKrkeI2rDIbZi2EwMR76WSaeN7xZ5l3kFg4S'),
(0, 'Fabio Vitoriano', '934567890', 'fabio.vitoriano@email.com', 'ativo', '123'),
(0, 'Davi Clemente', '987654321', 'davi.clemente@email.com', 'ativo', '123'),
(0, 'Francisco Prino', '923456789', 'francisco.prino@email.com', 'ativo', '123'),
(0, 'Gerry Trindade', '915678234', 'gerry.trindade@email.com', 'ativo', '123'),
(0, 'Henrique Morais', '936789451', 'henrique.morais@email.com', 'ativo', '123'),
(0, 'Karamjit Singh', '918234567', 'karamjit.singh@email.com', 'ativo', '123'),
(0, 'Mario Junior', '932674987', 'mario.junior@email.com', 'ativo', '123'),
(0, 'Marco Figueiredo', '914567890', 'marco.figueiredo@email.com', 'ativo', '123'),
(0, 'Rodrigo Andraz', '937654123', 'rodrigo.andraz@email.com', 'ativo', '123');

-- Inserção de dados na tabela apoio_sociais
INSERT INTO apoio_sociais (id_user, local, codigo_postal, telefone, membros_de_familia, pedido_ajuda) VALUES
(1, 'Lisboa', '1000-001', '912345679', 4, 'Precisamos de alimentos e roupas'),
(2, 'Loures', '2670-123', '913456789', 3, 'Apoio financeiro urgente'),
(3, 'Odivelas', '2675-456', '914567891', 5, 'Alimentos para família numerosa'),
(4, 'Amadora', '2700-789', '915678901', 2, 'Apoio médico e medicação'),
(5, 'Sintra', '2710-111', '916789012', 6, 'Roupas e bens essenciais'),
(6, 'Cascais', '2750-222', '917890123', 1, 'Apoio temporário de habitação'),
(7, 'Setúbal', '2900-333', '918901234', 4, 'Ajuda alimentar'),
(8, 'Almada', '2800-444', '919012345', 3, 'Desemprego recente, apoio necessário'),
(9, 'Barreiro', '2830-555', '910123456', 2, 'Apoio financeiro e alimentação'),
(10, 'Mafra', '2640-666', '911234567', 5, 'Família precisa de apoio geral');

-- Inserção de dados na tabela eventos
INSERT INTO eventos (id_users, data_hora_inicio, nome_evento, tipo_evento) VALUES
(1, '2024-07-01 10:00:00', 'Culto de Domingo', 'Religioso'),
(2, '2024-07-02 19:00:00', 'Reunião de jovens', 'Social'),
(3, '2024-07-03 18:00:00', 'Aula de música', 'Cultural'),
(4, '2024-07-04 20:00:00', 'Grupo de estudo bíblico', 'Religioso'),
(5, '2024-07-05 17:00:00', 'Evento de caridade', 'Social'),
(6, '2024-07-06 19:30:00', 'Encontro de casais', 'Social'),
(7, '2024-07-07 18:30:00', 'Oficina de artesanato', 'Cultural'),
(8, '2024-07-08 20:30:00', 'Culto de quarta-feira', 'Religioso'),
(9, '2024-07-09 19:00:00', 'Reunião de líderes', 'Social'),
(10, '2024-07-10 18:00:00', 'Aula de dança', 'Cultural');

-- Inserção de dados na tabela acao_solidarias
INSERT INTO acao_solidarias (id_user, data_hora_inicio, nome_acao) VALUES
(1, '2024-07-01 10:00:00', 'Doação de alimentos'),
(2, '2024-07-02 19:00:00', 'Visita a asilo'),
(3, '2024-07-03 18:00:00', 'Campanha de agasalhos'),
(4, '2024-07-04 20:00:00', 'Ação de limpeza de praia'),
(5, '2024-07-05 17:00:00', 'Doação de sangue'),
(6, '2024-07-06 19:30:00', 'Ação de plantio de árvores'),
(7, '2024-07-07 18:30:00', 'Campanha de arrecadação de brinquedos'),
(8, '2024-07-08 20:30:00', 'Ação de apoio a moradores de rua'),
(9, '2024-07-09 19:00:00', 'Doação de roupas'),
(10, '2024-07-10 18:00:00', 'Ação de apoio a refugiados');

-- Inserção de dados na tabela detalhe_acao_solidarias
INSERT INTO detalhe_acao_solidarias (id_acao_solidaria, descricao, como_ajudar) VALUES
(1, 'Ação de doação de alimentos para famílias carentes.', 'Doe alimentos não perecíveis, como arroz, feijão, macarrão, enlatados e óleo.'),
(2, 'Visita a asilo para levar alegria e companhia aos idosos.', 'Participe das visitas levando palavras de conforto, música ou atividades recreativas.'),
(3, 'Campanha de arrecadação de agasalhos para pessoas em situação de rua.', 'Doe agasalhos em bom estado, como casacos, blusas, cobertores e calçados.'),
(4, 'Ação de limpeza de praia para preservar o meio ambiente.', 'Participe da limpeza levando sacos de lixo, luvas e disposição para ajudar a manter as praias limpas.'),
(5, 'Doação de sangue para salvar vidas.', 'Doe sangue num banco de sangue próximo, seguindo os requisitos de doação.'),
(6, 'Ação de plantio de árvores para contribuir com a sustentabilidade.', 'Participe do plantio levando mudas de árvores e ajudando a cuidar delas.'),
(7, 'Campanha de arrecadação de brinquedos para crianças carentes.', 'Doe brinquedos novos ou usados em bom estado para alegrar crianças necessitadas.'),
(8, 'Ação de apoio a moradores de rua com distribuição de kits de higiene e alimentos.', 'Participe da distribuição levando kits de higiene, roupas e alimentos prontos para consumo.'),
(9, 'Doação de roupas para pessoas em situação de vulnerabilidade social.', 'Doe roupas em bom estado, especialmente agasalhos, calçados e roupas íntimas.'),
(10, 'Ação de apoio a refugiados com doação de itens essenciais e integração social.', 'Participe doando alimentos, roupas, produtos de higiene e oferecendo apoio na integração social.');

-- Inserção de dados na tabela pedido_oracoes
INSERT INTO pedido_oracoes (id_user, email, tipo_pedido, descricao) VALUES
(1, 'chimenejorge@gmail.com', 'Saúde', 'Peço orações pela saúde do meu pai, que está em tratamento.'),
(2, 'ana.silva@gmail.com', 'Família', 'Peço oração pela união da minha família.'),
(3, 'joao.pereira@gmail.com', 'Trabalho', 'Estou desempregado e preciso de oração para conseguir um novo emprego.'),
(4, 'maria.ferreira@gmail.com', 'Finanças', 'Peço oração para superar dificuldades financeiras.'),
(5, 'carlos.santos@gmail.com', 'Saúde', 'Peço oração pela recuperação de uma cirurgia recente.'),
(6, 'ines.lopes@gmail.com', 'Proteção', 'Peço oração por proteção espiritual e paz interior.'),
(7, 'ricardo.mendes@gmail.com', 'Estudos', 'Peço oração para conseguir foco e sucesso nos estudos.'),
(8, 'fatima.costa@gmail.com', 'Família', 'Peço oração pela restauração do meu casamento.');

-- Exemplos para as novas funcionalidades
INSERT INTO notificacoes (id_user, titulo, mensagem, tipo, lida) VALUES
(NULL, 'Bem-vindo à aplicação', 'A igreja agora tem notificações para avisos gerais e novidades.', 'Geral', 0),
(1, 'Pedido recebido', 'O teu pedido foi registado com sucesso.', 'Informação', 0);

INSERT INTO contribuicoes (id_user, tipo, valor, metodo_pagamento, observacao, estado) VALUES
(1, 'Dízimo', 25.00, 'MB Way', 'Contribuição mensal', 'Pendente'),
(2, 'Oferta', 10.00, 'Transferência', 'Oferta especial', 'Confirmado');

INSERT INTO ministerios_inscricoes (id_user, ministerio, experiencia, disponibilidade, mensagem, estado) VALUES
(1, 'Louvor', 'Já participei no grupo de louvor.', 'Domingo de manhã', 'Gostaria de servir com música.', 'Pendente'),
(2, 'Multimédia', 'Tenho experiência com som e projeção.', 'Cultos de domingo', 'Posso ajudar na parte técnica.', 'Aprovado');

SELECT * FROM users;
SELECT * FROM apoio_sociais;
SELECT * FROM eventos;
SELECT * FROM acao_solidarias;
SELECT * FROM detalhe_acao_solidarias;
SELECT * FROM pedido_oracoes;
SELECT * FROM notificacoes;
SELECT * FROM contribuicoes;
SELECT * FROM ministerios_inscricoes;
SELECT * FROM email_verifications;
