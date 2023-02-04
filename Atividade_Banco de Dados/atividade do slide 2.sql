/* Criando o Banco de Dados */
create database CursoDeProgramacao;

/* Usando o Banco de dados*/
use CursoDeProgramacao;

/* Criando as tabelas */
create table disciplinas(
id_disciplina int auto_increment primary key,
nome_disciplina varchar(50) not null,
nome_professor varchar(50) not null
);

create table alunos(
id_alunos int auto_increment primary key,
nome_alunos varchar(50) not null,
disciplinas_id int,
constraint foreign key (disciplinas_id)
	references disciplinas (id_disciplina)
);

/* Inserindo os dados na tabela disciplinas */
insert into disciplinas(nome_disciplina, nome_professor) values
('Banco de dados', 'Maria Alves'),
('Python', 'Pietro Souza'),
('POO', 'Bia Tavares');

/* Visualizando a tabela disciplinas */
select * from disciplinas;

/* Inserindo os dados na tabela alunos */
insert into alunos(nome_alunos, disciplinas_id) values
('Cleiton', 2),
('Carol', null),
('Ruan', 2),
('Gabi', 1),
('Rian', null),
('Mia', 2),
('Malu', 1);

/* Visualizando os dados da tabela alunos*/
select * from alunos;

/* Utilizando inner join */
select nome_alunos, nome_disciplina 
from alunos inner join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id;

/* Utilizando left join */
select nome_alunos, nome_disciplina 
from alunos left join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id;

/* Utilizando right join */
select nome_alunos, nome_disciplina 
from alunos right join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id;

/* Utilizando */
select nome_alunos, nome_disciplina 
from alunos left join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id
union
select nome_alunos, nome_disciplina 
from alunos right join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id;