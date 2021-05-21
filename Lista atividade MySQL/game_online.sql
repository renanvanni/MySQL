create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
pontuacaoMax bigint not null,
liga varchar(255) not null,
primary key(id)
);

create table tb_personagem(
id bigint auto_increment,
nomePersonagem varchar(255) not null,
raridade varchar(255) not null,
caracteristica varchar(255) not null,
nivelPoder int not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_classe (id)
);

insert tb_classe (pontuacaoMax, liga) values (4600, "Desafiante 3");
insert tb_classe (pontuacaoMax, liga) values (5000, "Mestre 1");
insert tb_classe (pontuacaoMax, liga) values (6000, "Campeão");
insert tb_classe (pontuacaoMax, liga) values (5600, "Mestre 3");
insert tb_classe (pontuacaoMax, liga) values (5300, "Mestre 2");

insert tb_personagem (nomePersonagem, raridade, caracteristica, nivelPoder) values ("Gigante Elétrico", "Épico", "Tanque", 9);
insert tb_personagem (nomePersonagem, raridade, caracteristica, nivelPoder) values ("Mago de Gelo", "Lendário", "Tropa", 8);
insert tb_personagem (nomePersonagem, raridade, caracteristica, nivelPoder) values ("Bebe Dragão", "Épico", "Aéreo", 10);
insert tb_personagem (nomePersonagem, raridade, caracteristica, nivelPoder) values ("Tornado", "Épico", "Feitiço", 8);
insert tb_personagem (nomePersonagem, raridade, caracteristica, nivelPoder) values ("Principe das Trevas", "Épico", "Tropa", 9);
insert tb_personagem (nomePersonagem, raridade, caracteristica, nivelPoder) values ("Barril de Bárbaro", "Épico", "Feitiço/Tropa", 9);
insert tb_personagem (nomePersonagem, raridade, caracteristica, nivelPoder) values ("Relâmpago", "Épico", "Feitiço", 9);
insert tb_personagem (nomePersonagem, raridade, caracteristica, nivelPoder) values ("Jaula de Goblin", "Raro", "Construção", 9);

alter table tb_personagem change raridade raridade varchar(255);

update tb_personagem set nivelPoder = 2500 where id = 1;
update tb_personagem set nivelPoder = 2000 where id = 2;
update tb_personagem set nivelPoder = 1000 where id = 3;
update tb_personagem set nivelPoder = 1500 where id = 4;
update tb_personagem set nivelPoder = 800 where id = 5;
update tb_personagem set nivelPoder = 4000 where id = 6;
update tb_personagem set nivelPoder = 3300 where id = 7;
update tb_personagem set nivelPoder = 1200 where id = 8;

update tb_personagem set caracteristica = 2000 where id = 1;
update tb_personagem set caracteristica = 1000 where id = 2;
update tb_personagem set caracteristica = 1600 where id = 3;
update tb_personagem set caracteristica = 6000 where id = 4;
update tb_personagem set caracteristica = 800 where id = 5;
update tb_personagem set caracteristica = 3400 where id = 6;
update tb_personagem set caracteristica = 3300 where id = 7;
update tb_personagem set caracteristica = 1200 where id = 8;

alter table tb_personagem change caracteristica nivelDefesa int;

select * from tb_personagem where nivelPoder > 2000;
select nomePersonagem, nivelDefesa from tb_personagem where nivelDefesa between 1000 and 2000;
select * from tb_personagem where nomePersonagem like "%c%";

update tb_personagem set categoria_id = 5 where id = 1;
update tb_personagem set categoria_id = 1 where id = 2;
update tb_personagem set categoria_id = 2 where id = 3;
update tb_personagem set categoria_id = 4 where id = 4;
update tb_personagem set categoria_id = 3 where id = 5;
update tb_personagem set categoria_id = 4 where id = 6;
update tb_personagem set categoria_id = 5 where id = 7;
update tb_personagem set categoria_id = 5 where id = 8;

select tb_personagem.nomePersonagem, tb_classe.liga from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;

-- Extra
select * from tb_classe;
select * from tb_personagem;