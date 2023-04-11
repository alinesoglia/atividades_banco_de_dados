-- Crie um banco de dados para um serviço de uma Pizzaria
CREATE DATABASE db_pizzaria_legal;

-- Criando a tabela categorias e seus atributos
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255) NOT NULL,
borda VARCHAR(255)
);

-- Criando a tabela pizzas, seus atributos e a foreign key
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255) NOT NULL,
valor DECIMAL(5,2),
tamanho VARCHAR(255) NOT NULL,
extra VARCHAR(255) NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- inserindo registros na tabela categorias
INSERT INTO tb_categorias (tipo, borda)
VALUES ("Salgada", "Catupiry");

INSERT INTO tb_categorias (tipo, borda)
VALUES ("Salgada", "Cheddar");

INSERT INTO tb_categorias (tipo, borda)
VALUES ("Salgada", "Cream Cheese");

INSERT INTO tb_categorias (tipo, borda)
VALUES ("Doce", "Chocolate");

INSERT INTO tb_categorias (tipo, borda)
VALUES ("Doce", "Doce de Leite");

-- exibindo a tabela categorias
SELECT * FROM tb_categorias;

-- inserindo registros na tablea pizzas e relacionando c/ a tabela categorias através da chave estrangeira
INSERT INTO tb_pizzas (sabor, valor, tamanho, extra, categoria_id)
VALUES ("Calabresa", 35.50, "Grande", "Cebola", 1);

INSERT INTO tb_pizzas (sabor, valor, tamanho, extra, categoria_id)
VALUES ("Mussarela", 35.50, "Família", "Molho", 1);

INSERT INTO tb_pizzas (sabor, valor, tamanho, extra, categoria_id)
VALUES ("Baiacatu", 45.50, "Grande", "Pimenta", 2);

INSERT INTO tb_pizzas (sabor, valor, tamanho, extra, categoria_id)
VALUES ("Palmito", 55.00, "Família", "Catupiry", 3);

INSERT INTO tb_pizzas (sabor, valor, tamanho, extra, categoria_id)
VALUES ("Brigadeiro", 45.50, "Média", "Morango", 4);

INSERT INTO tb_pizzas (sabor, valor, tamanho, extra, categoria_id)
VALUES ("Doce de leite", 42.50, "Média", "Banana", 5);

INSERT INTO tb_pizzas (sabor, valor, tamanho, extra, categoria_id)
VALUES ("Romeu e Julieta", 55.50, "Grande", "Catupiry", 4);

INSERT INTO tb_pizzas (sabor, valor, tamanho, extra, categoria_id)
VALUES ("Sensação", 55.50, "Grande", "Morango", 5);

-- exibindo a tabela pizzas
SELECT * FROM tb_pizzas;

-- exibindo as pizzas cujo valor é maior que 45,00
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- exibindo as pizzas cujo valor está entre 50 e 100,00
SELECT * FROM tb_pizzas WHERE valor >= 50.00 AND valor <= 100.00;

-- exibindo todas as pizzas que possuem a letra M no nome
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

-- unindo os dados da tabela pizza com os dados da tabela categoria
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- exibindo apenas as pizzas doces
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.id=4 OR tb_categorias.id=5;