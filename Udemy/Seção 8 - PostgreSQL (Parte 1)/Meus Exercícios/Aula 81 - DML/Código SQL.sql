USE secao_04;

-- Update
UPDATE tipos_produto 
SET descricao = 'Notbreak' 
WHERE codigo = '3';

UPDATE produtos
SET descricao = 'Notbook', preco = '2000'
WHERE codigo = '2';

-- Delete
DELETE FROM tipos_produto
WHERE codigo = '3';

DELETE FROM tipos_produto;