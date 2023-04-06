CREATE DATABASE db_quitanda;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
	nome varchar(255) not null,
	quantidade int,
	preco decimal not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("tomate",100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);

SELECT * FROM tb_produtos;
SELECT nome FROM tb_produtos;
SELECT * FROM tb_produtos WHERE id = 1;
SELECT * FROM tb_produtos WHERE preco > 5.00;
SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

UPDATE tb_produtos SET preco = 5.00 WHERE id = 1;

DELETE FROM tb_produtos WHERE id = 2;

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);
ALTER TABLE tb_produtos ADD descricao varchar(255);
ALTER TABLE tb_produtos DROP descricao; 
ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255); 