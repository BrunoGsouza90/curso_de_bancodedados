# Atualizando Dados.

SELECT * FROM tipos_produtos;

UPDATE tipos_produtos
SET tipo = 'Bijuterias'
WHERE id = '4';

SELECT * FROM produtos;

UPDATE produtos
SET preco_venda = '4.16', id_tipo_produto = '1', id_fabricante = '1'
WHERE id = '2';

SELECT * FROM produtos_compra;
SELECT * FROM produtos;
SELECT * FROM compras;

UPDATE produtos_compra
SET id_produto = '2', id_compra = '3', quantidade = '6'
WHERE id = '1';
