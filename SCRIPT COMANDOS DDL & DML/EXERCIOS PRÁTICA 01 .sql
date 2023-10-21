create database sprint1;

use sprint1;


-- TABELA EX 01 
create table  Atleta(
id int primary key,
 nome varchar (40), Modalidades varchar (40),QtdMedalhas int);
 insert into atleta values
 ( 1, 'Enzo', 'Natação', 4),
 (2, 'João Pedro', 'Natação',3),
 (3,' Felipe', 'Futsal', 6),
 (4, 'Antonio', 'Basquete', 2),
 (5, 'Amanda', ' Basquete',5),
 (6,'Anna Karol', 'Volei', 2),
 (7, 'Davi', 'Futsal', 7),
 (8,'Pedro', 'Volei', 4);
-- Exibir todos os dados da tabela.
select * from  atleta;
-- Exibir apenas os nomes e quantidade de medalhas dos atletas
select nome,qtdmedalhas from atleta;
-- Exibir apenas os dados dos atletas de uma determinada modalidade.
select nome from atleta where  modalidades='natação';
-- Exibir os dados da tabela ordenados pela modalidade
 select * from atleta  order by modalidades;
-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
select* from atleta order by qtdmedalhas desc;
-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
select* from atleta where nome like '%S%';
-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
select * from atleta where nome like 'A%';
-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
select * from atleta where nome like '%O';
-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r
select * from atleta where nome like '%R_';
-- Eliminar a tabela.
drop table atleta;



-- TABELA EX 02 
create table Musica( id int primary key,
 Titulo varchar (40), Artista varchar (40), Genero varchar(40));
 insert into Musica values
 (1,'Fantastico Mundo da Oakley','Kyan','Trap'),
 (2,'Ballena','Vulgo FK','Trap'),
 (3,'Vida Chique','Veigh', 'Trap'),
 (4,'In the end','Linkin Park','Rock'),
 (5,'Numb','Linkin Park','Rock'),
 (6,'Quero Ser Feliz Também','Natiruts','Reggae'),
 (7,'Caneta Azul','Manoel','Forró');
 
 -- Exibir todos os dados da tabela
 select * from musica;
 -- Exibir apenas os títulos e os artistas das músicas
 select titulo, artista from musica;
 -- Exibir apenas os dados das músicas de um determinado artista.
 select*from musica where artista ='Linkin Park';
 -- Exibir os dados da tabela ordenados pelo título da música.
 select* from musica order by titulo;
 -- Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
 select * from musica order by artista desc;
 -- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra
 select * from musica where titulo like  'b%';
 -- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
 select * from musica where artista like '%K';
 -- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
 select * from musica where genero like '_O%';
 -- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
 select* from musica where titulo like ' %A_';
 -- Elimine a tabela.
 drop table musica;
 
 -- TABELA EX 03
 
Create table Filme ( id int primary key,
Titulo varchar (50), Genero varchar (50), Diretor varchar (50));
insert into Filme values
(1,'Harry Potter','Ficção Cientifica','Rogerio Viverde'),
(2,'Harry Potter 2','Ficção Cientifica','Rogerio Viverde'),
(3,'Extração','Ação','Justin Bieber'),
(4,'Minha mãe é uma peça','Comédia','Paulo Gustavo'),
(5,'A Rainha','Documentário','Jennifer Castro'),
(6,'1917','Ação e Aventura', 'James Cameron'),
(7,'Ochamado',' Terror','Jennifer Castro');

-- Exibir todos os dados da tabela
select * from Filme;
-- Exibir apenas os títulos e os diretores dos filmes
select titulo, diretor from filme;
-- Exibir apenas os dados dos filmes de um determinado gênero.
select* from filme where genero = 'Ficção Cientifica';
-- Exibir apenas os dados dos filmes de um determinado diretor
select* from filme where diretor ='Jennifer Castro';
-- Exibir os dados da tabela ordenados pelo título do filme
select* from filme order by titulo;
-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
select * from filme order by diretor desc;
-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra
select * from filme where titulo like 'H%';
-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra
select * from filme where titulo like '%A';
-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
select *from  filme where genero like '_I%';
-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
select * from filme where titulo like '%A_';
-- Elimine a tabela
drop table filme;

-- TABELA EX 04 

create table Professor (id int primary key,
Nome varchar (50), 
Especialidade varchar (40),
 dtNasc date);
insert into Professor values
(1,'CAIO', 'ALGORITMOS','1999-07-25'),
(2,'VIVIAN','BANCO DE DADOS','2000-09-23'),
(3,'EDUARDO','ARQ.COMP','1975-05-17'),
(4,'MONICA','T.I','1969-03-01'),
(5,'FERNANDA','INGLÊS','1996-12-12'),
(6,'BRANDÃO','P.I','1965-08-13'),
(7,'THIAGO','SOCIOEMOCIONAL','1994-11-24'),
(8,'MARISE','ARQ.COMP','1980-06-09'); 

-- Exibir todos os dados da tabela
select* from professor;
-- Exibir apenas as especialidades dos professores
select especialidade from professor;
-- Exibir apenas os dados dos professores de uma determinada especialidade.
select* from professor where especialidade ='banco de dados';
-- Exibir os dados da tabela ordenados pelo nome do professor
select* from professor order by nome;
-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente
select* from professor order by dtnasc desc;
-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
select* from professor where nome like 'M%';
-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.
select* from professor where nome like '%o';
-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra
select * from professor where nome like '_A%';
-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra
select*from professor where nome like '%C_';
-- Elimine a tabela.
drop table professor;

-- TABELA EX 05 

create table Curso (idCurso int primary key,
Nome varchar (50),
Sigla varchar (3),
Coordenador varchar (50));
insert into Curso values
(1,'ANALISE E DESENVOLVIMENTO DE SISTEMAS','ADS','GERSON'),
(2,'CIÊNCIA DA COMPUTAÇÃO','CCO','CLÁUDIO'),
(3,'ANALISE E DESENVOLVIMENTO DE SISTEMAS','ADS','GERSON'),
(4,'ANALISE E DESENVOLVIMENTO DE SISTEMAS','ADS','GERSON'),
(5,'SISTEMAS DE INFORMAÇÃO','SIS','CLÁUDIA');

-- Exibir todos os dados da tabela.
select*from Curso;
-- Exibir apenas os coordenadores dos cursos.
select coordenador from curso;
--  Exibir apenas os dados dos cursos de uma determinada sigla.
select* from curso where sigla ='ADS';
-- Exibir os dados da tabela ordenados pelo nome do curso.
select* from curso order by nome;
-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente
select* from curso order by coordenador desc;
-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
select* from curso where nome like 'C%';
-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
select * from curso where nome like '%S';
-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
select* from curso where nome like '_I%';
-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
select* from curso where nome like '%A_';
-- Elimine a tabela.
drop table curso;

-- TABELA EX 06

create table Revista (idRevista int primary key auto_increment,
Nome varchar (40),
Categoria Varchar (30));
insert into Revista values
(null,'Veja', null),
(null,'Epoca',null),
(null,'Isto é',null),
(null,'Quatro Rodas',null);
-- Exibir todos os dados da tabela.
select* from revista;
-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
update revista set categoria ='Fofoca'  where idRevista ='3';
select* from revista;
update revista set categoria= 'Notícias' where idRevista ='1';
update revista set categoria ='Desportivas' where idRevista='2';
update revista set categoria =' Culturais' where idRevista='4';
select* from revista;
-- Insira mais 3 registros completos.
insert into revista values 
(null,'Editora Abril','Notícias'),
(null,'Recreio','Infantil'),
(null,'Playboy','Maiores de 18 anos');
-- Exibir novamente os dados da tabela.
select*from revista;
-- Exibir a descrição da estrutura da tabela
describe revista;
-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
alter table revista modify column categoria varchar (40);
-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
describe revista;
-- Acrescentar a coluna periodicidade à tabela, que é varchar(15)
alter table revista add column Periodicidade varchar(15);
-- Exibir os dados da tabela.
select* from revista;
-- Excluir a coluna periodicidade da tabela.
alter table revista drop column periodicidade;

 -- EXCLUIR O BANCO DE DADOS SPRINT1*
 drop database sprint1;

