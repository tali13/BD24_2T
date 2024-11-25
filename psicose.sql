/* exenplo: */

CREATE TABLE Jogo (
    Cod_Jogo int,
    ID_jogo int,
    Nome_Jogo char(10),
    Categoria int,
    fk_personagem int
);

CREATE TABLE Personagem (
    Cod_Personagem int PRIMARY KEY,
    id_personagem int,
    nome_personagem int,
    fk_inventario int,
    fk_local int
);

CREATE TABLE Local (
    Cod_Local int PRIMARY KEY,
    Nome_Local char(10),
    fk_inimigo int,
    fk_npc int
);

CREATE TABLE Inimigo (
    Cod_Inimigo int,
    Nome_Inimigo char(10),
    fk_conquista int PRIMARY KEY
);

CREATE TABLE NPC (
    Cod_NPC int PRIMARY KEY,
    Nome_NPC int
);

CREATE TABLE Item (
    Cod_Item int PRIMARY KEY,
    Nome_Item char(10)
);

CREATE TABLE Inventario (
    Cod_inventario int PRIMARY KEY,
    Nome_Inventario char(10),
    fk_item int
);

CREATE TABLE Conquista (
    Cod_Conquista int PRIMARY KEY,
    Nome_Conquista char(10)
);
 
ALTER TABLE Jogo ADD CONSTRAINT FK_Jogo_1
    FOREIGN KEY (ID_jogo)
    REFERENCES Personagem (Cod_Personagem);
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_2
    FOREIGN KEY (fk_local)
    REFERENCES Local (Cod_Local);
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_3
    FOREIGN KEY (fk_inventario)
    REFERENCES Inventario (Cod_inventario);
 
ALTER TABLE Local ADD CONSTRAINT FK_Local_2
    FOREIGN KEY (fk_npc)
    REFERENCES NPC (Cod_NPC);
 
ALTER TABLE Local ADD CONSTRAINT FK_Local_3
    FOREIGN KEY (fk_inimigo)
    REFERENCES Inimigo (fk_conquista);
 
ALTER TABLE Inimigo ADD CONSTRAINT FK_Inimigo_2
    FOREIGN KEY (Cod_Inimigo)
    REFERENCES Conquista (Cod_Conquista);
 
ALTER TABLE Inventario ADD CONSTRAINT FK_Inventario_2
    FOREIGN KEY (fk_item)
    REFERENCES Item (Cod_Item);