create database escola

use escola;

create table estudantes(
id bigint auto_increment,
nome varchar (50) not null,
nota decimal(10,2),
sala varchar (50),
matriculado boolean,
primary key (id)
)




insert into  estudantes(nome, sala, nota, matriculado) 
values("jose", "3º A", 03.00 , true);
insert into  estudantes(nome, sala, nota, matriculado) 
values("claudio", "4º A", 08.00 , true);
insert into  estudantes(nome, sala, nota, matriculado) 
values("josefina", "5º A", 09.00 , true);
insert into  estudantes(nome, sala, nota, matriculado) 
values("glaucya", "6º A", 09.75 , true);
insert into  estudantes(nome, sala, nota, matriculado) 
values("roberta", "7º A", 00.00 , true);
insert into  estudantes(nome, sala, nota, matriculado) 
values("julia", "8º A", 06.00 , true);
insert into estudantes(nome, sala, nota, matriculado) 
values("ramon", "9º A", 08.00 , true);
insert into  estudantes(nome, sala, nota, matriculado) 
values("julio", "1º A", 07.00 , true);


select * from estudantes where valor < 7
select * from estudantes where valor > 7

update estudantes set nota = 07.00 where id = 5