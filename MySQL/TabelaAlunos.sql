create database Escola;

use Escola;

create table Aluno(
Nome varchar (30),
Idade tinyint(3),
Curso varchar(15),
Sexo enum('M', 'F')
);

insert into Alunos
(Nome, Idade, Curso, Sexo)
values
('Mateus lima', '18', 'ciencias', 'M')