-- Criação das Tabelas.

CREATE TABLE tipos_produtos(
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL
);

CREATE TABLE produtos(
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL,
	preco MONEY NOT NULL,
	codigo_tipo INT REFERENCES tipos_produtos(codigo) NOT NULL
);

INSERT INTO tipos_produtos
(descricao)
VALUES
('Computador'),
('Impressora');

INSERT INTO produtos
(descricao, preco, codigo_tipo)
VALUES
('Desktop', '1200', '1'),
('Laptop', '1800', '1'),
('Impre. Laser', '500', '2'),
('Impre. Jato de Tinta', '300', '2');

-- Consulta WHERE.

SELECT * FROM tipos_produtos
WHERE codigo = 1;

SELECT * FROM produtos
WHERE descricao = 'Laptop';

UPDATE produtos
SET preco = '300'
WHERE codigo = 4;

SELECT * FROM produtos
WHERE preco < '500';