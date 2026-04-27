USE igreja_system;

--Q4)Users +acao_solidarias
SELECT*
FROM users u    
LEFT JOIN acao_solidarias e ON e.id_user = u.id;


