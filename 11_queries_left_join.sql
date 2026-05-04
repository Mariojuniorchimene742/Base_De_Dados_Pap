USE igreja_system;

--Q4)Users +acao_solidarias
SELECT*
FROM users u    
LEFT JOIN acao_solidarias e ON e.id_user = u.id

-- Q5) Users + apoio_sociais
 --Todos os users com os seus pedidos de apoio social
SELECT 
    u.id,
    u.nome,
    u.email,
    u.telefone,
    a.local,
    a.codigoPostal,
    a.membrosDeFamilia,
    a.pedidoAjuda
FROM users u
LEFT JOIN apoio_sociais a ON a.id_user = u.id;



