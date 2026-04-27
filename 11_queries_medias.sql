USE igreja_system;

---Q15)Media de acoes solidarias por user
SELECT u.id, u.nome, COALESCE(AVG(a.id), 0) AS media_acoes
FROM users u
LEFT JOIN acao_solidarias a ON a.id_user = u.id
GROUP BY u.id
ORDER BY media_acoes ASC;

---Q16)Media de pedidos de oração por user
SELECT u.id, u.nome, COALESCE(AVG(p.id), 0) AS media_pedidos_oracao
FROM users u
LEFT JOIN pedido_oracoes p ON p.id_user = u.id
GROUP BY u.id
ORDER BY media_pedidos_oracao ASC;
