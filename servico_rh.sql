create database db_servicorh;

use db_servicorh;

create table tb_tabelaFuncionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
setor varchar(255) not null,
salario decimal not null,
primary key (id)
);

insert into tb_tabelaFuncionarios (nome, idade, setor, salario) values ("Renan", 25, "Desenvolvedor", 4000.00);
insert into tb_tabelaFuncionarios (nome, idade, setor, salario) values ("Bruno", 30, "Qualidade", 4300.00);
insert into tb_tabelaFuncionarios (nome, idade, setor, salario) values ("Rebeca", 21, "Processos", 3600.00);
insert into tb_tabelaFuncionarios (nome, idade, setor, salario) values ("Vitoria", 32, "Gerente", 10000.00);
insert into tb_tabelaFuncionarios (nome, idade, setor, salario) values ("Gustavo", 46, "Logística", 1900.00);

select * from tb_tabelaFuncionarios where salario > 2000.00;
select * from tb_tabelaFuncionarios where salario < 2000.00;

update tb_tabelaFuncionarios set nome = "José" where id = 5;

alter table tb_tabelafuncionarios modify salario decimal(7,2);