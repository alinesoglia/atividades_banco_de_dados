-- comando para criação de banco de dados
CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255), 
    idade INT(2),
    salario DECIMAL(8,2),
    cargo VARCHAR(255),
    
    PRIMARY KEY(id)
    
    
);

INSERT INTO tb_colaboradores(nome, idade, salario, cargo)
VALUES("Caio", 23, 400.99, "Desenvolvedora");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- BONUS
ALTER TABLE tb_colaboradores
MODIFY COLUMN salario DECIMAL(10,2); 

UPDATE tb_colaboradores
SET salario = 8000.99
WHERE id=1


