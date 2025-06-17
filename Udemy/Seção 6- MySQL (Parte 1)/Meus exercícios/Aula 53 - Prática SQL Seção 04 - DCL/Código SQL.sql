SELECT * FROM produtos;

INSERT INTO produtos
(descricao, preco, codigo_tipo)
VALUES
('Outro', '123', 2);

UPDATE produtos
SET preco = '543'
WHERE codigo = 10;