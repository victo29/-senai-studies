create table Alunos (
ID_aluno int primary key auto_increment,
Nome_aluno varchar(50),
sobrenome varchar(50),
idade int,
email varchar(50)
);

insert into Alunos(Nome_aluno,sobrenome,idade,email) values ('Jandion', 'Limon', 47, 'jandion@gmail.com');
insert into Alunos(Nome_aluno,sobrenome,idade,email) values ('Limon','Jandion', 54, 'limon@gmail.com');

select Nome_aluno, idade, email from Alunos;