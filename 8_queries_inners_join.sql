USE igreja_system;

--Q1)useres + acao_solidarias
SELECT*
FROM users u
INNER JOIN acao_solidarias e ON e.id_user = u.id;
---Q2)acao_solidarias + detalhe_acao_solidarias
SELECT*
FROM acao_solidarias a
INNER JOIN detalhe_acao_solidarias d ON d.id_acao_solidaria = a.id;

