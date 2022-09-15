create database LojaDoSertao;

use LojaDoSertao;
create table clientes(
nome varchar(30),
cpf varchar(11),
telefone int(11),
endereco varchar(50)
);

insert into clientes 
(nome, cpf, telefone, endereco)
values
('Antonio', '11111111111', 83966666666, 'Avenida jose calvacanti, manaira, 282');

insert into clientes 
(nome, cpf, telefone, endereco)
values
('Jose', '22222222222', 83977777777, 'Rua presidnete Venceslau Braz, Bessa, 747');

insert into clientes 
(nome, cpf, telefone, endereco)
values
('Anna', '33333333333', 83988888888, 'Rua Professora Rita Miranda, 13 de maio, 60');

insert into clientes 
(nome, cpf, telefone, endereco)
values
('Dalva', '44444444444', 83999999999, 'Avenida Bahia, Bairro dos estados, 34');

insert into clientes 
(nome, cpf, telefone, endereco)
values
('Claudimar', '55555555555', 83910101010, 'Rua professora Eudesia Vieira, Bairro dos estados, 159');


create table Estoque(
Nome varchar(10),
CodBarras int(10),
Valor float(2,2)
);

insert into Estoque 
(Nome, CodBarras, Valor)
values
('Queijo', 000, 31.90);

insert into Estoque 
(Nome, CodBarras, Valor)
values
('Carne de sol', 000, 40.31);

insert into Estoque 
(Nome, CodBarras, Valor)
values
('Nata', 000, 10.00);

insert into Estoque 
(Nome, CodBarras, Valor)
values
('Cafe', 000, 01.50);

insert into Estoque 
(Nome, CodBarras, Valor)
values
('Manteiga', 000, 10.50);