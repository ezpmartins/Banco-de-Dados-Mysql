create database Modelagem;
use Modelagem;
create table Grupo (
idGrupo int primary key auto_increment,
nomeEmpresa varchar(45),
qtdIntegrantes int);

create table Tema (
idTema int primary key auto_increment,
nomeTema varchar(45),
tipoSensor varchar(45));

create table Aluno (
idAluno int primary key auto_increment,
Nome varchar(45),
ra varchar(8));

create table Turma (
idTurma int primary key auto_increment,
professorPI varchar(45));

alter table grupo add column fk_idTema int,
add constraint fk_idTema foreign key (fk_idTema)
references Tema(idTema);

alter table Aluno add column fk_idGrupo int,
add constraint fk_idGrupo foreign key (fk_idGrupo)
references Grupo(idGrupo);

alter table Turma add column turma varchar(45);
alter table Aluno add column fk_idTurma int,
add constraint fk_idTurma foreign key (fk_idTurma)
references Turma(idTurma);

insert into Grupo(nomeEmpresa, qtdIntegrantes) values
("Flux", 6),
("AquaGuard", 5),
("ASL", 7),
("GrapeTec", 5),
("LomoSens", 6);

insert into Aluno(Nome, ra) values
("Felipe", "01232123"),
("Enzo", "01232131"),
("Igor", "01232149"),
("Gabriel", "01232187"),
("Natan", "01232031"),
("Lucas", "01232179");

insert into Tema(nomeTema, tipoSensor) values
("Conservação da Mercadoria", "Temperatura"),
("Conservação da Mercadoria", "Umidade"),
("Monitoramento de Fluxo", "Bloqueio"),
("Monitoramento de Iluminação", "Luminosidade"),
("Contagem mercadoria", "Bloqueio");

alter table Turma add constraint chProfessor check(professorPI in ("Fernando Brandão", "Fernanda Karamico", "Frezza"));
alter table Turma add constraint chTurma check(turma in ("1ADSA", "1ADSB", "1ADSC"));
insert into Turma(turma, professorPI) values
("1ADSA", "Fernando Brandão"),
("1ADSB", "Fernanda Karamico"),
("1ADSC", "Frezza");

update Grupo set fk_idTema = 1 where idGrupo = 3;
update Grupo set fk_idTema = 2 where idGrupo = 2;
update Grupo set fk_idTema = 3 where idGrupo = 1;
update Grupo set fk_idTema = 4 where idGrupo = 5;
update Grupo set fk_idTema = 5 where idGrupo = 4;
select * from Grupo join Tema on fk_idTema = idTema;
 update Aluno set fk_idGrupo = 1 where idAluno = 1;
 update Aluno set fk_idTurma = 1 where idAluno in (1,3);
 update Aluno set fk_idGrupo = 1 where idAluno in (2,4);
 select * from Turma join Aluno on fk_idTurma = idTurma join Grupo on fk_idGrupo = idGrupo join Tema on fk_idTema = idTema;
 




