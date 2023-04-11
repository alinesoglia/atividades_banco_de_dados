-- criando o banco de dados de uma farmácia
CREATE DATABASE db_farmacia_bem_estar;
-- selecionando banco de dadod
USE db_farmacia_bem_estar;

-- criando a tabela categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255) NOT NULL,
fabricante VARCHAR(255) 
); 

-- criando a tabela produtos e a chave estrangeira
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255) NOT NULL,
valor DECIMAL(5,2) NOT NULL,
quantidade INT,
validade DATE NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
); 

-- inserindo registros na tabela categorias
INSERT INTO tb_categorias (categoria, fabricante)
VALUES ("Medicamento", "Bayer");

INSERT INTO tb_categorias (categoria, fabricante)
VALUES ("Medicamento", "Pfizer");

INSERT INTO tb_categorias (categoria, fabricante)
VALUES ("Cosmético", "Nivea");

INSERT INTO tb_categorias (categoria, fabricante)
VALUES ("Cosmético", "Jhonsson & Jhonsson");

INSERT INTO tb_categorias (categoria, fabricante)
VALUES ("Cosmético", "Vult");

-- inserindo registros na tabela produtos e relacionando c/ a tabela categorias através da chave estrangeira
INSERT INTO tb_produtos (nome_produto, valor, quantidade, validade, categoria_id)
VALUES ("Cloridrato de Fluoxetina", 65.50, 31, "2023-10-07", 1);

INSERT INTO tb_produtos (nome_produto, valor, quantidade, validade, categoria_id)
VALUES ("Cloridrato de Sertralina", 85.50, 22, "2023-10-09", 2);

INSERT INTO tb_produtos (nome_produto, valor, quantidade, validade, categoria_id)
VALUES ("Creme Hidratante", 25.50, 15, "2023-10-07", 3);

INSERT INTO tb_produtos (nome_produto, valor, quantidade, validade, categoria_id)
VALUES ("Protetor Solar 50", 85.50, 25, "2024-10-08", 3);

INSERT INTO tb_produtos (nome_produto, valor, quantidade, validade, categoria_id)
VALUES ("Shampoo Infantil", 25.50, 45, "2024-10-10", 4);

INSERT INTO tb_produtos (nome_produto, valor, quantidade, validade, categoria_id)
VALUES ("Lenços Umedecidos", 15.50, 65, "2026-10-07", 4);

INSERT INTO tb_produtos (nome_produto, valor, quantidade, validade, categoria_id)
VALUES ("Máscara de cílios", 25.50, 39, "2025-10-07", 5);

INSERT INTO tb_produtos (nome_produto, valor, quantidade, validade, categoria_id)
VALUES ("Batom", 35.50, 45, "2024-10-07", 5);

-- exibindo a tabela produtos
SELECT * FROM tb_produtos;

-- exibindo produtos com valor maior que 50,00
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- exibindo produtos com valor entre 5,00 e 60,00
SELECT * FROM tb_produtos WHERE valor >= 5.00 AND valor <= 60.00;

-- exibindo produtos com a letra C no nome
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

-- unindo os dados da tablea produtos com a tabela categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- exibindo dados de um produto de determinada categoria
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 4;