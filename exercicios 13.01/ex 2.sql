CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- nao sei 3 categorias pra pizza

CREATE TABLE tb_categoria(
	tipo VARCHAR(50) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
	id BIGINT AUTO_INCREMENT,
	PRIMARY KEY (id)
);

CREATE TABLE tb_pizza(
	nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
	borda_recheada BOOLEAN,
    picante BOOLEAN,
    molho_extra BOOLEAN,
    id BIGINT auto_increment,
    id_categoria BIGINT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, tamanho) VALUES
("Salgada","Familia"),
("Salgada","Media"),
("Salgada","Broto"),
("Doce","Familia"),
("Doce","Media"),
("Doce","Broto");

INSERT INTO tb_pizza(nome, valor, borda_recheada, picante, molho_extra, id_categoria) VALUES
("Marguerita", 59.99, true, false, true, 1),
("2 Queijos", 36.00, false, false, false, 2),
("Mexicana", 27.99, true, true, true, 3),
("napolitano", 70.55, false, false, false, 4),
("brigadeiro", 40.00, false, false, false, 5),
("banana com canela", 32.00, false, false, false, 6),
("mussarela", 60.00, true, false, true, 1),
("baiana", 38.00, false, true, false, 2);

SELECT * FROM tb_pizza WHERE valor>45;
SELECT * FROM tb_pizza WHERE valor>29 AND valor<60;
SELECT * FROM tb_pizza WHERE nome LIKE "%c%";
SELECT * FROM tb_pizza INNER JOIN tb_categoria  ON tb_categoria.id = tb_pizza.id_categoria;
SELECT * FROM tb_pizza WHERE id_categoria= 1;