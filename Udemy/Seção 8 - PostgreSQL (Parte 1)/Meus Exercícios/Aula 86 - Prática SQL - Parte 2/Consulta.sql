SELECT * FROM tipos_produtos;
SELECT * FROM produtos;

SELECT 
p.codigo AS código,
p.descricao AS descricao,
p.preco AS preço,
tp.descricao categoria
FROM produtos AS p, tipos_produtos AS tp
WHERE p.codigo_tipo = tp.codigo;