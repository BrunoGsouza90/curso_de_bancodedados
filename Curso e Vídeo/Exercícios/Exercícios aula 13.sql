SELECT * FROM gafanhotos;

# Exercício 1.

SELECT peso, COUNT(*) AS 'total_de_gafanhotos' FROM gafanhotos
GROUP BY peso;

# Exercício 2.

SELECT nascimento, COUNT(*) AS 'tot.Alunos' FROM gafanhotos
WHERE nascimento > '1920-01-01'
GROUP BY nascimento;

SELECT nome, nascimento, COUNT(*) AS 'tot.Alunos' FROM gafanhotos
WHERE nascimento > '1919-01-01' AND SUBSTRING_INDEX(nome, ' ', 1) LIKE '%a'
GROUP BY nascimento;

SELECT nome, nascimento, COUNT(*) AS 'tot.Alunos' FROM gafanhotos
WHERE nascimento > '1919-01-01' AND SUBSTRING_INDEX(nome, ' ', 1) NOT LIKE '%a'
GROUP BY nascimento;

# Exercício 3.

SELECT nacionalidade, COUNT(*) AS 'Tot.Pessoas' FROM gafanhotos
GROUP BY nacionalidade
HAVING COUNT(*) > '1'
ORDER BY id;

# Exercício 4.

SELECT * FROM gafanhotos
WHERE peso > '50.0'
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos)
ORDER BY (id);