create database biblioteca;
use biblioteca;

CREATE TABLE livro (
  idlivro INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  titulo VARCHAR(100)  NULL  ,
  autor VARCHAR(50)  NULL  ,
  genero VARCHAR(70)  NULL  ,
  isbn VARCHAR(50)  NULL    ,
PRIMARY KEY(idlivro));

CREATE TABLE usuario (
  idusuario INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(50)  NULL  ,
  endereco VARCHAR(100)  NULL  ,
  telefone VARCHAR(11)  NULL    ,
PRIMARY KEY(idusuario));

CREATE TABLE reserva (
  idreserva INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  livro_idlivro INTEGER UNSIGNED  NOT NULL  ,
  usuario_idusuario INTEGER UNSIGNED  NOT NULL  ,
  data_reserva DATE  NULL  ,
  data_prevista_retirada DATE  NULL    ,
PRIMARY KEY(idreserva)  ,
INDEX reserva_FKIndex1(usuario_idusuario)  ,
INDEX reserva_FKIndex2(livro_idlivro));

CREATE TABLE emprestimo (
  idemprestimo INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  livro_idlivro INTEGER UNSIGNED  NOT NULL  ,
  usuario_idusuario INTEGER UNSIGNED  NOT NULL  ,
  data_imprestimo DATE  NULL  ,
  data_devolucao DATE  NULL  ,
  renovado BOOL  NULL    ,
PRIMARY KEY(idemprestimo)  ,
INDEX emprestimo_FKIndex1(usuario_idusuario)  ,
INDEX emprestimo_FKIndex2(livro_idlivro));


alter table emprestimo add data_renovacao date;
alter table usuario modify column telefone varchar(15);
alter table livro add edicao varchar(50);
alter table reserva drop column data_reserva;
alter table livro change column genero categoria varchar(70);


insert into usuario(nome, endereco, telefone) values("Victor Souza", "Itapetinaga,Rua dos lobos,134", "5571988352182");
insert into usuario(nome, endereco, telefone) values("Iasmin Caldeira", "Avenida Dendezeiros, rua da barbie, 123", "571987220267");
insert into usuario(nome, endereco, telefone) values("Kloviz ronald", "Santa cruz da paz, roberto margalhães, 69", "5571988028922");


insert into livro(titulo, autor, categoria, isbn) values("Batmas e barbie", "Binho da silva", "ação", "978-65-89999-01-3");
insert into livro(titulo, autor, categoria, isbn) values("Arlindo e Arlinda", "Arlindo", "romance", "977-65-88990-06-9");
insert into livro(titulo, autor, categoria, isbn) values("Calma calabreso a volta dos que se foram", "Davi Brito", "Documentario", "938-65-76970-04-0");
update livro set edicao = "primeira edição" where idlivro = 1;
update livro set edicao = "segunda edição" where idlivro = 2;
update livro set edicao = "terceira edição" where idlivro = 3;

insert into reserva(livro_idlivro, usuario_idusuario, data_prevista_retirada ) values(1,3,"2024-04-25");
insert into reserva(livro_idlivro, usuario_idusuario, data_prevista_retirada ) values(2,2,"2024-04-27");
insert into reserva(livro_idlivro, usuario_idusuario, data_prevista_retirada ) values(3,1,"2024-04-30");


insert into  emprestimo( livro_idlivro, usuario_idusuario , data_imprestimo,data_devolucao,renovado, data_renovacao) values(2,1,"2024-04-21","2024-04-24",true,"2024-04-23");
insert into  emprestimo( livro_idlivro, usuario_idusuario , data_imprestimo,data_devolucao,renovado, data_renovacao) values(3,2,"2024-04-21","2024-04-24",false, "");
insert into  emprestimo( livro_idlivro, usuario_idusuario , data_imprestimo,data_devolucao,renovado, data_renovacao) values(1,3,"2024-04-19","2024-04-27",true, "2024-04-29");
select * from emprestimo;

alter table emprestimo change column  data_imprestimo  data_emprestimo date;

select * from usuario;
select * from livro;
select * from reserva;
select * from emprestimo;
