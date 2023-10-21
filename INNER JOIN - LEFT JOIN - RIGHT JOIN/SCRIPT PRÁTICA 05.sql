-- PRATICA 05

-- EX 01
create database pet;
use pet;
create table cliente (idCliente int primary key auto_increment,
nome varchar (45),
telefoneFixo varchar (20),
telefoneCelular varchar (20),
endereco varchar (45));

create table pets ( idPet int primary key auto_increment,
nome varchar (45),
tipoAnimal varchar (45),
raca varchar (45),
dtNasc date,
fkCliente int, constraint foreign key(fkCliente) references cliente (idCliente))
auto_increment = 101;

insert into cliente (nome,telefoneFixo,telefoneCelular,endereco) values
('Enzo Martins','11 3991-6189','11 94835-0236','Rua Antônio Correia 112'),
('Rogério Martins','11 3456-9876','11 99332-9080', 'Rua Maria Curuipaiti'),
('Daniel Ricardo','11 4576-3221', '21 98743-6666', 'Rua Haddock Lobo 595'),
('Camila Alves', '13 6767-7090', '13 97667-1234','Av Magalhães da Rosa'),
('Milena Santos', '11 3434-7865', '11 98765-4321','Av Pompeia');

insert into pets (nome, tipoAnimal, raca, dtNasc , fkCliente )values
('Kiya','Cachorro','Border-Collie','2022-12-23', 1),
('Naafiri','Cachorro','Border-Collie','2023-10-03', 1),
('Godzilla', 'Gato', 'Vira-Lata','2006-12-18',3),
('Laura', 'Gato','Vira-Lata','2008-11-17',3),
('Banana','Cachorro','Shitzu','2014-8-26',2),
('Thopson','Calopsita','Lutino-Cara-Branca','2000-10-10',4),
('Thor','Cachroro','Pastor-Alemão','2021-09-13',5);


-- Exibir todos os dados de cada tabela criada, separadamente
select*from cliente;
select*from pets;

-- Altere o tamanho da coluna nome do cliente
alter table cliente modify column nome varchar (50);
desc cliente;

-- Exibir os dados de todos os pets que são de um determinado tipo por exemplo: cachorro
select *from pets where tipoAnimal = 'Cachorro';

-- - Exibir apenas os nomes e as datas de nascimento dos pets.
select nome,dtNasc from pets;

-- Exibir os dados dos pets ordenados em ordem crescente pelo nome.
 select*from pets order by nome;
 
 -- Exibir os dados dos clientes ordenados em ordem decrescente pelo bairro
 select*from cliente order by  endereco desc;
 
 -- Exibir os dados dos pets cujo nome comece com uma determinada letra.
 select*from pets where nome like 't%';
 
 -- Exibir os dados dos clientes que têm o mesmo sobrenome.
 select*from cliente  where nome like '%ma%';
 
 -- Alterar o telefone de um determinado cliente.
 update cliente set telefoneFixo = '11 1234-5678' where idCliente = 2;
 
 -- Exibir os dados dos clientes para verificar se alterou.
 select*from cliente;
  
  -- Exibir os dados dos pets e dos seus respectivos donos.
  select*from cliente join pets on  fkCliente = idCliente;
  
  -- - Exibir os dados dos pets e dos seus respectivos donos, mas somente de um determinado cliente.
  select*from cliente join pets on  fkCliente = idCliente where  idCliente = 1;
  
  -- Excluir algum pet.
  delete from pets where idPet = 102;
  
  -- - Exibir os dados dos pets para verificar se excluiu
  select*from pets;
  
  -- Excluir as tabelas 
  drop table cliente,pets;
  
-- EX 02 

create table pessoa (idPessoa int primary key auto_increment,
nome varchar (45),
dtNasc date,
profissão varchar (45));

create table gasto (idGasto int primary key auto_increment,
dt date,
valor int,
descrição varchar (45), 
fkPessoa int, constraint foreign key(fkPessoa) references pessoa  (idPessoa));

-- Insira dados nas tabelas 

insert into pessoa (nome,dtNasc, profissão) values 
('Ana Silva','1985-10-12','Médico'),
('Carlos Santos','1990-08-30','Engenheiro'),
('Maria Alves',	'1978-11-05','Advogado'),
('Pedro Lima','1995-09-08',	'Professor'),
('João Costa','1982-07-14',	'Designer Gráfico');

insert into gasto (dt,valor,descrição,fkPessoa) values 
('2023-10-03', 500.00, 'Compra de mantimentos', 1),
('2023-10-02', 120.50, 'Pagamento de conta de luz', 2),
('2023-10-01', 75.25, 'Compra de livros', 3),
('2023-09-30', 300.00, 'Pagamento de aluguel', 4),
('2023-09-29', 45.99, 'Compra de roupas', 5);

-- Exiba os dados de cada tabela individualmente
select*from pessoa;
select*from gasto;

-- Exiba somente os dados de cada tabela, mas filtrando por algum dado da tabela (por exemplo, as pessoas de alguma profissão, etc).

select*from pessoa where profissão = 'Professor';
select*from gasto where valor  like 46;
 
 -- Exiba os dados das pessoas e dos seus gastos correspondentes
 select*from pessoa join gasto on fkPessoa = idPessoa;
 
 -- • Exiba os dados de uma determinada pessoa e dos seus gastos correspondentes.
 select*from pessoa join gasto on fkPessoa= idPessoa where idPessoa = 3;
 
 -- Atualize valores já inseridos na tabela
 update gasto set valor = '100' where idGasto = 3;
 update gasto set descrição = 'Compra de Mochila' where idGasto = 3;
 select*from gasto;
 
 -- Exclua um ou mais registros de alguma tabela.
 delete   from gasto  where idGasto = 3;
 delete   from pessoa  where idPessoa = 3;
 
 
 -- EX 03 
 
 create database PraticaFuncionario;
 use PraticaFuncionario;
 
 create table setor ( idSetor int primary key auto_increment,
 nomeSetor varchar (45),
 andarPredio varchar (45));
 
 create table funcionario ( idFuncionario int primary key auto_increment,
 nome varchar (45),
 telefone varchar (45),
 salario int, 
 fkSetor int,
 constraint foreign key (fkSetor) references  setor (idSetor));
 alter table funcionario add constraint chkSalario check  (salario>0);
 
 create table acompanhante (id int primary key auto_increment,
 nomeAcompanhante varchar (45),
 dtNasc date, 
 relacaoFuncionario varchar (45),
 fkFuncionario int, 
 constraint foreign key (fkFuncionario) references funcionario (idFuncionario));
 
 insert into setor (nomeSetor,andarPredio) values
('Recursos Humanos', '3º Andar'),
('Vendas', '1º Andar'),
('TI', '4º Andar'),
('Marketing', '2º Andar'),
('Contabilidade', '5º Andar');

insert into funcionario (nome,telefone,salario, fksetor) values 
 ('João Silva', '(11) 555-1234', 4500.00, 1),
('Maria Santos', '(21) 333-5678', 5200.00, 2),
('Pedro Alves', '(31) 777-9876', 4800.00, 1),
('Ana Oliveira', '(41) 888-2345', 5100.00, 3),
('Carlos Ribeiro', '(51) 999-3456', 4900.00, 2),
('Rafaela Lima', '(11) 444-5678', 4300.00, 1),
('Fernando Costa', '(21) 555-7890', 4800.00, 4),
('Luisa Pereira', '(31) 666-2345', 4100.00, 3),
('Antônio Santos', '(41) 777-8765', 5200.00, 5),
('Carolina Oliveira', '(51) 888-1234', 4500.00, 5);
 
 
 
 insert into acompanhante  (nomeAcompanhante,dtNasc,relacaoFuncionario,fkFuncionario) values
('Maria Silva', '1990-05-15', 'Cônjuge', 1),
('Luiz Santos', '1995-09-20', 'Filho', 2),
('Isabel Pereira', '1988-03-10', 'Cônjuge', 3),
('Miguel Alves', '2000-11-22', 'Filho', 4),
('Ana Costa', '1992-07-18', 'Cônjuge', 5);

-- Exibir todos os dados de cada tabela criada, separadamente
select*from setor;
select*from funcionario;
select*from acompanhante;

-- Exibir os dados dos setores e dos seus respectivos funcionários
select*from setor join funcionario on fkSetor = idSetor;

-- Exibir os dados de um determinado setor (informar o nome do setor na consulta) e dos seus respectivos funcionários.
select*from setor join funcionario on fkSetor = idSetor  where nomeSetor = 'TI';

-- Exibir os dados dos funcionários e de seus acompanhantes.
select*from funcionario join acompanhante on fkFuncionario = idFuncionario;

-- Exibir os dados de apenas um funcionário (informar o nome do funcionário) e os dados de seus acompanhantes
select*from funcionario join acompanhante on fkFuncionario = idFuncionario where nome = 'Pedro Alves';

-- Exibir os dados dos funcionários, dos setores em que trabalham e dos seus acompanhantes.

select*from setor join funcionario on fkSetor = idSetor join acompanhante on fkFuncionario = idFuncionario; 


-- EX 04 
create database treinador;
use treinador;

create table treinador (idTreinador int primary key auto_increment,
nome varchar (45),
telefone varchar (20),
email varchar (45), 
fkTreinador int,
constraint foreign key (fkTreinador) references treinador (idTreinador))
auto_increment =10;

create table nadador (idNadador int primary key auto_increment,
nome varchar (45),
estadoSigla char(2),
dtNasc date,
fkTreinador int, 
constraint foreign key (fkTreinador) references treinador (idTreinador))
auto_increment = 100;

insert into treinador (nome, telefone, email) values 
('Carlos Silva', '(11) 555-1234', 'carlos@email.com'),
('Antonio Santos', '(21) 333-5678', 'antonio@email.com'),
('Paulo Alves', '(31) 777-9876', 'paulo@email.com'),
('Mariano Oliveira', '(41) 888-2345', 'mariano@email.com'),
('Luiz Costa', '(51) 999-3456', 'luiz@email.com');

insert into treinador (nome,telefone,email,fkTreinador) values
('Maria Oliveira', '(11) 555-4321', 'maria@email.com', NULL),
('João Almeida', '(21) 333-8765', 'joao@email.com', 10),
('Lúcia Pereira', '(31) 777-2345', 'lucia@email.com', 12),
('Antônio Costa', '(41) 888-5678', 'antonio@email.com', NULL),
('Rita Santos', '(51) 999-7890', 'rita@email.com', 11);

insert into nadador (nome,estadoSigla,dtNasc,fkTreinador) values
('Pedro Rodrigues', 'SP', '1995-05-10', 10),
('Mariana Santos', 'RJ', '1998-08-15', 11),
('João Pereira', 'MG', '1993-03-20', 12),
('Carla Alves', 'PR', '1997-11-25', 13),
('Luis Costa', 'RS', '1990-07-05', 14);

-- Exibir todos os dados de cada tabela criada, separadamente.
select*from treinador;
select*from nadador;

-- Exibir os dados dos treinadores e os dados de seus respectivos nadadores

select*from treinador as t  left join  nadador as  n on n.fkTreinador = t.idTreinador;

-- Exibir os dados de um determinado treinador (informar o nome do treinador na consulta) e os dados de seus respectivos nadadores.
select*from treinador as t left join nadador as n on n.fkTreinador = t.idTreinador where t.nome =  'Paulo Alves';

--  Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores
select*from treinador as t join treinador as tj on t.idTreinador = tj.fkTreinador;

-- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores, 
-- porém somente de um determinado treinador orientador (informar o nome do treinador na consulta)
select*from treinador as t join treinador as tj on t.idTreinador = tj.fkTreinador where t.nome = 'Antonio Santos';

-- Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados dos respectivos treinadores orientadores.
select*from treinador as t  left join  nadador as  n on n.fkTreinador = t.idTreinador left join treinador as tj  on tj.fkTreinador =t.idTreinador;

--  Exibir os dados de um treinador (informar o seu nome na consulta), os dados dos respectivos nadadores e os dados do seu treinador orientador. 
select*from treinador as t  left join  nadador as  n on n.fkTreinador = t.idTreinador left join treinador as tj  on tj.fkTreinador =t.idTreinador where 
t.nome ='Antonio Santos';











 

 
 
 
 
 
 
 
 
 
 
 
 










