create database bd_Formativa;
use bd_Formativa;

create table Aeronave(
Nav_id int auto_increment primary key not null,
nome varchar (100) not null,
comunicador varchar (255) not null,
destino varchar (255) not null
);

create table Passageiro(
Pass_id int auto_increment primary key not null,
nome varchar (100) not null,
telefone varchar (255) not null,
endereco varchar (255) not null,
Nav_id int,
foreign key(Nav_id)references Aeronave(Nav_id)
);

INSERT INTO Aeronave(nome,comunicador,destino)
values ("Falcon 9", "Controlador de voo espacial", "Estação Espacial Internacional (ISS)"),
       ("Airbus A350", "Piloto automático e torre de controle", "Aeroporto Internacional de Heathrow, Londres"),
       ("Boeing 787 Dreamliner", "Rádio aeronáutico (ATC)", "Aeroporto Internacional de Tóquio"),
	   ("Cessna 172", "Rádio de comunicação VHF", "Aeroporto de pequenas aeronaves de Rio de Janeiro"),
       ("Concorde", "Sistema de comunicação por satélite", "Aeroporto de Paris Charles de Gaulle");
       
INSERT INTO Passageiro(nome,telefone,endereco,Nav_id)
values ("João Silva", "(11) 98765-4321", "Rua das Flores, 123, São Paulo, SP", 1),
       ("Maria Oliveira", "(21) 91234-5678", "Avenida Atlântica, 456, Rio de Janeiro, RJ", 2),
       ("Carlos Souza", "(31) 99876-5432", "Rua do Sol, 789, Belo Horizonte, MG", 3),
       ("Fernanda Lima", "(41) 98765-0987", "Rua das Palmeiras, 101, Curitiba, PR", 4),
       ("Ricardo Santos", "(61) 91234-8765", "Quadra 5, Lote 10, Brasília, DF", 5);
       
       Select * from Aeronave;
       Select * from Passageiro;
       
       UPDATE Passageiro
       set nome = "Joana Silva"
       where Pass_id = 1;
       
       UPDATE Aeronave
       set nome = "Disney Avião"
       where Nav_id = 3;
       
       delete from Passageiro
	   where Pass_id = 5;
     
     /*Listar*/
       Create view VW_PassageirosVoa AS 
       select Passageiro.nome AS Nome_Passageiro,
       Aeronave.nome AS Nome_Aeronave,
       Aeronave.destino AS Destino_Aeronave
       From Passageiro
       inner join Aeronave on passageiro.nav_id;
       
       select*from VW_PassageirosVoa;
       
       

       