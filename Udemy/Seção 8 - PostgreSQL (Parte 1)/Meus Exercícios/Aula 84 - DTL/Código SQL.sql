SELECT * FROM tipos_produto;

-- Transaction.

BEGIN TRANSACTION;

INSERT INTO tipos_produto (descricao) VALUES ('Tipo C');
INSERT INTO tipos_produto (descricao) VALUES ('Tipo D');

-- Commit

COMMIT;


BEGIN TRANSACTION;
INSERT INTO tipos_produto (descricao) VALUES ('Tipo A');
INSERT INTO tipos_produto (descricao) VALUES ('Tipo B');

ROLLBACK;