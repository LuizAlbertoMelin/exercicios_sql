CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;


CREATE TABLE tb_categoria(
	tipo VARCHAR(50),
    tipo_produto VARCHAR(20),
	id BIGINT AUTO_INCREMENT,
	PRIMARY KEY (id)
);

CREATE TABLE  tb_produto(
	nome VARCHAR(50),
    valor DECIMAL(10,2),
	tarja_preta BOOLEAN,
    receita BOOLEAN,
    disponivel BOOLEAN,
    id BIGINT auto_increment,
    id_categoria BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, tipo_produto) VALUES
("comprimido","farmacia"),
("gotas","farmacia"),
("injeção","famacia"),
("banho","perfumaria"),
("skin care","perfumaria"),
("outros","perfumaria");

INSERT INTO tb_produto(nome, valor, tarja_preta, receita, disponivel, id_categoria) VALUES
("Xarope", 25.00, false, false, true, 2),
("Dipirona", 8.00, false, false, true, 1),
("Rivotril", 60.00, true, true, true, 1),
("shampoo", 23.55, false, false, true, 4),
("sabone para rosto", 10.00, false, false, true, 5),
("desodorante", 8.00, false, false, true, 6),
("isunila", 33.00, false, false, true, 3),
("camisinha", 15.00, false, true, true, 6);

SELECT * FROM tb_produto WHERE valor>50;
SELECT * FROM tb_produto WHERE valor>3 AND valor<60;
SELECT * FROM tb_produto WHERE nome LIKE "%b%";
SELECT * FROM tb_produto INNER JOIN tb_categoria  ON tb_categoria.id = tb_produto.id_categoria;
SELECT * FROM tb_produto WHERE id_categoria= 1;