CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;


CREATE TABLE tb_categoria(
	parede BOOLEAN NOT NULL,
    piso BOOLEAN NOT NULL,
    telhados BOOLEAN NOT NULL,
	id BIGINT AUTO_INCREMENT,
	PRIMARY KEY (id)
);

CREATE TABLE  tb_produto(
	nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    disponivel BOOLEAN NOT NULL,
    fragil BOOLEAN NOT NULL,
    maleavel BOOLEAN NOT NULL,
    id BIGINT auto_increment,
    id_categoria BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(parede, piso, telhados) VALUES
(true, false, false),
(true, true, false),
(false, true, false),
(true, true, true),
(false, false, true);

INSERT INTO tb_produto(nome, valor, disponivel, fragil, maleavel, id_categoria) VALUES
("massa impermeavel", 100.00, true, false, true, 4),
("tinta de parede", 60.00, true, false, true, 1),
("lampada", 03.00, true, true, false, 5),
("manta termica", 75.55, true, false, true, 5),
("azulejo", 10.00, true, true, false, 2),
("massa de correr", 50.00, false, false, true, 1),
("azulejo de piso", 33.00, true, true, false,3),
("azulejo de parede", 15.00, true, true, false, 1);

SELECT * FROM tb_produto WHERE valor>50;
SELECT * FROM tb_produto WHERE valor>3 AND valor<60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";
SELECT * FROM tb_produto INNER JOIN tb_categoria  ON tb_categoria.id = tb_produto.id_categoria;
SELECT * FROM tb_produto WHERE id_categoria= 1;