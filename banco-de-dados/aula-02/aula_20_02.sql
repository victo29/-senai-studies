

create table alunos(
id_aluno int primary key auto_increment,
nome_aluno varchar(30),
sobrenome varchar(50),
data_nascimento datetime,
genero char,
serie varchar(30)
);

create table professores(
id_professor int primary key auto_increment,
nome_professor varchar(30),
sobrenome_professor varchar(50),
data_nascimento datetime,
especialidade varchar(50),
departamento varchar(50)
);

create table disciplinas(
id_disciplina int primary key auto_increment,
nome_disciplina varchar(100),
carga_horaria int,
descricao varchar(100)
);

create table notas(
id_notas int primary key auto_increment,
aluno_id int,
disciplina_id int,
nota float
);

insert into alunos(nome_aluno,sobrenome,data_nascimento,genero,serie) values("Victor","Souza","2007/01/29","M","5°");
insert into alunos(nome_aluno,sobrenome,data_nascimento,genero,serie) values("Iasmin","Caldeira","2006/12/29","F","5°");
insert into alunos(nome_aluno,sobrenome,data_nascimento,genero,serie) values("Lucca","Dimitrescu","2007/10/20","M","5°");
select * from alunos;

insert into professores(nome_professor,sobrenome_professor ,data_nascimento ,especialidade ,departamento) values ("Orlando", "Filho","1983/12/30","Programação","IFBA irecê");
insert into professores(nome_professor,sobrenome_professor ,data_nascimento ,especialidade ,departamento) values ("Lindalva", "Rosa","1950/10/25","Português","São Luís");
select * from professores;

insert into disciplinas(nome_disciplina ,carga_horaria ,descricao  ) values("Programação",120,"Aula de programação");
insert into disciplinas(nome_disciplina ,carga_horaria ,descricao  ) values("Português",120,"Aula de português");
select * from disciplinas;

insert into notas(aluno_id,disciplina_id,nota) values(1,1,10.0);
insert into notas(aluno_id,disciplina_id,nota) values(1,3,9.5);
select * from notas;