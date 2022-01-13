create database ecommerce

use ecommerce;

create table produtos(
id bigint auto_increment,
nome varchar (50) not null,
valor decimal(10,2),
tipo varchar (50),
estoque boolean,
primary key (id)
)




insert into  produtos(nome, tipo, valor, estoque) 
values("cebola", "perecivel",3.00 , true);
insert into  produtos(nome, tipo, valor, estoque) 
values("alho", "perecivel",1.99 , true);
insert into  produtos(nome, tipo, valor, estoque) 
values("tomate", "perecivel",4.50 , false);
insert into  produtos(nome, tipo, valor, estoque) 
values("cenoura", "perecivel",1.50 , true);
insert into  produtos(nome, tipo, valor, estoque) 
values("arroz", "não perecivel",23.00 , true);
insert into  produtos(nome, tipo, valor, estoque) 
values("feijão", "não perecivel",8.00 , true);
insert into  produtos(nome, tipo, valor, estoque) 
values("pc gamer", "não perecivel",5000.00 , true);
insert into  produtos(nome, tipo, valor, estoque) 
values("cadeira gamer", "não perecivel",800.00 , true);


select * from produtos where valor < 500
select * from produtos where valor > 500

update produtos set nome = "Cadeira gamer de escritorio" where id = 8