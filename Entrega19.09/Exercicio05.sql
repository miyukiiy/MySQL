create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment not null,
categoria varchar (255),
reciclavel boolean,
primary key (id)
);

insert into tb_categoria (categoria, reciclavel) values ("Vidro", true);
insert into tb_categoria (categoria, reciclavel) values ("Plastico", true);
insert into tb_categoria (categoria, reciclavel) values ("Alúminio", true);
insert into tb_categoria (categoria, reciclavel) values ("Isopor", false);
insert into tb_categoria (categoria, reciclavel) values ("Papéis Plastificados", false);


select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
quantidade int,
preco decimal (5,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Guarrafa", 50, 20.00, 1);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Copo", 150, 2.99, 2);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Panela", 15, 59.99, 3);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Caixa", 5, 3.99, 4);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Adesivo", 500, 0.50, 5);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Vaso", 7, 60.99, 2);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Estatua", 5, 80.99, 1);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Forma de Bolo", 200, 45.99, 3);

select * from tb_produtos;

select tb_produtos.nome, tb_produtos.quantidade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.categoria, tb_categoria.reciclavel
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where preco > 50 ;

select tb_produtos.nome, tb_produtos.quantidade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.categoria, tb_categoria.reciclavel
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where preco between 3 and 60;

select tb_produtos.nome, tb_produtos.quantidade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.categoria, tb_categoria.reciclavel
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where nome like "c%";

select tb_produtos.nome, tb_produtos.quantidade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.categoria, tb_categoria.reciclavel
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.quantidade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.categoria, tb_categoria.reciclavel
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where categoria = "Plastico";

