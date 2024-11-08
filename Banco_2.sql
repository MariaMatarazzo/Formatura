create database AtividadeFormativa;

use AtividadeFormativa;

create table Universidade(
Cod_Universidade int auto_increment primary key not null,
nome varchar (100) not null,
telefone varchar (255) not null,
Rua varchar (255) not null,
Bairro varchar (100) not null,
CEP varchar (255) not null,
Cidade varchar (255) not null,
Numero varchar (255) not null
);

create table Estudante(
Cod_Estudante int auto_increment primary key not null,
nome varchar (100) not null,
telefone varchar (255) not null,
Rua varchar (255) not null,
Bairro varchar (100) not null,
CEP varchar (255) not null,
Cidade varchar (255) not null,
Numero varchar (255) not null,
Cod_Universidade int,
foreign key(Cod_Universidade)references Universidade(Cod_Universidade)
);

INSERT INTO Universidade (nome, telefone, Rua, Bairro, CEP, Cidade, Numero) 
VALUES ("Universidade São Paulo", "(11) 1234-5678", "Rua dos Estudantes, 100", "Centro", "01000-000", "São Paulo", '100'),
       ("Universidade Federal do Rio de Janeiro", "(21) 9876-5432", "Avenida Atlântica, 2500", "Copacabana", '22070-001', 'Rio de Janeiro', '2500'),
	   ("Universidade Estadual de Campinas", "(19) 1234-5678", "Rua dos Trabalhadores, 300", "Cidade Universitária", '13083-887', 'Campinas', '300'),
       ("Universidade Federal de Minas Gerais", "(31) 4567-8901", "Avenida Antônio Carlos, 6627", "Pampulha", '31270-901', 'Belo Horizonte', '6627'),
       ("Universidade de Brasília", "(61) 3123-4567", "Lote 10", "Campus Universitário", "Asa Norte", "70910-900", "Brasília', '10");
       
INSERT INTO Estudante (nome, telefone, Rua, Bairro, CEP, Cidade, Numero, Cod_Universidade)
 VALUES ('Ana Paula Silva', '(11) 99876-5432', 'Rua das Acácias, 450', 'Centro', '01001-001', 'São Paulo', '450', 1),
        ('Pedro Henrique Costa', '(21) 99987-6543', 'Rua da Praia, 112', 'Copacabana', '22070-002', 'Rio de Janeiro', '112', 2),
        ('Mariana Almeida', '(19) 98765-4321', 'Avenida dos Trabalhadores, 1200', 'Cidade Universitária', '13083-888', 'Campinas', '1200', 3),
        ('Felipe Oliveira', '(31) 98765-1234', 'Rua das Palmeiras, 500', 'Pampulha', '31270-902', 'Belo Horizonte', '500', 4),
        ('Carla Souza', '(61) 91234-5678', 'Quadra 10, Lote 30', 'Asa Norte', '70910-901', 'Brasília', '30', 5);
       
       Select * from Universidade;
       Select * from Estudante;
       
       UPDATE Estudante
       set nome = "Joana Silva"
       where Cod_Universidade = 1;
       
       UPDATE Universidade
       set nome = "USP Ribeirão Preto"
       where Cod_Universidade = 3;
       
       delete from Estudante
	   where Cod_Estudante = 5;
     
     /*Listar*/
Create view vw_Estudante_Universidade AS 
select Estudante.nome AS Nome_Aluno,
Universidade.nome AS Nome_Universidade, 
Universidade.cidade AS Cidade_Universidade
From Universidade
   
inner join Estudante on Estudante.Cod_Universidade;
       
select*from VW_Estudante_Universidade;
       
       

       