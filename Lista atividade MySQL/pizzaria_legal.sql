create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) not null,
tipo varchar(255) not null,
primary key(id)
);

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
espessuraMassa varchar(255) not null,
preco decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_categoria (tamanho, tipo) values ("M", "Doce");
insert tb_categoria (tamanho, tipo) values ("P", "Doce");
insert tb_categoria (tamanho, tipo) values ("G", "Doce");
insert tb_categoria (tamanho, tipo) values ("G", "Salgada");
insert tb_categoria (tamanho, tipo) values ("M", "Salgada");

insert tb_pizza (sabor, espessuraMassa, preco, categoria_id) values ("Peperoni", "Fina", 30.00, 5);
insert tb_pizza (sabor, espessuraMassa, preco, categoria_id) values ("Frango com catupiry", "Média", 35.00, 4);
insert tb_pizza (sabor, espessuraMassa, preco, categoria_id) values ("Chocolata com Morango", "Média", 40.00, 3);
insert tb_pizza (sabor, espessuraMassa, preco, categoria_id) values ("Doce de Leite", "Grossa", 35.00, 1);
insert tb_pizza (sabor, espessuraMassa, preco, categoria_id) values ("Chocolate Branco", "Fina", 37.00, 2);
insert tb_pizza (sabor, espessuraMassa, preco, categoria_id) values ("Chocolate com sorvete", "Média", 48.00, 3);
insert tb_pizza (sabor, espessuraMassa, preco, categoria_id) values ("Calabresa", "Fina", 34.00, 4);
insert tb_pizza (sabor, espessuraMassa, preco, categoria_id) values ("Queijo", "Grossa", 20.00, 5);

select sabor, preco from tb_pizza where preco > 45.00;
select sabor, preco from tb_pizza where preco between 29.00 and 60.00;
select * from tb_pizza where sabor like "%c%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;