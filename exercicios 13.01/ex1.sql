CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	tipo VARCHAR(50) NOT NULL,
    arma VARCHAR(50),
    origem VARCHAR(50),
    id BIGINT AUTO_INCREMENT,
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagem(
	nome VARCHAR(50) NOT NULL,
    idade BIGINT(3),
    altura DECIMAL(10,2),
    ataque BIGINT(5) NOT NULL,
    defesa BIGINT(5) NOT NULL,
    id BIGINT AUTO_INCREMENT,
    id_classes BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_classes) REFERENCES tb_classe(id) 
);

INSERT INTO tb_classe (tipo, arma, origem) VALUES 
("Arqueiro", "Arco", "Vila dos elfos"),
("Gurreiro", "Espada e Escudo grande", "Capitail"),
("Viking", "Machado", "Norte"),
("Minotauro", "Machado Grande", "Dungeons"),
("Mago", "Cajado", "Grande Biclioteca");


INSERT INTO tb_personagem (nome, idade, altura, ataque, defesa, id_classes) VALUES
	("david", 23, 1.85, 8001, 32, 1),
    ("gabriel", 19, 1.72, 2, 5000, 2),
    ("Bruno", 88, 1.65, 5000, 1000, 5),
	("lucas", 200, 3.58, 5000, 5000, 4),
	("daniel", 90, 1.70, 7000, 12, 5),
    ("Isa", 36, 1.90, 2500, 2500, 3),
    ("Glaucya", 47, 1.92, 6000, 1000, 3),
	("Gui", 200, 1.67, 4859, 2000, 1);
	
SELECT * FROM tb_personagem WHERE ataque>2000;
SELECT * FROM tb_personagem WHERE defesa>1000 AND defesa<2000;
SELECT * FROM tb_personagem WHERE nome LIKE  "%c%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id_classes;
SELECT * FROM tb_personagem WHERE id_classes = 1;

