Create database aula;
use aula;

CREATE TABLE ALUNOS (
  idALUNOS INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(255)  NULL  ,
  IDADE INTEGER UNSIGNED  NULL  ,
  EMAIL VARCHAR(255)  NULL    ,
PRIMARY KEY(idALUNOS));


/*Adicionando coluna*/
alter table ALUNOS add TELEFONE varchar(11);

/*Alterando tipo de dados de uma coluna*/
alter table ALUNOS modify column IDADE int;

/*Alterando nome da coluna*/
alter table ALUNOS change column EMAIL ENDERECO_ELETRONICO varchar(80);

/*Removendo coluna*/
alter table ALUNOS drop column IDADE;
select * from ALUNOS;