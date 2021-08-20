create database db_generation_game_online;

use  db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
ataque bigint,
defesa bigint,
mana bigint,
primary key (id)
);

insert into tb_classe (ataque, defesa, mana) values (1000, 1000, 3000);
insert into tb_classe (ataque, defesa, mana) values (10, 100, 1500);
insert into tb_classe (ataque, defesa, mana) values (5000, 2000, 50);
insert into tb_classe (ataque, defesa, mana) values (50, 20, 8);
insert into tb_classe (ataque, defesa, mana) values (1500, 1500, 800);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment not null,
nome varchar (255) not null,
habilidades varchar (255) not null,
raca varchar (255),
LV bigint not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, habilidades, raca, LV, classe_id) values ("Dovakin", "Ladrão", "khajiit", 50, 3);
insert into tb_personagem (nome, habilidades, raca, LV, classe_id) values ("Jade", "Assassina", "Elfo", 100, 5);
insert into tb_personagem (nome, habilidades, raca, LV, classe_id) values ("Lydia", "Companheira", "Humana", 45, 5);
insert into tb_personagem (nome, habilidades, raca, LV, classe_id) values ("Jorginho", "Guerreiro", "Orc", 100, 3);
insert into tb_personagem (nome, habilidades, raca, LV, classe_id) values ("Cicero", "Bardo", "Humana", 2, 4);
insert into tb_personagem (nome, habilidades, raca, LV, classe_id) values ("Fiona", "Maga", "Ogro", 200, 1);
insert into tb_personagem (nome, habilidades, raca, LV, classe_id) values ("Safira", "maga", "elfa", 10, 2);
insert into tb_personagem (nome, habilidades, raca, LV, classe_id) values ("Farkas", "Guerreiro", "Humano", 80, 3);

select * from tb_personagem;

select tb_personagem.nome, tb_personagem.habilidades, tb_personagem.raca, tb_personagem.LV, tb_classe.ataque, tb_classe.defesa, tb_classe.mana
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where ataque > 2000;

select tb_personagem.nome, tb_personagem.habilidades, tb_personagem.raca, tb_personagem.LV, tb_classe.ataque, tb_classe.defesa, tb_classe.mana
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where defesa between 1000 and 2000;

select tb_personagem.nome, tb_personagem.habilidades, tb_personagem.raca, tb_personagem.LV, tb_classe.ataque, tb_classe.defesa, tb_classe.mana
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where nome like "f%";

select tb_personagem.nome, tb_personagem.habilidades, tb_personagem.raca, tb_personagem.LV, tb_classe.ataque, tb_classe.defesa, tb_classe.mana
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where habilidades like "Maga%";


