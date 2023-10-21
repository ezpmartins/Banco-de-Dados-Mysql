-- EXERCÍCIO 01

create database sprint2;
use sprint2;
create table atleta( idAtleta int primary key auto_increment,
Nome varchar(40),
Modalidade varchar (40),
qtdMedalha int);

insert into atleta (Nome,Modalidade,qtdmedalha)values
('Neynar', 'Futebol',5),
('Mbappe','Futebol',6),
('Nadal', 'Tênis',4),
('Phelps','Natação',7),
('Lebron James','Basquete',10),
('Cris Bumbstead','Fisiculturista',3);

create table pais (idPais int primary key auto_increment,
Nome varchar (30),
Capital varchar (40));

insert into pais( Nome,Capital) values 
('Brazil','Brasilia'),
('França', 'Paris'),
('Espanha','Madrid'),
('Estados Unidos','Washigton'),
('Noruega','Oslo');

select*from pais;
alter table atleta add column fkPais int,
 add constraint fkPais foreign key (fkPais)
references Pais(idPais);

update atleta set fkPais = 1 where idAtleta = 1;
update atleta set fkPais = 2 where idAtleta =2;
update atleta set fkPais = 3 where idAtleta = 3;
update atleta set fkPais = 4 where idAtleta in (4,5);
update atleta set fkPais = 5 where idAtleta =6;

select*from atleta join pais on fkPais = idPais;

select atleta.nome as 'Nome do Atleta',
pais.nome as 'Nome do País' from atleta join pais on fkPais = idPais;

select*from atleta join pais on fkPais = idPais 
where capital = "Washigton";

drop table atleta,pais;

-- EXERCÍCIO 02
 
create table musica ( idMusica int primary key auto_increment,
Titulo varchar(40),
 Artista varchar (40),
 Genero varchar (40));
 
 insert into musica (titulo,artista,genero) values
 ('Céu Azul','Charlie Brown Junior','Rock'),
 ('Love of My Life','Queen','Rock'),
 ('21 Questions','50cent', 'Hip-Hop'),
 ('Dias de Luta,Dias de Glória','Charlie Brown','Rock');
 
 create table album(idAlbum int primary key auto_increment,
 Nome varchar (40),
 Tipo  varchar (20),
 dtLancamento date);
 
alter table album add constraint chkTipo check (Tipo in('Digital','Fisico'));

insert into album(nome,tipo,dtLancamento) values 
('Camisa 10 Joga bola até na chuva','Digital','2009-09-06'),
(' A nigth at the opera','Fisico','1975-12-24'),
('Get rich	or die tryin','Digital','2003-08-17');

select*from musica;
select*from album;
 
alter table musica add column fkAlbum int,
 add constraint fkAlbum foreign key (fkAlbum)
references Musica(idMusica);

update musica set fkAlbum = 1 where idMusica in (1,4);
update musica set fkAlbum = 2 where idMusica = 2;
update musica set fkAlbum = 3 where idMusica = 3;

select*from musica join album on fkAlbum = idAlbum;

select musica.titulo as 'Nome da Música',
album.nome as 'Nome do Álbum' from musica join album on fkAlbum = idAlbum;

select*from musica  join album on fkAlbum = idAlbum
where tipo = 'Fisico';

 drop table musica,album;
 drop database sprint2;
    
 





