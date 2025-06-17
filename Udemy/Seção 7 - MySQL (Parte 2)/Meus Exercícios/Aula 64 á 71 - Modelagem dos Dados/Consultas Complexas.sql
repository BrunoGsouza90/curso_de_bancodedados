# Consultas Complexas.

-- Compras.

-- Passo 1: Trazer as compras.
SELECT * FROM compras;

-- Passo 2: Colocar o nome dos clientes nas compras.
SELECT 
compras.id AS 'ID_Compra', 
clientes.nome AS 'Cliente', 
compras.data AS 'Data da Compra'
FROM compras, clientes
WHERE compras.id_cliente = clientes.id;

-- Passo 3: Trazer Produtos Compra.
SELECT * FROM produtos_compra;

-- Passo 4: Verificar o cliente e o preço de cada compra.
SELECT
compras.id AS 'Venda',
clientes.nome AS 'Cliente',
SUM(produtos.preco_venda * produtos_compra.quantidade) AS 'Preço Total',
compras.data AS 'Data da Compra'
FROM produtos_compra, produtos, compras, clientes
WHERE compras.id = produtos_compra.id_compra
AND
produtos.id = produtos_compra.id_produto
AND
clientes.id = compras.id_cliente
GROUP BY compras.id;