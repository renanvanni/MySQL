create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categorias(
id bigint auto_increment,
tipoConstrucao varchar(255) not null,
cor varchar(255) not null,
primary key(id)
);
create table tb_produto(
id bigint auto_increment,
nomeProduto varchar(255) not null,
custo decimal (6,2) not null,
material varchar(255) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

insert tb_categorias (tipoConstrucao, cor) values ("Alvenaria", "Marrom");
insert tb_categorias (tipoConstrucao, cor) values ("Alvenaria", "Cinza");
insert tb_categorias (tipoConstrucao, cor) values ("Container", "Azul");
insert tb_categorias (tipoConstrucao, cor) values ("Wood frame", "Madeira");
insert tb_categorias (tipoConstrucao, cor) values ("Steel frame", "Prata");

insert tb_produto (nomeProduto, custo, material, categoria_id) values ("Argamassa", 20.00, "Cimento", 2);
insert tb_produto (nomeProduto, custo, material, categoria_id) values ("Pilar de madeira", 100.00, "Madeira", 4);
insert tb_produto (nomeProduto, custo, material, categoria_id) values ("Pilar de cimento", 60.00, "Cimento", 2);
insert tb_produto (nomeProduto, custo, material, categoria_id) values ("Pilar de aço", 70.00, "Aço", 5);
insert tb_produto (nomeProduto, custo, material, categoria_id) values ("Verniz madeira", 30.00, "Tinta", 4);
insert tb_produto (nomeProduto, custo, material, categoria_id) values ("Verniz tijolos", 15.00, "Tinta", 1);
insert tb_produto (nomeProduto, custo, material, categoria_id) values ("Tinta esmalte", 46.00, "Tinta", 5);
insert tb_produto (nomeProduto, custo, material, categoria_id) values ("Tinta esmalte", 46.00, "Tinta", 3);

select * from tb_produto where custo > 50.00;
select * from tb_produto where custo between 3.00 and 60.00;
select * from tb_produto where nomeProduto like "%c%";
select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id;
select tb_produto.nomeProduto, tb_categorias.tipoConstrucao from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id;