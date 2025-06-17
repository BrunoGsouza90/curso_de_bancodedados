-- Realizando Consultas Simples.

-- Tipos Produtos.
SELECT * FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos;
SELECT tipo, id FROM tipos_produtos;

SELECT id, tipo FROM tipos_produtos
ORDER BY id DESC;

SELECT id, tipo FROM tipos_produtos
ORDER BY tipo DESC;

-- Fabricantes.
SELECT * FROM fabricantes;

-- Médicos.
SELECT * FROM medicos;

-- Clientes.
SELECT * FROM clientes;

-- Compras.
SELECT * FROM compras;

-- Produtos Compra.
SELECT * FROM produtos_compra;

-- Receitas Médica.
SELECT * FROM receitas_medica;