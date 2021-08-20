create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment not null,
Tipo varchar (255),
numvagas int,
bolsa boolean,
primary key (id)
);

insert into tb_categoria (tipo, numvagas, bolsa) values ("Java", 50, true);
insert into tb_categoria (tipo, numvagas, bolsa) values ("Arte", 20, false);
insert into tb_categoria (tipo, numvagas, bolsa) values ("Historia", 30, true);
insert into tb_categoria (tipo, numvagas, bolsa) values ("Design", 25, false);
insert into tb_categoria (tipo, numvagas, bolsa) values ("Matematica", 50, true);


select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
aula varchar (255),
mensalidade decimal (8,2),
Desconto decimal (5,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (aula, mensalidade, desconto, categoria_id) values ("Historia da arte", 500.00, 20.00, 2);
insert into tb_produtos (aula, mensalidade, desconto, categoria_id) values ("Lógica de Programação", 150.00, 50.00, 1);
insert into tb_produtos (aula, mensalidade, desconto, categoria_id) values ("Identidade Visual", 3000.00, 0.00, 4);
insert into tb_produtos (aula, mensalidade, desconto, categoria_id) values ("Feudalismo", 45, 5.00, 3);
insert into tb_produtos (aula, mensalidade, desconto, categoria_id) values ("Calculo", 35.00, 10.00, 5);
insert into tb_produtos (aula, mensalidade, desconto, categoria_id) values ("MySQL", 250.00, 20.00, 1);
insert into tb_produtos (aula, mensalidade, desconto, categoria_id) values ("Composição de cores", 200.00, 12.00, 2);
insert into tb_produtos (aula, mensalidade, desconto, categoria_id) values ("Historia Medieval", 25.00, 20.00, 3);


select * from tb_produtos;

select tb_produtos.aula, concat('R$ ',FORMAT(mensalidade, 2,'pt_BR')) as mensalidade, concat('R$ ',FORMAT(desconto, 2,'pt_BR')) as desconto, tb_categoria.tipo, tb_categoria.numvagas, 
tb_categoria.bolsa from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where mensalidade > 50 ;

select tb_produtos.aula, concat('R$ ',FORMAT(mensalidade, 2,'pt_BR')) as mensalidade, concat('R$ ',FORMAT(desconto, 2,'pt_BR')) as desconto, tb_categoria.tipo, tb_categoria.numvagas, 
tb_categoria.bolsa from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where mensalidade between 3 and 60;

select tb_produtos.aula, concat('R$ ',FORMAT(mensalidade, 2,'pt_BR')) as mensalidade, concat('R$ ',FORMAT(desconto, 2,'pt_BR')) as desconto, tb_categoria.tipo, tb_categoria.numvagas, 
tb_categoria.bolsa from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where aula like "h%";

select tb_produtos.aula, concat('R$ ',FORMAT(mensalidade, 2,'pt_BR')) as mensalidade, concat('R$ ',FORMAT(desconto, 2,'pt_BR')) as desconto, tb_categoria.tipo, tb_categoria.numvagas, 
tb_categoria.bolsa from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.aula, concat('R$ ',FORMAT(mensalidade, 2,'pt_BR')) as mensalidade, concat('R$ ',FORMAT(desconto, 2,'pt_BR')) as desconto, tb_categoria.tipo, tb_categoria.numvagas, 
tb_categoria.bolsa from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tipo = "Java";


