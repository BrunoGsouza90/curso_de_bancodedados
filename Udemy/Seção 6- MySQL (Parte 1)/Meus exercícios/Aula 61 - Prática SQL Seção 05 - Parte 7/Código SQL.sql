# SubConsultas.

-- Exemplo 1

SELECT nome, sobrenome 
FROM funcionarios 
WHERE id_escritorio 
IN (SELECT id FROM escritorios WHERE pais = 'Brasil');

-- Sem subconsulta
SELECT nome, sobrenome 
FROM funcionarios, escritorios AS e 
WHERE id_escritorio = e.id AND e.pais = 'Brasil'; 

-- Exemplo 2

SELECT f.nome, f.sobrenome, e.pais, p.salario 
	FROM pagamentos AS p, funcionarios AS f, escritorios AS e
	WHERE f.id_escritorio = e.id 
	AND f.id = p.id_funcionario
	AND salario = (SELECT MAX(salario) FROM pagamentos);

-- Exemplo 3

SELECT f.nome, f.sobrenome, e.pais, p.salario 
	FROM pagamentos AS p, funcionarios AS f, escritorios AS e
	WHERE f.id_escritorio = e.id 
	AND f.id = p.id_funcionario
	AND salario < (SELECT AVG(salario) FROM pagamentos);