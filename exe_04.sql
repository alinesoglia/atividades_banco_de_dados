CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
classe VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
equipamento VARCHAR(255),
ataque INT,
defesa INT,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (classe, tipo)
VALUES ("Guerreiro", "Lutador");

INSERT INTO tb_classes (classe, tipo)
VALUES ("Arqueiro", "Atirador");

INSERT INTO tb_classes (classe, tipo)
VALUES ("Feiticeiro", "Suporte");

INSERT INTO tb_classes (classe, tipo)
VALUES ("Paladino", "Tanque");

INSERT INTO tb_classes (classe, tipo)
VALUES ("Assassino", "Assassino");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens (nome, equipamento, ataque, defesa, classe_id)
VALUES ("Minotauro", "Machado", 3000, 2000, 2);

INSERT INTO tb_personagens (nome, equipamento, ataque, defesa, classe_id)
VALUES ("Akai", "Martelo", 1500, 1000, 2);

INSERT INTO tb_personagens (nome, equipamento, ataque, defesa, classe_id)
VALUES ("Karina", "Espada", 3500, 2500, 1);

INSERT INTO tb_personagens (nome, equipamento, ataque, defesa, classe_id)
VALUES ("Lesley", "Facão", 2700, 1200, 1);

INSERT INTO tb_personagens (nome, equipamento, ataque, defesa, classe_id)
VALUES ("Freya", "Espada", 3000, 2000, 2);

INSERT INTO tb_personagens (nome, equipamento, ataque, defesa, classe_id)
VALUES ("Layla", "Bazuka", 5000, 1000, 3);

INSERT INTO tb_personagens (nome, equipamento, ataque, defesa, classe_id)
VALUES ("Lolita", "Machado", 2500, 4000, 4);

INSERT INTO tb_personagens (nome, equipamento, ataque, defesa, classe_id)
VALUES ("Esmeralda", "Magia", 1500, 2600, 5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.id=1;




