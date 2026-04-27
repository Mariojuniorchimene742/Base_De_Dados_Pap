USE igreja_system;

--Q1) users + acao_solidarias
SELECT*
FROM users u
INNER JOIN acao_solidarias e ON e.id_user = u.id;

---Q2) acao_solidarias + detalhe_acao_solidarias
SELECT*
FROM acao_solidarias a
INNER JOIN detalhe_acao_solidarias d ON d.id_acao_solidaria = a.id;

-- Q3) users + detalhe_acao_solidarias + acao_solidarias
--mostrar os users que participaram em cada ação solidaria e os detalhes da participaçao
SELECT *
FROM users u
INNER JOIN detalhe_acao_solidarias d 
    ON d.id_user = u.id
INNER JOIN acao_solidarias a 
    ON a.id = d.id_acao_solidaria;
