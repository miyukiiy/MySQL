create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment not null,
doce varchar (255),
salgado varchar (255),
bebida boolean,
primary key (id)
);

insert into tb_categoria (doce, salgado, bebida) values ("Chocolate", "Frango", true);
insert into tb_categoria (doce, salgado, bebida) values ("Romeu e Julieta", "Calabresa", false);
insert into tb_categoria (doce, salgado, bebida) values ("Churros", "Bacon", true);
insert into tb_categoria (doce, salgado, bebida) values ("Beijinho", "Carne", true);
insert into tb_categoria (doce, salgado, bebida) values ("Abacaxi", "Portuguesa", false);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
Tamanho varchar (255),
quantidade bigint,
taxa decimal (5,2),
preco decimal (5,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (tamanho, quantidade, taxa, preco, categoria_id) values ("Grande", 2, 5.00, 150.60, 1);
insert into tb_pizza (tamanho, quantidade, taxa, preco, categoria_id) values ("Média", 1, 3.00, 79.99, 5);
insert into tb_pizza (tamanho, quantidade, taxa, preco, categoria_id) values ("pequeno", 1, 15.00, 35.50, 2);
insert into tb_pizza (tamanho, quantidade, taxa, preco, categoria_id) values ("Grande", 2, 2.00, 90.00, 4);
insert into tb_pizza (tamanho, quantidade, taxa, preco, categoria_id) values ("Média", 1, 8.00, 25.60, 3);
insert into tb_pizza (tamanho, quantidade, taxa, preco, categoria_id) values ("Pequena", 1, 5.00, 85.99, 5);
insert into tb_pizza (tamanho, quantidade, taxa, preco, categoria_id) values ("Grande", 1, 8.00, 45.00, 1);
insert into tb_pizza (tamanho, quantidade, taxa, preco, categoria_id) values ("Grande", 2, 5.00, 250.00, 3);

select * from tb_pizza;

select tb_pizza.tamanho, tb_pizza.quantidade, concat('R$ ',FORMAT(taxa, 2,'pt_BR')) as taxa, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.doce, tb_categoria.salgado, tb_categoria.bebida
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where preco > 45 ;

select tb_pizza.tamanho, tb_pizza.quantidade, concat('R$ ',FORMAT(taxa, 2,'pt_BR')) as taxa, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.doce, tb_categoria.salgado, tb_categoria.bebida
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where preco between 29 and 60;

select tb_pizza.tamanho, tb_pizza.quantidade, concat('R$ ',FORMAT(taxa, 2,'pt_BR')) as taxa, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.doce, tb_categoria.bebida
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where  doce like "c%";

select tb_pizza.tamanho, tb_pizza.quantidade, concat('R$ ',FORMAT(taxa, 2,'pt_BR')) as taxa, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.salgado, tb_categoria.bebida
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where  salgado like "c%";

select tb_pizza.tamanho, tb_pizza.quantidade, concat('R$ ',FORMAT(taxa, 2,'pt_BR')) as taxa, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço,tb_categoria.doce, tb_categoria.salgado, tb_categoria.bebida
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id ;

select tb_pizza.tamanho, tb_pizza.quantidade, tb_pizza.taxa, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.doce, tb_categoria.bebida
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id order by doce;





