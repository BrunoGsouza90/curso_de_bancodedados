# Exercício 1.
SELECT * FROM gafanhotos
WHERE nome LIKE '%a%_'
ORDER BY nome;

# Exercício 2.
SELECT * FROM gafanhotos
WHERE SUBSTRING_INDEX(nome, ' ', 1) LIKE '%a'
ORDER BY nome;

# Exercício 3.
SELECT * FROM gafanhotos
WHERE nacionalidade = 'Brasil' AND SUBSTRING_INDEX(nome, ' ' , 1) LIKE '%a'
ORDER BY nome;

#Exercício 4.
SELECT * FROM gafanhotos
WHERE nacionalidade = 'Brasil' AND SUBSTRING_INDEX(nome, ' ' , 1) LIKE 'J%a'
ORDER BY nome;

#Exercício 5.
SELECT nome, nacionalidade FROM gafanhotos
WHERE SUBSTRING_INDEX(nome, ' ', 1) not LIKE '%a' AND nome LIKE '%souza%' AND peso < 100
ORDER BY nome;

# Exercício 6.
SELECT MAX(altura) FROM gafanhotos;

# Exercício 7.
SELECT * FROM gafanhotos
WHERE SUBSTRING_INDEX(nome, ' ', 1) LIKE '%a' AND nacionalidade = 'Brasil' AND nascimento BETWEEN '1930-11-01' AND '1984-01-26'
ORDER BY nome;

# Exerício 8.
SELECT * FROM gafanhotos
WHERE SUBSTRING_INDEX(nome, ' ', 1) LIKE '%a' AND altura > '1.65';