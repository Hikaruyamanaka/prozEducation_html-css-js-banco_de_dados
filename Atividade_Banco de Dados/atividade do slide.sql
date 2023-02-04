create database curso_computacao;
use curso_computacao;

create table gestores(
	id int unsigned not null auto_increment,
    nome varchar(35) not null,
	salario double not null default '0',
    trilha varchar(30) not null,
    primary key (id)
);

rename table gestores to professores;
alter table professores change column nome nome_prof varchar(45) not null;

alter table nome_da_tabela drop column nome_da_coluna;
drop table nome_da_tabela;
/* drop database curso_computacao; */

INSERT into professores (id, nome_prof, salario, trilha) values (1, 'Kelvin', 4000,
 'Banco de dados distribuídos');
INSERT into professores (id, nome_prof, salario, trilha) values (2, 'Johnny', 3400,
 'Java');
 
INSERT into professores (nome_prof, salario, trilha) values ('Flavio', 3500,
 'Banco de Dados 1');
INSERT into professores (nome_prof, salario, trilha) values ('Fabio', 4700,
 'Governança em T.I.');
INSERT into professores (nome_prof, salario, trilha) values ('Josiel', 4800,
 'Banco de Dados 2');

select * from professores;
select * from professores where salario > 4000;
select * from professores where nome_prof = "Josiel";
SELECT * FROM professores WHERE id = 3;

DELETE FROM professores WHERE id = 4;

UPDATE professores SET salario = salario * 1.1 WHERE id = 1;

create table automoveis(
	id int unsigned not null auto_increment,
    professor_id int unsigned default null,
    veiculo varchar(45) not null default '',
    placa varchar(10) not null default '',
    primary key (id),
    constraint fk_automoveis_professores foreign key (professor_id) references professores (id)
);

INSERT INTO automoveis (professor_id, veiculo, placa) VALUES (1, 'Carro', 'KLP-1234');
INSERT INTO automoveis (professor_id, veiculo, placa) VALUES (1, 'Carro', 'KLB-4567');

SELECT * FROM automoveis ;

UPDATE automoveis SET professor_id = 5 WHERE id = 2;

SELECT * FROM professores WHERE nome_prof = 'Kelvin'
UNION
SELECT * FROM automoveis WHERE id = 1;