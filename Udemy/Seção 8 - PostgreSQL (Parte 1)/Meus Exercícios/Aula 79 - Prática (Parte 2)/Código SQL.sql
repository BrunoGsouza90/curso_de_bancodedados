-- Tipos Produtos.
INSERT INTO tipos_produtos
(descricao)
VALUES
('Computadores'),
('Impressoras'),
('Diversos');

SELECT * FROM tipos_produtos;


-- Produtos.
INSERT INTO produtos
(descricao, preco, id_tipo_produto)
VALUES
('Notebook DELL 1544','2345.67', '1'),
('Impressora Jato de Tinta','456.00','2'),
('Mouse Sem Fio','45','3');

SELECT * FROM produtos;

-- Pacientes.
INSERT INTO pacientes
(nome, endereco, bairro, cidade, estado, cep, data_nascimento)
VALUES
('Angelina Jolie','Rua da Paz, 45','Nova Lima','Santos','SP','121213213','1978-04-24');

SELECT * FROM pacientes;