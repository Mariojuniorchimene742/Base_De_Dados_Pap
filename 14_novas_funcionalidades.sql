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
