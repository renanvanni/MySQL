create database db_registroEscola;

use db_registroEscola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
endereco varchar(255) not null,
nota int not null,
primary key(id)
);

insert into tb_alunos(nome, idade, endereco, nota) values ("Isabela", 15, "Rua das palmeiras, 56", 6);
insert into tb_alunos(nome, idade, endereco, nota) values ("Pedro", 17, "Rua das oliveiras, 5", 7);
insert into tb_alunos(nome, idade, endereco, nota) values ("Paulo", 11, "Rua xavier, 100", 8);
insert into tb_alunos(nome, idade, endereco, nota) values ("Giovana", 14, "Trav. das artemisias, 12", 9);
insert into tb_alunos(nome, idade, endereco, nota) values ("Gerson", 16, "Rua feliz, 7", 5);
insert into tb_alunos(nome, idade, endereco, nota) values ("Roberto", 18, "Rua dona carlota, 80", 3);
insert into tb_alunos(nome, idade, endereco, nota) values ("Davi", 13, "Rua dos bambus, 23", 4);
insert into tb_alunos(nome, idade, endereco, nota) values ("Fernanda", 12, "Rua carijós, 500", 10);

select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set nota = 8 where id = 2;