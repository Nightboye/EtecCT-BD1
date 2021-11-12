create database dbFutebol;

use dbFutebol;

create table tbclube (
id_clube int primary key identity (1,1),
nome_clube varchar(40),
fundacao_clube date
);

create table tbpartida (
id_partida int primary key identity (1,1),
id_visitante varchar(40),
id_mandante varchar(40)
);

create table tbjogadores (
id_jogador int primary key identity (1,1),
nome_jogador varchar(40),
data_jogador date,
posicao varchar(40),
numero_jogador bigint,
id_time varchar(40)
);

create table tbgols (
id_gol int primary key identity (1,1),
minuto time,
id_jogador int,
id_partida int,

foreign key (id_jogador) references tbjogadores(id_jogador),
foreign key (id_partida) references tbpartida(id_partida),
);

 /* selects nas Tabelas*/

 select * from tbclube
 select * from tbjogadores
 select * from tbpartida
 select * from tbgols

/* inserindo dados nas tabelas */
insert into tbclube(nome_clube,fundacao_clube)
values ('Barcelona', '11/12/1899'),
	   ('Juventus', '09/01/1989'),
	   ('Liverpool', '09/11/1892')

insert into tbjogadores(nome_jogador, id_time)
values ('Sergio Aguero', 'juventus'),
	   ('Mohamed Salah', 'liverpool'),
	   ('Paulo Dybala', 'juventus')

insert into tbpartida(id_mandante,id_visitante)
values ('Liverpool', 'Juventus'),
       ('Barcelona', 'Liverpool'),
	   ('Juventus', 'Barcelona')

insert into tbgols(id_jogador, id_partida)
values (2, 1),
	   (2, 1),
	   (3, 3)


/* Novas Opções em 2 Tabelas */

insert into tbclube(nome_clube,fundacao_clube)
values('São Paulo', '01/25/1930')

insert into tbjogadores(nome_jogador, id_time)
values ('Daniel Alves', 'São Paulo')

/* Update das Tabelas */

update tbjogadores set nome_jogador = 'Alvaro Morata' where id_jogador=1
update tbclube set fundacao_clube= '12/08/1994' where id_clube=3
update tbgols set id_jogador= 4, minuto= '15:39' where id_gol=3