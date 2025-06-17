# DDL

-- Create

CREATE DATABASE IF NOT EXISTS secao_05
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE UTF8_GENERAL_CI;

CREATE TABLE IF NOT EXISTS pessoas (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(1000) NOT NULL,
PRIMARY KEY(id)
)DEFAULT CHARSET = UTF8;

INSERT INTO pessoas 
(nome)
VALUE
('Felicity Jones');

-- Alter

ALTER TABLE pessoas
ADD COLUMN ano_de_nascimento INT NOT NULL;

UPDATE pessoas
SET ano_de_nascimento = '1987'
WHERE id = 1;

ALTER TABLE pessoas
ADD COLUMN mes_de_nascimento INT NOT NULL;

UPDATE pessoas
SET mes_de_nascimento = 6
WHERE id = 1;

SELECT * FROM pessoas;

-- Drop

DROP TABLE IF EXISTS pessoas;

DROP DATABASE IF EXISTS secao_05;