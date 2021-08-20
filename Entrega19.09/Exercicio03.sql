create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment not null,
cosmetico varchar (255),
remedio varchar (255),
higiene varchar (255),
primary key (id)
);

insert into tb_categoria (cosmetico) values ("Maquiagem");
insert into tb_categoria (remedio) values ("Dipirona");
insert into tb_categoria (higiene) values ("Sabonete");
insert into tb_categoria (cosmetico) values ("Batom");
insert into tb_categoria (higiene) values ("Pasta de Dente");


select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
quantidade int,
marca varchar (255),
validade date,
preco decimal (5,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (quantidade, marca, validade, preco, categoria_id) values (20, "Beaty", "2021-11-10", 85.60, 1);
insert into tb_produtos (quantidade, marca, validade, preco, categoria_id) values (100, "Melly", "2022-12-20", 59.99, 2);
insert into tb_produtos (quantidade, marca, validade, preco, categoria_id) values (50, "Cogate", "2022-08-15", 5.99, 5);
insert into tb_produtos (quantidade, marca, validade, preco, categoria_id) values (15, "Dove", "2025-08-20", 8.99, 3);
insert into tb_produtos (quantidade, marca, validade, preco, categoria_id) values (10, "Avon", "2021-12-10", 15.50, 4);
insert into tb_produtos (quantidade, marca, validade, preco, categoria_id) values (05, "Febo", "2028-02-07", 2.99, 3);
insert into tb_produtos (quantidade, marca, validade, preco, categoria_id) values (200, "Next", "2021-09-08", 12.99, 2);
insert into tb_produtos (quantidade, marca, validade, preco, categoria_id) values (04, "Natura", "2025-08-20", 25.85, 4);

select * from tb_produtos;

select tb_produtos.quantidade, tb_produtos.marca, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.cosmetico, tb_categoria.remedio, tb_categoria.higiene
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where preco > 50 ;

select tb_produtos.quantidade, tb_produtos.marca, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.cosmetico, tb_categoria.remedio, tb_categoria.higiene
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where preco between 3 and 60;

select tb_produtos.quantidade, tb_produtos.marca, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.cosmetico, tb_categoria.remedio, tb_categoria.higiene
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where marca like "n%";

select tb_produtos.quantidade, tb_produtos.marca, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.cosmetico, tb_categoria.remedio, tb_categoria.higiene
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where marca like "b%";

select tb_produtos.quantidade, tb_produtos.marca, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.cosmetico, tb_categoria.remedio, tb_categoria.higiene
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.quantidade, tb_produtos.marca, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.cosmetico, tb_categoria.remedio, tb_categoria.higiene
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where marca like "c%";

select tb_produtos.quantidade, tb_produtos.marca, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.cosmetico
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where cosmetico like "b%" or cosmetico like "m%";