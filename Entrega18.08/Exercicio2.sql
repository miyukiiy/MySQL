/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database db_ecommerce;

use db_ecommerce;

create table produtos(
id bigint auto_increment,
nome varchar (255) not null,
marca varchar (255),
preco decimal (10,2) not null,
quantidade int not null,
primary key (id)
);

insert into produtos(nome, marca, preco, quantidade) values ("Garrafa", "Vidrinho", 35.80, 50);
insert into produtos(nome, marca, preco, quantidade) values ("Copo", "Copinho Mágico", 49.99, 15);
insert into produtos(nome, marca, preco, quantidade) values ("Caveira", "Trevas.com", 549.99, 80);
insert into produtos(nome, marca, preco, quantidade) values ("Pudim de vidro", "Vidrinho", 880.50, 10);
insert into produtos(nome, marca, preco, quantidade) values ("Prato", "VestCasa", 25.00, 150);
insert into produtos(nome, marca, preco, quantidade) values ("Caneca", "Copinho Mágico", 50.25, 90);
insert into produtos(nome, marca, preco, quantidade) values ("Colar", "Colarzinho", 9.99, 25);
insert into produtos(nome, marca, preco, quantidade) values ("Vaso", "Plantinha de vidro", 30.00, 45);


select * from produtos;
select * from produtos where preco > 500.00;
select * from produtos where preco < 500.00;

update produtos set quantidade = 2 where id = 3;