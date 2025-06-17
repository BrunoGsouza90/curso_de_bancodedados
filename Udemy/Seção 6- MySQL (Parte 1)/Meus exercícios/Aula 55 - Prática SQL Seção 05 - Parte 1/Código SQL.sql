CREATE DATABASE IF NOT EXISTS secao_05
DEFAULT CHARACTER SET UTF8
DEFAULT COLLATE UTF8_GENERAL_CI;

USE secao_05;

CREATE TABLE IF NOT EXISTS tipos_produto (
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY(codigo)
) DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT exists produtos (
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(30) NOT secao_05NULL,
    preco DECIMAL(8,2) NOT NULL,
    codigo_tipo INT NOT NULL,
    FOREIGN KEY(codigo_tipo) REFERENCES tipos_produto(codigo)
) DEFAULT CHARSET = UTF8;

INSERT INTO tipos_produto
(descricao)
VALUES
('Computadores'),
('Impressoras');

INSERT INTO produtos
(descricao, preco, codigo_tipo)
VALUES
('Desktop','1200', 1),
('Laptop','1800', 1),
('Jato de Tinta','300', 2),
('Laser','500', 2);

SELECT * FROM produtos;

-- Filtrando consultas com WHERE.

SELECT * FROM produtos
WHERE codigo_tipo = 2;

SELECT * FROM produtos
WHERE codigo_tipo = 2 AND preco > 300;