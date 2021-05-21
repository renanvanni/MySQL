create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
peso decimal (5,2) not null,
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (5, 2) not null,
cor varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_categoria (tipo, peso) values ("Legume", 0.60);
insert tb_categoria (tipo, peso) values ("Fruta", 0.40);
insert tb_categoria (tipo, peso) values ("Vegetal", 0.20);
insert tb_categoria (tipo, peso) values ("Planta", 2.20);
insert tb_categoria (tipo, peso) values ("Fungo", 0.90);

insert tb_produto (nome, preco, cor, categoria_id) values ("Alface", 2.30, "Verde", 3);
insert tb_produto (nome, preco, cor, categoria_id) values ("Melancia 10x", 80.00, "Verde", 2);
insert tb_produto (nome, preco, cor, categoria_id) values ("Beterraba", 20.00, "Roxa", 1);
insert tb_produto (nome, preco, cor, categoria_id) values ("Cacto", 40.00, "Verde", 4);
insert tb_produto (nome, preco, cor, categoria_id) values ("Maçã", 15.00, "Vermelho", 2);
insert tb_produto (nome, preco, cor, categoria_id) values ("Cogumelo", 21.00, "Marrom", 5);
insert tb_produto (nome, preco, cor, categoria_id) values ("Melão", 11.00, "Amarelo", 2);
insert tb_produto (nome, preco, cor, categoria_id) values ("Rucula", 3.50, "Verde", 3);

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%c%";
select tb_produto.nome, tb_produto.preco, tb_produto.cor, tb_categoria.tipo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select tb_produto.nome, tb_categoria.tipo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;