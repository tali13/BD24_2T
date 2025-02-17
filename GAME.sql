create table jogador(
id_player serial primary key,
nome_player varchar(80),
nivel numeric not null,
pontuacao numeric not null,
regiao varchar(80),
fk_time_id_time int not null references time(id_time)
)
create table time(
id_time serial primary key,
nome_time varchar(80),
fk_partida_id_partida int not null references partida(id_partida)
)
create table partida(
id_partida serial primary key not null,
resultado numeric,
duracao numeric,
date_time numeric,
fk_campiao_id_campiao int not null references campiao(id_campiao),
fk_item  int not null references item (id_item)
)
create table campiao(
id_campiao serial primary key not null,
nome_campiao varchar(80),
habilidade varchar(80),
tipo_dano numeric not null,
funcao varchar(80)
)

create table jogador_partida_jogo(
fk_campiao int not null references campiao(id_campiao),
fk_jogador int not null references jogador(id_player)
)
create table item(
id_item serial primary key ,
custo numeric ,
descricao varchar(80),
efeito varchar(80),
nome_item varchar(80),
fk_ofensiva int not null references ofensiva(id_ofensiva),
fk_defensiva int not null references defensiva(id_defensiva),
fk_consumable int not null references consumable(id_consumable)
)
create table ofensiva(
id_ofensiva serial primary key,
magia_dano numeric,
dano_fisico numeric
)
create table defensiva(
id_defensiva serial primary key,
armadura numeric,
res_magic numeric
)

create table consumable(
id_consumable serial primary key not null,
pocao varchar(80)
)

insert into jogador(id_player,nome_player,nivel,pontuacao,regiao,fk_time_id_time)
values(1,'jake',180,200,'duskwood',1),
(2,'phil',100,190,'bar aurora',5),
(3,'dan',150,195,'cisnei',3),
(4,'hanna',120,170,'floresta',4),
(5,'richy',160,190,'floresta',2)

insert into time(id_time,nome_time,fk_partida_id_partida)
values(1,'hacker',1),
(2,'corvo',2),
(3,'lendas',3),
(4,'floresta',4),
(5,'bar',5)

insert into partida (id_partida,resultado,duracao,date_time,fk_campiao_id_campiao,fk_item)
values(1,150,30,1307,1,2),
(2,50,35,1706,1,3),
(3,50,40,1904,5,4),
(4,60,20,2510,4,3),
(5,20,30,1604,2,4)

insert into campiao(id_campiao,nome_campiao,habilidade,tipo_dano,funcao)
values(1,'jake','hackear',5,'manipular'),
(2,'phil','conversa',4,'manipular'),
(3,'dan','brigar',5,'armas'),
(4,'richy','lenda',5,'matar'),
(5,'hanna','???',1,'???')

insert into item(id_item,custo,descricao,efeito,nome_item,fk_ofensiva,fk_defensiva,fk_consumable)
values(1,5.00,'item desconhecido','magia','anel',1,2,4),
(2,5.00,'item desconhecido','magia','espada',1,3,4),
(3,5.00,'item desconhecido','magia','livro',3,2,5),
(4,5.00,'item desconhecido','magia','varinha',5,3,4),
(5,5.00,'item desconhecido','magia','corvo',4,2,4)


insert into ofensiva(id_ofensiva,magia_dano,dano_fisico)
values(1,5,9),
(2,4,6),
(3,5,4),
(4,6,7),
(5,7,9)

insert into defensiva(id_defensiva,armadura,res_magic)
values(1,3,4),
(2,5,4),
(3,4,3),
(4,3,5),
(5,4,3)

insert into consumable(id_consumable,pocao)
values(1,'cura'),
(2,'velocidade'),
(3,'exploção'),
(4,'menos queda'),
(5,'vooar')

insert into jogador_partida_jogo(fk_campiao,fk_jogador)
values(1,5),
(2,3),
(3,4),
(4,2),
(5,1)

SELECT resultado,nome_campiao
FROM partida
LEFT JOIN campiao
ON partida.id_partida = campiao.id_campiao

SELECT resultado,habilidade
FROM partida
Full JOIN campiao
ON partida.id_partida = campiao.id_campiao

SELECT nome_player,nome_time
FROM jogador
JOIN time
ON jogador.id_player = time.id_time


SELECT nome_player,fk_partida_id_partida
FROM jogador
full JOIN time
ON jogador.id_player = time.id_time


SELECT nivel,nome_time
FROM jogador
left JOIN time
ON jogador.id_player = time.id_time

	CREATE VIEW jodadas_partidas1 AS
SELECT 
    resultado AS date_time,
    nome_campiao
FROM 
    partida p
JOIN 
    campiao c ON p.fk_campiao_id_campiao = c.id_campiao;


   CREATE VIEW jodadas_partidas3 AS
SELECT 
    fk_campiao as fk_jogador,
    nome_player,
    nome_campiao
FROM 
    jogador_partida_jogo
JOIN 
    campiao  ON fk_campiao = id_campiao
JOIN 
    jogador  ON fk_jogador = id_player;


CREATE VIEW os_item AS
SELECT 
    i.nome_item as descricao
FROM 
    item i
JOIN 
    partida p ON p.id_partida = i.id_item;
