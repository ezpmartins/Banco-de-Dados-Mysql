-- PRÁTICA  06 
-- EX 01 

create database AlunoProjeto;
use AlunoProjeto;


create table projetos (idProjetos int primary key auto_increment,
nome varchar(45),
descricao varchar(45));

create table alunos (
ra int primary key auto_increment,
nome varchar(45),
telefone varchar(45),
fkAlunoRepresentante int,
 constraint fkAlunoRepresentante foreign key (fkAlunoRepresentante)references alunos(ra),
 fkProjeto int,	
 constraint fkProjeto foreign key (fkProjeto) references projetos(idProjetos));
 
 create table acompanhantes (idAcompanhantes int auto_increment,
 nome varchar (45), 
 parentesco varchar (45),
 fkNomeAluno int,
primary key(idAcompanhantes,fkNomeALuno));

insert into projetos(nome,descricao) values 
('Projeto Alpha', 'Projeto relacionado a animais.'),
('Projeto Beta', 'Um projeto de para fins de aprendizado.'),
('Projeto Omega', 'Projeto de ficção fictícia.');

insert into alunos (nome,telefone,fkAlunoRepresentante,fkProjeto) values
  ('João da Silva', '5555-5555', 1, 1),
  ('Maria Pereira', '6666-6666', 2, 2),
  ('Pedro Santos', '7777-7777', 1, 1),
  ('Ana Costa', '8888-8888', 3, 3),
  ('Miguel Ferreira', '1111-1111', 2, 2);
  
  insert into acompanhantes (nome,parentesco,fkNomeAluno) values
('Ana Silva', 'Mãe', 1),
('Carlos Santos', 'Pai', 2),
('Mariana Pereira', 'Tia', 1),
('José Rodrigues', 'Avô', 3),
('Lúcia Fernandes', 'Irmã', 2);

-- Exibir todos os dados de cada tabela criada, separadamente
select*from  projetos;
select*from alunos;
select*from acompanhantes;

-- Exibir os dados dos alunos e dos projetos correspondentes
  select*from alunos join projetos on idProjetos = fkProjeto;
  
-- Exibir os dados dos alunos e dos seus acompanhantes.
select*from alunos as Alunos join acompanhantes as AcompanhantesAlunos on ra= fkNomeAluno;

-- Exibir os dados dos alunos e dos seus representantes
select*from alunos as Alunos  join alunos as AlunosRepresentantes on Alunos.ra = AlunosRepresentantes.fkAlunoRepresentante;

-- Exibir os dados dos alunos e dos projetos correspondentes, mas somente de um determinado projeto (indicar o nome do projeto na consulta).
select*from alunos as AlunoPrincipal join
alunos as AlunoRepresentante on AlunoPrincipal.ra = AlunoRepresentante.fkAlunoRepresentante
join projetos as NomeProjeto  on AlunoPrincipal.ra = NomeProjeto.idProjetos 
where NomeProjeto.nome = 'Projeto Alpha';

-- Exibir os dados dos alunos, dos projetos correspondentes e dos seus acompanhantes.

select*from alunos left join projetos on fkProjeto = idProjetos left join acompanhantes on acompanhantes.fkNomeAluno=alunos.ra; 

-- EX 02 

create database campanha;
use campanha;

create table organizador (idOrganizador int primary key auto_increment, 
nome varchar(45),
endereco varchar(100),
email varchar(45),
fkOrganizadorNovato int, 
constraint fkOrganizadorNovato foreign key (fkOrganizadorNovato) references organizador (idOrganizador))
auto_increment = 30;

create table campanhas(idCampanhas int  primary key auto_increment,
categoria varchar(45),
instituicao varchar(45),
dtFinal date,
fkOrganizador int,
constraint fkOrganizador foreign key (fkOrganizador) references organizador (idOrganizador))
auto_increment = 500;

insert into organizador(nome,endereco,email) values 
('Enzo','Rua Antonio Correia 112 - Vila Bonilha','enzo.martins@gmail.com'),
('Igor','Rua Felipe Bonacciele 78 - Vila Ester','igor.euclides@gmail.com'),
('Amanda','Rua Ronaldo Curti 435 - Jabaquaro','amanda.ribeiro@gmail.com'),
('Anna Karol','Rua Tiradentes 324 - ABC Palista','anna.comk@gmail.com'),
('Jeano','Rua das Orquideas 56 - São Bento ','jeano.rocha@gmail.com');

insert into organizador(nome,endereco,email,fkOrganizadorNovato) values 
('Lucca','Rua Bento de Corrida 890 - Vila do Chaves','lucca.viudes@gmail.com',32),
('Fernado Passos','Rua Friburgo 765 - Santana','fer.passos@gmail.com',30),
('Jacinto Pinto','Rua Tilambo Cano 123 - Freguesia da Oakley','jacintopinto@gmail.com',33),
('Roberto Antedeguemom','Rua Pokebola 435 - São Penisvaldo','robertoantedeguemom@gmail.com',34);
insert into organizador (nome,endereco,email,fkOrganizadorNovato) values 
('Jair o Messias', 'Rua Facada do Brasil 22 - Jardim Brasilia','jairmessias@gmail.com',32);

insert into campanhas (categoria,instituicao,dtFinal,fkOrganizador) values 
('Campanha de Reciclagem', 'Escola Verde', '2023-12-31', 34),
('Ação de Voluntariado', 'Abrigo dos Sorrisos', '2023-11-15', 31),
('Festival de Artes', 'Casa da Cultura', '2023-10-25', 33),
('Feira de Tecnologia', 'Tech World', '2023-12-15', 30),
('Evento Esportivo', 'Clube dos Atletas', '2023-11-30',32),
('Campanha de Agasalhos','Agasalhos e C&A', '2023-10-14',30);

-- Exibir todos os dados de cada tabela criada, separadamente.
select*from organizador;
select*from campanhas;

-- Exibir os dados dos organizadores e os dados de suas respectivas campanhas
select*from organizador as org join campanhas as camp on org.idOrganizador  = camp.fkOrganizador;

-- Exibir os dados de um determinado organizador (informar o nome do organizador na consulta) e os dados de suas respectivas campanhas.
select*from organizador as org join campanhas as camp on org.idOrganizador = camp.fkOrganizador where org.nome = 'Enzo';

-- Exibir os dados dos organizadores novatos e os dados dos respectivos organizadores orientadores. 
select*from organizador as orgP join organizador as orgN on orgP.idOrganizador = orgN.fkOrganizadorNovato;

-- Exibir os dados dos organizadores novatos e os dados dos respectivos organizadores orientadores, porém somente de um determinado organizador 
-- orientador (informar o nome do organizador orientador na consulta).
select*from organizador as orgP join organizador as orgN on orgP.idOrganizador = orgN.fkOrganizadorNovato where orgP.nome ='Amanda';

-- Exibir os dados dos organizadores novatos, os dados das respectivas campanhas organizadas e os dados dos respectivos organizadores orientadores.
select*from organizador as orgP join organizador as orgN on orgP.idOrganizador = orgN.fkOrganizadorNovato left join campanhas as camp  on orgP.idOrganizador = camp.fkOrganizador;

-- Exibir os dados de um organizador novato (informar o seu nome na consulta),os dados das respectivas campanhas em que trabalha e os dados do seu organizador orientador.
select*from organizador as orgP join organizador as orgN on orgP.idOrganizador = orgN.fkOrganizadorNovato 
left join campanhas as camp  on orgN.fkOrganizadorNovato = camp.fkOrganizador where orgN.nome = 'Jair o Messias';
