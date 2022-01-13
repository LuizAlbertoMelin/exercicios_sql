CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;


CREATE TABLE tb_categoria(
	tipo VARCHAR(50) NOT NULL,
    animal VARCHAR(20),
    classificacao VARCHAR(20),
	id BIGINT AUTO_INCREMENT,
	PRIMARY KEY (id)
);

CREATE TABLE  tb_produto(
	nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
	osso BOOLEAN,
    churrasco BOOLEAN,
    disponivel BOOLEAN,
    id BIGINT auto_increment,
    id_categoria BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, animal, classificacao) VALUES
("corte","boi", "açogue"),
("inteiro","galinacio", "açogue"),
("corte","porco","açogue"),
("corte","galinacio", "açogue"),
("molhos",null, "balcão"),
("outros",null, "balcão");

INSERT INTO tb_produto(nome, valor, osso, churrasco, disponivel, id_categoria) VALUES
("pernil", 25.00, true, true, true, 3),
("linguiça", 8.00, false, true, true, 3),
("frango", 60.00, true, true, true, 2),
("peito de frango", 23.55, false, true, true, 4),
("acem", 10.00, false, true, true, 1),
("coxão mole", 8.00, false, true, true, 1),
("barbecue", 33.00, false, true, true, 5),
("carvão", 15.00, false, true, true, 6);

SELECT * FROM tb_produto WHERE valor>50;
SELECT * FROM tb_produto WHERE valor>3 AND valor<60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";
SELECT * FROM tb_produto INNER JOIN tb_categoria  ON tb_categoria.id = tb_produto.id_categoria;
SELECT * FROM tb_produto WHERE id_categoria= 1;