create database aulaJoin;
use aulaJoin;
create  table Empresa(idEmpresa int primary key auto_increment,
nome varchar (45),
responsavel varchar (45))
auto_increment = 1000;

insert into empresa values 
( null,'Accenture','Rafaela'),
(null, 'C6bBank','Andresa');

select*from empresa;

create table aluno( ra char(8) primary key,
nome varchar (45),
bairro varchar (45),
fkEmpresa int,
constraint fkEmp foreign key (fkEmpresa)
references empresa(idEmpresa));


insert into aluno values
('01232999', 'Pedro', 'Consolação',1000),
('01232998','Big Suzane','Paraiso',1000),
('01232997','Hikari','Consolation', 1001);

select*from aluno;

select*from empresa join aluno on idEmpresa =fkEmpresa;

select a.nome as 'Nome Aluno',
e.nome as 'Nome Empresa'
from empresa as e join aluno as a
on idEmpresa = fkEmpresa;

select aluno.nome as 'Nome Aluno',
empresa.nome as 'Nome Empresa'
from empresa  join aluno 
on idEmpresa = fkEmpresa
where empresa.nome = 'Accenture';

select a.nome as 'Nome Aluno',
e.nome as 'Nome Empresa'
from empresa as e join aluno as a
on idEmpresa = fkEmpresa
where e.nome = 'Accenture';

