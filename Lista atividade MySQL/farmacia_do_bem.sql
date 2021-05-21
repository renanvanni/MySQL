create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipoMedicamento varchar(255) not null,
generico boolean not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
produto varchar(255) not null,
preco decimal (6,2) not null,
qtdComprimidos int not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_categoria (tipoMedicamento, generico) values ("Cosmético", true);
insert tb_categoria (tipoMedicamento, generico) values ("Cosmético", false);
insert tb_categoria (tipoMedicamento, generico) values ("Dermatológico", false);
insert tb_categoria (tipoMedicamento, generico) values ("Dermatológico", true);
insert tb_categoria (tipoMedicamento, generico) values ("Comprimido", true);

insert tb_produto (produto, preco, qtdComprimidos, categoria_id) values ("Omeprazol", 100.00, 24, 5);
insert tb_produto (produto, preco, qtdComprimidos, categoria_id) values ("Fenergan", 22.00, 0, 4);
insert tb_produto (produto, preco, qtdComprimidos, categoria_id) values ("Fenergan", 27.00, 0, 3);
insert tb_produto (produto, preco, qtdComprimidos, categoria_id) values ("Hidratante Facial", 60.00, 0, 2);
insert tb_produto (produto, preco, qtdComprimidos, categoria_id) values ("Hidratante Facial", 55.00, 0, 1);
insert tb_produto (produto, preco, qtdComprimidos, categoria_id) values ("Novalgina", 15.00, 12, 5);
insert tb_produto (produto, preco, qtdComprimidos, categoria_id) values ("Vitamina C", 8.00, 10, 5);
insert tb_produto (produto, preco, qtdComprimidos, categoria_id) values ("Creme Fenergan", 30.00, 0, 3);

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where produto like "%b%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select tb_produto.produto, tb_categoria.tipoMedicamento from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tipoMedicamento like "%cosmetico%";