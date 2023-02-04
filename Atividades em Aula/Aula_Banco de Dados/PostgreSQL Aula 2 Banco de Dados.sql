create TABLE artista (
	id Serial PRIMARY KEY,
	nome VARCHAR(20) UNIQUE
  /* genero (20) not NULL   */
);

INSERT INTO artista VALUES
('Rouge', 'Pop'),
('CPM 22', 'Rock'),


CREATE TABLE musica (
	id serial PRIMARY KEY,
  	nome_musica VARCHAR(30) NOT NULL
  /*	nome_artista VARCHAR(30) not NULL,
  	nome_album VARCHAR(30) not null,
  	gravadora VARCHAR(30) not NULL, */
);

INSERT INTO artista VALUES
('Ragatanga', 'Rouge', 'O Sonho de Ser Uma Popstar', 'Columbia · Sony'),
('Dias Atrás', 'CPM 22', 'Chegou a Hora de Recomeçar', 'Arsenal Music'),


create table gravacao (
	id serial PRIMARY KEY,
  	duracao int not NULL
);

INSERT INTO gravacao VALUES
('Ragatanga', 'Rouge', 'O Sonho de Ser Uma Popstar', 'Columbia · Sony'),
('Dias Atrás', 'CPM 22', 'Chegou a Hora de Recomeçar', 'Arsenal Music'),



drop TABLE gravacao;

alter table musica add COLUMN duracao_seg int not null;

insert into artista (nome) VALUES
('Djavan'),
('Os Mutantes'),
('Pitty');



insert into artista (nome) VALUES
('Nx Zero'),
('Rebeldes'),
('Felipe Dylon');

select * from artista;

INSERT into musica (nome_musica, duracao_seg) values
('Samurai', 180),
('Balada do Louco', 340),
('Me Adora', 150),
('Tras de Mim', 230),
('Musica do Verão', 200);

alter table musica add column fk_id_artista INT,
add CONSTRAINT fk_artista FOREIGN KEY (fk_id_artista)
REFERENCES artista (id);

select * from musica;

update musica set fk_id_artista = 1 where nome_musica = 'Samurai';

SELECT * from musica;

UPDATE artista set id = 4 where nome = 'Djavan'; 

select * from artista;

/* DELETE FROM musica WHERE nome_musica = 'Samurai';
delete from artista where nome = 'Djavan'; */

-- Passo 1
alter TABLE musica DROP CONSTRAINT fk_artista;

-- Passo 2
Alter table musica add CONSTRAINT fk_artista FOREIGN KEY (fk_id_artista) 
REFERENCES artista(id) on delete CASCADE;

-- Passo 3
delete from artista where nome = 'Djavan';

SELECT * from artista;
select * from musica;


update musica set fk_id_artista = 2 where nome_musica = 'Balada do Louco';

-- Passo 1
alter TABLE musica DROP CONSTRAINT fk_artista;

-- Passo 2
Alter table musica add CONSTRAINT fk_artista FOREIGN KEY (fk_id_artista) 
REFERENCES artista(id) on delete CASCADE;

-- Passo 3
delete from artista where nome = 'Os Mutantes';

SELECT * from artista;
select * from musica;














