# Funções de Agregação.

SELECT * FROM categorias;
SELECT * FROM produtos;

SELECT 
p.id AS 'ID do Produto', 
p.descricao AS 'Nome do Produto',
p.preco_venda AS 'Preço de Venda',
p.preco_custo AS 'Preço de Custo',
c.nome AS 'Categoria do Produto'
FROM produtos AS p
INNER JOIN categorias AS c ON p.id = c.id;

-- max
SELECT MAX(preco_venda) FROM produtos;

-- min
SELECT MIN(preco_venda) FROM produtos;

-- avg
SELECT AVG(preco_venda) FROM produtos;

-- round
SELECT ROUND(AVG(preco_venda), 2) FROM produtos;

-- count
SELECT COUNT(preco_venda) AS Quantidade FROM produtos WHERE id_categoria = 1;

-- group by
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria;

-- having
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria HAVING MAX(preco_venda) > 10;