# DML

USE secao_04;

SELECT * FROM produtos;
SELECT * FROM tipos_produto;

-- Insert

INSERT INTO tipos_produto
(descricao)
VALUES
('Apple');

INSERT INTO produtos
(descricao, preco, codigo_tipo)
VALUES
('Notebook','1200',1);

INSERT INTO produtos
VALUES
(NULL ,'Macbook Air','5200',3);


SELECT * FROM produtos;
SELECT * FROM tipos_produto;

-- Update

UPDATE produtos
SET codigo_tipo = 3
WHERE codigo = 6;

UPDATE produtos
SET codigo = 7
WHERE codigo = 9;

UPDATE produtos
SET descricao = 'Impressora Laser', preco = '700'
WHERE codigo = 4;

# NUNCA ESQUEÇA DE FLTRAR OS PRODUTOS COM WHERE!
# Isso alterará todos os dados da tabela.


SELECT * FROM produtos;
SELECT * FROM tipos_produto;

-- Delete

DELETE FROM produtos
WHERE codigo = 4;

# NUNCA ESQUEÇA DE FLTRAR OS PRODUTOS COM WHERE!
# Isso deletará todos os dados da tabela.