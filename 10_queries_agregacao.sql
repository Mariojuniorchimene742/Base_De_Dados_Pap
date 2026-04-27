USE igreja_system;

--Q6) quantas  açoes solidarias foram feitas por cada user
SELECT u.id,u.nome,COUNT(a.id) total_acoes
FROM users u
LEFT JOIN acao_solidarias a ON a.id_user = u.id
GROUP BY u.id
ORDER BY total_acoes ASC;

--Q7)quantos pedidos de oração cada utilizador fez
SELECT u.id,u.nome,COUNT(p.id) total_pedidos_oracao 
FROM users u
LEFT JOIN pedido_oracoes p ON p.id_user =u.id
GROUP BY u.id
ORDER BY total_pedidos_oracao ASC;

--Q8)Total de membros de familia  cadastrados por user 

SELECT u.id, u.nome, COALESCE(SUM(a.membrosDeFamilia), 0) AS total_membros_familia
FROM users u
LEFT JOIN apoio_sociais a ON u.id = a.id_user = u.id
GROUP BY u.id
ORDER BY total_membros_familia ASC;

--Q9)Total de pedidos de ajuda por user
SELECT u.id, u.nome, COALESCE(COUNT(a.id), 0) AS total_pedidos_ajuda
FROM users u    
LEFT JOIN apoio_sociais a ON u.id = a.id_user = u.id
GROUP BY u.id
ORDER BY total_pedidos_ajuda ASC;

--Q10)Soma de beneficiados por pedido de apoio
SELECT u.id, u.nome, COALESCE(SUM(a.membrosDeFamilia), 0) AS total_beneficiados
FROM users u
LEFT JOIN apoio_sociais a ON u.id = a.id_user = u.id
GROUP BY u.id
ORDER BY total_beneficiados ASC;

--Q11)3 queries com haaving
--Q11.1)Users com mais de 5 pedidos de ajuda
SELECT u.id, u.nome, COALESCE(COUNT(a.id), 0) AS total_pedidos_ajuda
FROM users u
LEFT JOIN apoio_sociais a ON u.id = a.id_user = u.id
GROUP BY u.id
HAVING total_pedidos_ajuda > 5
ORDER BY total_pedidos_ajuda DESC;

--Q11.2)Users com mais de 10 beneficiados
SELECT u.id, u.nome, COALESCE(SUM(a.membrosDeFamilia), 0) AS total_beneficiados
FROM users u    
LEFT JOIN apoio_sociais a ON u.id = a.id_user = u.id
GROUP BY u.id
HAVING total_beneficiados > 10
ORDER BY total_beneficiados DESC;

--Q11.3)Users com mais de 3 acoes solidarias
SELECT u.id, u.nome, COALESCE(COUNT(a.id), 0) AS total_acoes
FROM users u    
LEFT JOIN acao_solidarias a ON a.id_user = u.id
GROUP BY u.id   
HAVING total_acoes > 3
ORDER BY total_acoes DESC;