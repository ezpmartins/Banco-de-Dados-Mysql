create database sprint1;
use sprint1;
-- TABELA EX 01 
create table Atleta (
idatleta int primary key auto_increment,
Nome varchar (40),
Modalidade varchar (40),
QtdMedalha int);
	 insert into Atleta(nome,modalidade,QtdMedalha) values
     ('Neymar','Futebol',01),
     ('Mbappe','Futebol',02),
     ('Rafael Nadal', 'Tênis',03),
     ('Michael Phelps','Natação', 05),
     ('Lewis Hamilton','Formúla 1',09);
     
     -- Exibir todos os dados da tabela
    select*from atleta;
    -- Atualizar a quantidade de medalhas do atleta com id=1;
    update Atleta set Qtdmedalha = 03 where idatleta = 1;
    -- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
    update Atleta set Qtdmedalha = 05 where idatleta in (2,3);
    -- Atualizar o nome do atleta com o id=4;
    update Atleta set nome = 'Cesar Cielo' where idatleta = 4;
    -- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
    alter table Atleta add column dtNasc date ;
    -- Atualizar a data de nascimento de todos os atletas;
    update Atleta  set dtnasc = '1998-03-05' where idatleta = 1;
    update Atleta set dtnasc = '2000-06-19' where idatleta = 2;
    update atleta set dtnasc = '1997-05-12' where idatleta = 3;
    update atleta set dtnasc = '1999-03-28' where idatleta = 4;
    update atleta set dtnasc= '2001-12-09' where idatleta = 5;
    -- Excluir o atleta com o id=5;
     delete from atleta  where idatleta= 5;
     -- • Exibir os atletas onde a modalidade é diferente de natação;
     select*from atleta  where modalidade  != 'Natação';
     -- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;
     select*from atleta where qtdmedalha >= 3;
     -- Modificar o campo modalidade do tamanho 40 para o tamanho 60;
     alter table atleta modify column modalidade varchar (60);	
     -- Descrever os campos da tabela mostrando a atualização do campo modalidade;
     describe atleta;
     -- Limpar os dados da tabela;
     truncate table atleta;
     
     -- TABELA EX 02
     create table Música (idMusica int primary key auto_increment,
     Titulo varchar (40),
     Artista varchar(40),
     Genero varchar(40));
     
     insert into Música(titulo,artista,genero) values 
('Fantastico Mundo da Oakley','Kyan','Trap'),
 ('Ballena','Vulgo FK','Trap'),
 ('Vida Chique','Veigh', 'Trap'),
 ('In the end','Linkin Park','Rock'),
 ('Numb','Linkin Park','Rock'),
 ('Quero Ser Feliz Também','Natiruts','Reggae'),
 ('Caneta Azul','Manoel','Forró');
 
 -- Exibir todos os dados da tabela.
 select*from música;
 --  Adicionar o campo curtidas do tipo int na tabela;
 alter table música add column Curtidas int ;
 -- Atualizar o campo curtidas de todas as músicas inseridas;
 update música set curtidas =780.000 where idmusica in (1,2,3);
 update música set curtidas = 100.000 where idmusica = 4;
 update música set curtidas = 200.000 where idmusica = 5;
 update música set curtidas = 456.00 where idmusica = 6;
 update música set curtidas = 367.000 where idmusica = 7;
 -- Modificar o campo artista do tamanho 40 para o tamanho 80;
 alter table música modify artista varchar (80);
 -- Atualizar a quantidade de curtidas da música com id=1;
 update música set curtidas = 870.000 where idmusica = 1;
 -- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
update música set curtidas = 640.000 where idmusica = 2; 
update música set curtidas = 578.000 where idmusica = 3; 
-- Atualizar o nome da música com o id=5;
update música set titulo = 'Talking to myself' where idmusica = 5;
-- Excluir a música com o id=4
delete from música where idmusica =5;
-- Exibir as músicas onde o gênero é diferente de funk;
select*from música where genero != 'Funk';
-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
select*from música where curtidas >= 20;
-- Descrever os campos da tabela mostrando a atualização do campo artista;
describe música;
-- Limpar os dados da tabela;
truncate música;

-- TABELA EX 03 
create table Filme (idfilme int primary key auto_increment,
Titulo varchar (50),
Genero varchar(40),
Diretor varchar(40)); 

insert into Filme(titulo,genero,diretor) values
('Harry Potter','Ficção Cientifica','Rogerio Viverde'),
('Harry Potter 2','Ficção Cientifica','Rogerio Viverde'),
('Extração','Ação','Justin Bieber'),
('Minha mãe é uma peça','Comédia','Paulo Gustavo'),
('A Rainha','Documentário','Jennifer Castro'),
('1917','Ação e Aventura', 'James Cameron'),
('Ochamado',' Terror','Jennifer Castro');

-- Exibir todos os dados da tabela.
select*from filme;
-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
alter table filme add column Protagonista varchar (50);
-- Atualizar o campo protagonista de todas os filmes inseridos;
update filme set protagonista ='Harry Potter 'where  idfilme in (1,2);
update filme set protagonista =' Android 17' where idfilme= 4;
update filme set protagonista = ' Rainha Elizabeth' where idfilme=5;
update filme set protagonista = ' Paul Atreides' where idfilme=6;
update filme set protagonista = 'Samara' where idfilme =7;
-- Modificar o campo diretor do tamanho 40 para o tamanho 150;
alter table filme  modify diretor  varchar (150);
-- Atualizar o diretor do filme com id=5;
update filme set diretor ='Amanda Santos' where idfilme = 5;
-- Atualizar o diretor dos filmes com id=2 e com o id=7;
update  filme set diretor = 'Cristopher Lang' where idfilme in (2,7);
-- Atualizar o título do filme com o id=6;
update filme set titulo ='A Guerra Fria' where idfilme = 6;
-- Excluir o filme com o id=3;
delete from filme where idfilme=3;
-- Exibir os filmes em que o gênero é diferente de drama;
select*from filme where genero !='drama';
-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
select*from filme where genero ='suspense';
-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor
describe filme;
-- Limpar os dados da tabela;
truncate filme;

-- TABELA EX 04

create table Professor(idprofessor int primary key auto_increment,
Nome varchar (50),
Especialidade varchar(40),
dtNasc date);
insert into Professor (nome,especialidade,dtnasc) values
('CAIO', 'ALGORITMOS','1999-07-25'),
('VIVIAN','BANCO DE DADOS','2000-09-23'),
('EDUARDO','ARQ.COMP','1975-05-17'),
('MONICA','T.I','1969-03-01'),
('FERNANDA','INGLÊS','1996-12-12'),
('BRANDÃO','P.I','1965-08-13'),
('THIAGO','SOCIOEMOCIONAL','1994-11-24'),
('MARISE','ARQ.COMP','1980-06-09'); 

-- Exibir todos os dados da tabela.
select*from professor;
-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’
alter table professor add column funcao varchar(50) check (funcao in ('Monitor','Assistente','Titular'));
-- Atualizar os professores inseridos e suas respectivas funções;
update professor set funcao = 'Titular' where idprofessor in (1,2,3,4); 
update professor set funcao = 'Assistente' where idprofessor in (5,6);
update professor set funcao ='Monitor' where idprofessor in (7,8);
--  Inserir um novo professor;
insert into professor values
(null,'João Pedro','ALGORITMOS','2003-12-09','Monitor');
-- 	Excluir o professor onde o idProfessor é igual a 5;
delete from professor where idprofessor =5;
-- Exibir apenas os nomes dos professores titulares;
select*from professor where funcao = 'TITULAR';
-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
select especialidade,dtnasc from professor where funcao = 'monitor';
-- Atualizar a data de nascimento do idProfessor igual a 3;
update professor set dtnasc= '1999-08-09' where idprofessor = 3;
-- Limpar a tabela Professor;
truncate professor;



