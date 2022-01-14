CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;


CREATE TABLE tb_categoria(
	mysql BOOLEAN NOT NULL,
    java BOOLEAN NOT NULL,
	horario VARCHAR(50) NOT NULl,
	id BIGINT AUTO_INCREMENT,
	PRIMARY KEY (id)
);

CREATE TABLE  tb_curso(
	nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    disponivel BOOLEAN NOT NULL,
    usa_apps BOOLEAN NOT NULL,
    usa_hardware BOOLEAN NOT NULL,
    id BIGINT auto_increment,
    id_categoria BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(mysql, java, horario) VALUES
(true, false, "manhã"),
(true, false, "tarde"),
(false, true, "manhã"),
(true, true, "manhã e tarde"),
(false, true, "tarde" );

INSERT INTO tb_curso(nome, valor, disponivel, usa_apps, usa_hardware,id_categoria) VALUES
("introdução java manhã", 100.00, true, true, true, 3),
("introdução mysql manhã", 50.00, true, true, true, 1),
("introdução java  tarde", 120.00, true, true, true, 5),
("curso completo java e mysql", 200.55, true, true, true, 4),
("introdução mysql tarde", 45.00, true, true, true, 2),
("se tornando junior java manhã", 50.00, false, false, true, 3),
("se tornando junior java  tarde", 33.00, true, true, false,5),
("se tornando junior mysql manhã", 42.00, true, true, false, 1);

SELECT * FROM tb_curso WHERE valor>50;
SELECT * FROM tb_curso WHERE valor>3 AND valor<60;
SELECT * FROM tb_curso WHERE nome LIKE "%c%";
SELECT * FROM tb_curso INNER JOIN tb_categoria  ON tb_categoria.id = tb_curso.id_categoria;
SELECT * FROM tb_curso WHERE id_categoria= 1;