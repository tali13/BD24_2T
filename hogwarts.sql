create table casa(
    id_casa serial primary key,
    nome_casa varchar(20) not null
    
)

create table personagem(
    id_personagem serial primary key,
    nome_personagem varchar(80) not null,
    idade_personagem int not null,
    fk_materia int not null references materia (id_materia),
	fk_casa int not null references casa(id_casa)
)

create table materia(
    id_materia serial primary key,
    nome_materia varchar(80)
)

create table professor(
    id_professor serial primary key,
    fk_personagem int not null references personagem(id_personagem)
)

create table feitico(
    id_feitico serial primary key,
    nome_feitico varchar(80)
)
create table feitico_personagem(
fk_feitico int not null references feitico(id_feitico),
fk_professor int not null references professor(id_professor)
)
insert into feitico(id_feitico,nome_feitico)
values
(1,'valueAccio'),
(2,'Alohomora'),
(3,'Avada Kedavra'),
(4,'Crucio'),
(5,'Expecto Patronum'),
(6,'Expelliarmus'),
(7,'Lumos'),
(8,'Nox'),
(9,'Petrificus Totalus'),
(10,'Stupefy'),
(11,'Wingardium Leviosa')

insert into casa(id_casa,nome_casa)
values
(1,'Grifinoria'),
(2,'Sonserina'),
(3,'Corvinal'),
(4,'Lufa_Lufa')

insert into personagem(id_personagem,nome_personagem,idade_personagem,fk_materia,fk_casa)
values
(1,'Harry Potter',15,5,1),
(2,'Hermione Granger',14,7,1),
(3,'Newton Scamander',17,6,2),
(4,'Alvo Potter',16,8,3),
(5,'Ginevra Weasley',13,9,3),
(6,'Draco Malfoy',15,9,3),
(7,'Régulo Black',16,1,4),
(8,'Ronald Weasley',15,4,1),
(9,'Alvo Dumbledore',112,1,3),
(10,'Aleto Carrow',58,2,2),
(11,'Amico Carrow',166,9,4),
(12,'Aurora Sinistra',184,6,2),
(13,'Bathsheda Babbling',165,4,2),
(14,'Bartolomeu Crouch Jr',150,8,1),
(15,'Caridade Burbage',21,9,1),
(16,'Cuthbert Binns',45,3,3),
(17,'Dolores Umbridge',97,5,2),
(18,'Fílio Flitwick',45,8,1),
(19,'Firenze',75,3,3)

select * from personagem

insert into professor(id_professor,fk_personagem)
values
(1,10),
(2,11),
(3,12),
(4,13),
(5,14),
(6,15),
(7,16),
(8,17),
(9,18),
(10,19)

insert into materia(id_materia,nome_materia)
values
(1, 'Transformações'),
(2, 'Defesa_Contra_as_Artes_das_Trevas'),
(3,'Poções'),
(4, 'Transfiguração'),
(5, 'Astronomia'),
(6,'Herbologia'),
(7, 'História_da_Magia'),
(8, 'Magia_dos_Números' ),
(9, 'Adivinhação'),
(10, 'Voo'),
(11, 'Estudo_das_Criaturas_Mágicas'),
(12, 'Feitiçaria'),
(13, 'Muggle_Studies')

insert into feitico_personagem(fk_feitico,fk_professor)
values
(1,6),
(5,3),
(9,3),
(1,2),
(3,8),
(9,3)


select * from personagem
select * from casa
select * from feitico_personagem
select distinct nome_casa from casa

select count (*) as caza from casa
where nome_casa = 'grifinoria'

select nome_casa from casa where nome_casa='grifinoria'

alter table personagem add data_de_nascimento numeric

update personagem set data_de_nascimento=31071980 where id_personagem=1

update personagem set data_de_nascimento=09091982 where id_personagem=2

update personagem set data_de_nascimento=19041979 where id_personagem=3

update personagem set data_de_nascimento=30081980 where id_personagem=4

update personagem set data_de_nascimento=01011980 where id_personagem=5

update personagem set data_de_nascimento=200101980 where id_personagem=6

update personagem set data_de_nascimento=04051980 where id_personagem=7

update personagem set data_de_nascimento=30071980 where id_personagem=8


SELECT Nome_Personagem AS personagem, Nome_Casa AS Casa
FROM Personagem 
JOIN Casa c ON FK_casa = ID_Casa;

SELECT Nome_Personagem
FROM Personagem p
JOIN Casa c ON FK_Casa = ID_Casa
WHERE Nome_Casa = 'Grifinória';

CREATE VIEW view_personagens_grifinoria AS
SELECT Nome_Personagem, data_de_nascimento
FROM Personagem p
JOIN Casa  ON FK_Casa =ID_Casa
WHERE Nome_Casa = 'Grifinória';

CREATE INDEX id_nome_personagem ON Personagem(Nome_Personagem);