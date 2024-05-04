create database departamento;
use departamento;

CREATE TABLE departamento (
  iddepartamento INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(255)  NULL  ,
  localizacao VARCHAR(255)  NULL    ,
PRIMARY KEY(iddepartamento));

CREATE TABLE funcionario (
  idfuncionario INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  departamento_iddepartamento INTEGER UNSIGNED  NOT NULL  ,
  primeiro_nome VARCHAR(50)  NULL  ,
  segundo_nome VARCHAR(50)  NULL  ,
  ultimo_nome VARCHAR(50)  NULL  ,
  data_nasci DATE  NULL  ,
  cpf VARCHAR(11)  NULL  ,
  rg VARCHAR(10)  NULL  ,
  endereco VARCHAR(255)  NULL  ,
  cep VARCHAR(10)  NULL  ,
  cidade VARCHAR(45)  NULL  ,
  telefone VARCHAR(13)  NULL  ,
  funcao VARCHAR(20)  NULL  ,
  salario FLOAT  NULL    ,
PRIMARY KEY(idfuncionario)  ,
INDEX funcionario_FKIndex1(departamento_iddepartamento));

select * from departamento;
insert into departamento(nome ,localizacao  ) values("Burros de Piracicaba", "Piracicaba");
insert into departamento(nome, localizacao) values("Gatos de Campinas", "Campinas");
insert into departamento(nome, localizacao) values("Cachorros de Limeira", "Limeira");
insert into departamento(nome, localizacao) values("Pássaros de Americana", "Americana");
insert into departamento(nome, localizacao) values("Peixes de São Paulo", "São Paulo");
insert into departamento(nome, localizacao) values("Coelhos de Indaiatuba", "Indaiatuba");

select * from funcionario;
insert into funcionario(departamento_iddepartamento ,primeiro_nome  ,segundo_nome  ,ultimo_nome   ,data_nasci ,cpf   ,rg   ,endereco  ,cep   ,cidade   ,telefone   ,funcao   ,salario )
values("1","João","Pelicres","Maria José","2000-06-12","10228746905","0606202020","Piracicaba, rua das piras, 145","40420180","Piracicaba","7198339696","Limpador de vidros",1200.50);

insert into funcionario(departamento_iddepartamento ,primeiro_nome  ,segundo_nome  ,ultimo_nome   ,data_nasci ,cpf   ,rg   ,endereco  ,cep   ,cidade   ,telefone   ,funcao   ,salario )
values(2,"José","Silva","Almeida","1998-09-25","10538572901","0708202010","Campinas, rua dos pinheiros, 230","40430190","Campinas","7198445623","Auxiliar de Limpeza",1100.75);

insert into funcionario(departamento_iddepartamento ,primeiro_nome  ,segundo_nome  ,ultimo_nome   ,data_nasci ,cpf   ,rg   ,endereco  ,cep   ,cidade   ,telefone   ,funcao   ,salario )
values(3,"Carlos","Santos","Nascimento","1987-12-30","10973658203","0415200802","Limeira, rua das palmeiras, 310","40450010","Limeira","7198123456","Zelador",1300.00);

insert into funcionario(departamento_iddepartamento ,primeiro_nome  ,segundo_nome  ,ultimo_nome   ,data_nasci ,cpf   ,rg   ,endereco  ,cep   ,cidade   ,telefone   ,funcao   ,salario )
values(4,"Ana","Pereira","Rodrigues","1983-07-08","10254896304","0322200506","Americana, rua dos eucaliptos, 40","40460020","Americana","7198333333","Auxiliar Administrativo",1500.50);

insert into funcionario(departamento_iddepartamento ,primeiro_nome  ,segundo_nome  ,ultimo_nome   ,data_nasci ,cpf   ,rg   ,endereco  ,cep   ,cidade   ,telefone   ,funcao   ,salario )
values(5,"Marcos","Oliveira","Santos","1990-05-20","10789542105","0815201104","São Paulo, rua das aves, 97","40470030","São Paulo","7198888888","Técnico de TV",1800.75);

insert into funcionario(departamento_iddepartamento ,primeiro_nome  ,segundo_nome  ,ultimo_nome   ,data_nasci ,cpf   ,rg   ,endereco  ,cep   ,cidade   ,telefone   ,funcao   ,salario )
values(6,"Paula","Lima","Martins","1996-11-15","10365478906","0912201608","Indaiatuba, rua das pedras, 56","40480040","Indaiatuba","7198999999","Atendente",1250.25);

/*Listar nome e sobrenome do funcionário*/
select primeiro_nome,segundo_nome,ultimo_nome from funcionario;

/*Liste os funcionários que têm salário superior a
R$ 1.300,00*/
select * from funcionario where salario > 1300;

/*Liste a data de nascimento e o primeiro nome dos
funcionários*/
select data_nasci, primeiro_nome from funcionario;

/*Liste o total da folha de pagamento*/
select sum(salario) as folha_de_pagamento from funcionario;

/*Liste a quantidade de funcionários desta empresa*/
select count(*) from funcionario;

/*Liste o salário médio pago pela empresa*/
select avg(salario) from funcionario;