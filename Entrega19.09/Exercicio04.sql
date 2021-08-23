create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment not null,
descricao varchar (255),
semente boolean default false,
primary key (id)
);

insert into tb_categoria (descricao, semente) values ("Fruta", true);
insert into tb_categoria (descricao, semente) values ("Legume", false);
insert into tb_categoria (descricao, semente) values ("Hortaliça", false);
insert into tb_categoria (descricao, semente) values ("Animal", false);
insert into tb_categoria (descricao, semente) values ("Processado", false);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
quantidade int,
validade date,
preco decimal (5,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, quantidade, validade, preco, categoria_id) values ("Banana", 50, "2021-08-10", 5.99, 1);
insert into tb_produtos (nome, quantidade, validade, preco, categoria_id) values ("Cenoura", 15, "2021-08-10", 2.99, 2);
insert into tb_produtos (nome, quantidade, validade, preco, categoria_id) values ("Alface", 100, "2021-08-10", 6.99, 3);
insert into tb_produtos (nome, quantidade, validade, preco, categoria_id) values ("Frango", 10, "2021-09-10", 35.99, 4);
insert into tb_produtos (nome, quantidade, validade, preco, categoria_id) values ("Pêssego em Lata", 25, "2022-08-10", 80.99, 5);
insert into tb_produtos (nome, quantidade, validade, preco, categoria_id) values ("Laranja", 250, "2021-08-10", 8.50, 1);
insert into tb_produtos (nome, quantidade, validade, preco, categoria_id) values ("Beterraba", 2, "2021-08-10", 1.99, 2);
insert into tb_produtos (nome, quantidade, validade, preco, categoria_id) values ("Repolho", 32, "2021-08-10", 15.99, 3);


select * from tb_produtos;

select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.descricao, tb_categoria.semente
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where preco > 50 ;

select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.descricao, tb_categoria.semente
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where preco between 3 and 60;

select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.descricao, tb_categoria.semente
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where nome like "c%";

select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.descricao, tb_categoria.semente
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where nome like "c%";

select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.descricao, tb_categoria.semente
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.validade, concat('R$ ',FORMAT(preco, 2,'pt_BR')) as preço, tb_categoria.descricao, tb_categoria.semente
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where descricao = "legume";

