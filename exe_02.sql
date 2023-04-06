CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nomeprod VARCHAR(255), 
    valor DECIMAL(8,2),
    categoria VARCHAR(255),
    marca VARCHAR(255),
    quantidade INT,
    
    PRIMARY KEY(id)
    
    
);

INSERT INTO tb_produtos(nomeprod, valor, categoria, marca, quantidade) 
values ("Harry Potter", 45.50, "livros", "Rocco Editora", 24);
INSERT INTO tb_produtos(nomeprod, valor, categoria, marca, quantidade) 
values ("Caneta Rosa", 5.95, "escritório", "Bic", 125);
INSERT INTO tb_produtos(nomeprod, valor, categoria, marca, quantidade) 
values ("Caneca personalizada", 34.20, "utensilios", "Tramontina", 30);
INSERT INTO tb_produtos(nomeprod, valor, categoria, marca, quantidade) 
values ("Pula Pirata", 52.65, "brinquedos", "Estrela", 15);
INSERT INTO tb_produtos(nomeprod, valor, categoria, marca, quantidade) 
values ("Mario Kart", 69.90, "jogos eletrônicos", "Nintendo", 20);
INSERT INTO tb_produtos(nomeprod, valor, categoria, marca, quantidade) 
values ("Caderno MTV", 18.90, "papelaria", "Tilibra", 12);
INSERT INTO tb_produtos(nomeprod, valor, categoria, marca, quantidade) 
values ("Lapiseira", 10.50, "escritório", "Pentel", 41);
INSERT INTO tb_produtos(nomeprod, valor, categoria, marca, quantidade) 
values ("Mouse", 35.60, "escritório", "Dell", 26);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET quantidade = 110 WHERE id = 2;