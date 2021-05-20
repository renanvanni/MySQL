create database db_eCommerce;

use db_eCommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
cor varchar(255) not null,
preco decimal not null,
qtdEstoque bigint not null,
primary key (id)
);

insert into tb_produtos (nome, cor, preco, qtdEstoque) values ("Celular Iphone", "Verde Militar", 12000.00, 500);
insert into tb_produtos (nome, cor, preco, qtdEstoque) values ("Aspirador", "Branco", 180.00, 250);
insert into tb_produtos (nome, cor, preco, qtdEstoque) values ("Luquidificador", "Preto", 150.00, 300);
insert into tb_produtos (nome, cor, preco, qtdEstoque) values ("Lampada led", "Branca", 100.00, 600);
insert into tb_produtos (nome, cor, preco, qtdEstoque) values ("Alexa", "Preto", 1000.00, 200);
insert into tb_produtos (nome, cor, preco, qtdEstoque) values ("Monitor PC", "Cinza", 900.00, 150);
insert into tb_produtos (nome, cor, preco, qtdEstoque) values ("Notebook", "Prata", 4000.00, 350);
insert into tb_produtos (nome, cor, preco, qtdEstoque) values ("Smart TV", "Prata", 6000.00, 100);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set cor = "Azul" where id = 4;