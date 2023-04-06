CREATE DATABASE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255), 
    nota DECIMAL(3,1),
    turma VARCHAR(255),
    nomemae VARCHAR(255),
    idade INT,
    
    PRIMARY KEY(id)

);

INSERT INTO tb_estudantes(nome, nota, turma, nomemae, idade) 
values ("Aline Soglia", 8.5, "Gen63", "Edna Pelegrino", 31);
INSERT INTO tb_estudantes(nome, nota, turma, nomemae, idade) 
values ("Beatriz Bonanno", 9.0, "Letras", "Rosa Maria", 28);
INSERT INTO tb_estudantes(nome, nota, turma, nomemae, idade) 
values ("Giovanna Lasso", 10.0, "Direito", "Maria de Lourdes", 25);
INSERT INTO tb_estudantes(nome, nota, turma, nomemae, idade) 
values ("Bianca Cruz", 8.0, "Química", "Adriana Cruz", 30);
INSERT INTO tb_estudantes(nome, nota, turma, nomemae, idade) 
values ("Jair Santos", 5.5, "Pedagogia", "Michele Santos", 45);
INSERT INTO tb_estudantes(nome, nota, turma, nomemae, idade) 
values ("Luiz Gonzaga", 6.0, "Mecanica", "Maria Ferreira", 60);
INSERT INTO tb_estudantes(nome, nota, turma, nomemae, idade) 
values ("Andyara Luana", 7.5, "Administração", "Rosana Aparecida", 31);
INSERT INTO tb_estudantes(nome, nota, turma, nomemae, idade) 
values ("Alice Alves", 6.5, "Português", "Bianca Alves", 11);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.5 WHERE id = 6;