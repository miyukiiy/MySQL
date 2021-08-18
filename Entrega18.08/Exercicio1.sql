/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database db_RH;

use db_RH;

create table funcionarios(
id bigint auto_increment,
nome varchar (255) not null,
setor varchar (255),
salario decimal (10,2) not null,
contato bigint(11) not null,
primary key (id)
);

insert into funcionarios(nome, setor, salario, contato) values ("Gabriel", "Contador", 2500.00, 11563214569);
insert into funcionarios(nome, setor, salario, contato) values ("Maria", "Desenvolvedora Java", 4500.00, 1175984563);  
insert into funcionarios(nome, setor, salario, contato) values ("Sabrina", "Designer", 3500.00, 1175698541236); 
insert into funcionarios(nome, setor, salario, contato) values ("Aline", "Estágiaria", 1200.00, 1198546588965); 
insert into funcionarios(nome, setor, salario, contato) values ("Eduarda", "Redatora", 1500.00, 1163215478); 

select * from funcionarios;
select * from funcionarios where salario > 2000.00;
select * from funcionarios where salario < 2000.00;

update funcionarios set salario = 1900.00 where id = 5;
