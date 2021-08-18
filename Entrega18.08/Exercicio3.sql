/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database db_escola;

use db_escola;

create table estudantes(
id bigint auto_increment,
nome varchar (255) not null,
idade int not null,
turma varchar (255) not null,
nota decimal (3,1) not null,
primary key (id)
);

insert into estudantes(nome, idade, turma, nota) values ("Maria", 15, "Sala 2", 6.6);
insert into estudantes(nome, idade, turma, nota) values ("João", 10, "Sala 20", 4.5);
insert into estudantes(nome, idade, turma, nota) values ("Rita", 5, "Sala 18", 8.5);
insert into estudantes(nome, idade, turma, nota) values ("Alberto", 12, "Sala 5", 1.0);
insert into estudantes(nome, idade, turma, nota) values ("Carlos", 9, "Sala 18", 10.0);
insert into estudantes(nome, idade, turma, nota) values ("Pepita", 12, "Sala 5", 8.0);
insert into estudantes(nome, idade, turma, nota) values ("Merida", 14, "Sala 20", 2.5);
insert into estudantes(nome, idade, turma, nota) values ("Suzana", 8, "Sala 18", 9.6);



select * from estudantes;
select * from estudantes where nota > 7.0;
select * from estudantes where nota < 7.0;

update estudantes set nota = 7.5 where id = 2;