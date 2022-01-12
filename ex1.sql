create database rh

use rh

create table funcionarios(
nome varchar (50),
cpg bigint (11),
email varchar (50),
salario decimal (10,2),
area varchar (50)
primary key (cpf)
)




insert into funcionarios (nome, cpf, email,salario, area) 
values("Carlos", 00000000000, carlos@gmail.com,1000.02,"TI");
insert into funcionarios (nome, cpf, salario, area) 
values("Roberval", 10000000000, 800.52, roberval@gmail.com,"Recepção");
insert into funcionarios (nome, cpf, salario, area) 
values("Claudia", 20000000000, claudia@gmail.com, 852.52,"Atendimento");
insert into funcionarios (nome, cpf, salario, area) 
values("Robson", 30000000000, robson@gmail.com,2030.78,"Sócio");
insert into funcionarios (nome, cpf, salario, area) 
values("Jusmar", 40000000000, jusmar@gmail.com,3000.00,"Dono");

select * from funcionarios where salario < 2000
select * from funcionarios where salario > 2000

update funcionarios set nome = "Rosbson" where cpf =30000000000