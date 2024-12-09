create table personagem(
nome_personagem varchar(20) not null,
id_personagem serial primary key
)
create table item(
id_item serial primary key,
nome_item varchar(20) not null,
preco int not null
)
create table cenario(
id_cenario serial primary key not null,
nome_cenario varchar(20) not null
)
create table coletado(
id_coletado serial primary key not null,
fk_personagem int not null references personagem (id_personagem),
fk_item int not null references item(id_item),
fk_cenario int not null references cenario(id_cenario)
)
select * from item

insert into personagem(id_personagem,nome_personagem)
values(1,'aragorn'),
(2,'legolas'),
(3,'gimli'),
(4,'gandalf'),
(5,'TomBombadil'),
(6,'Galadriel'),
(7,'SamwiseGamgee'),
(8,'Pippinlevou'),
(9,'Balrog'),
(10,'Arwen')

select * from cenario
insert into cenario(id_cenario,nome_cenario)
values(1,'floresta De Lothlorien'),
(2,'montanhas  Moria'),
(3,'campo Batalha Helm'),
(4,'Abismo de Helm'),
(5,'Alqualondë')

insert into item(id_item,nome_item,preco)
values(1,'Espada Elfica',52.00),
( 2,'Arco Longo',42.55),
(3,'Machado de Batalha',99.45),
(4,'Varinha Mágica',36.45),
(5,'Glamdring',74.15),
(6,'Andúril',85.15)
select * from item
insert into coletado(fk_personagem,fk_item,fk_cenario)
values(1,2,3),
(1,1,1),
(2,2,1),
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,1),
(1,3,3),
(2,1,1)
select * from coletado

select nome_item,id_coletado
from item,coletado
where item.id_item=coletado.fk_item and fk_personagem=1



select nome_cenario,id_coletado
from cenario,coletado
where cenario.id_cenario=coletado.fk_personagem and fk_personagem=2

select nome_item,id_coletado
from item,coletado
where item.id_item=coletado.fk_item and fk_personagem=3

select * from coletado
select * from cenario

select nome_cenario,id_coletado
from cenario,coletado
join coletado
on cenario.id_cenario=coletado.fk_personagem

