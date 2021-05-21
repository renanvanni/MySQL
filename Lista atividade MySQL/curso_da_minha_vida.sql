create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
baseCurso varchar(255) not null,
duracaoCursoEmH int not null,
primary key(id)
);

alter table tb_categoria change duracaoCursoEmH nomeProfessor varchar(255) not null;

create table tb_curso(
id bigint auto_increment,
nomeCurso varchar(255) not null,
preco decimal (6,2) not null,
duracaoCursoEmH int not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_categoria(baseCurso, nomeProfessor) values ("Java", "Jeferson");
insert tb_categoria(baseCurso, nomeProfessor) values ("MySQL", "Rafael");
insert tb_categoria(baseCurso, nomeProfessor) values ("Angular", "Thiago");
insert tb_categoria(baseCurso, nomeProfessor) values ("Adiministração", "Aimée");
insert tb_categoria(baseCurso, nomeProfessor) values ("HTML", "Rafael");

insert tb_curso(nomeCurso, preco, duracaoCursoEmH, categoria_id) values ("JRE e JDK", 160.00, 8, 1);
insert tb_curso(nomeCurso, preco, duracaoCursoEmH, categoria_id) values ("Básico MySQL", 70.00, 6, 2);
insert tb_curso(nomeCurso, preco, duracaoCursoEmH, categoria_id) values ("Avançado MySQL", 100.00, 6, 2);
insert tb_curso(nomeCurso, preco, duracaoCursoEmH, categoria_id) values ("Intermediário Angular", 20.00, 4, 3);
insert tb_curso(nomeCurso, preco, duracaoCursoEmH, categoria_id) values ("Avançado Angular", 40.00, 5, 3);
insert tb_curso(nomeCurso, preco, duracaoCursoEmH, categoria_id) values ("Adiministração de tempo", 45.00, 5, 4);
insert tb_curso(nomeCurso, preco, duracaoCursoEmH, categoria_id) values ("BSM's", 200.00, 20, 4);
insert tb_curso(nomeCurso, preco, duracaoCursoEmH, categoria_id) values ("HTML do basico ao avançado", 140.00, 21, 5);

select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where nomeCurso like "%j%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select tb_curso.nomeCurso, tb_categoria.baseCurso from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;