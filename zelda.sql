/* Lógico_1: */

CREATE TABLE personagens (
    nome_personagem VARCHAR(20),
    fk_raca_raca_PK VARCHAR(20),
    id_personagem INT PRIMARY KEY,
    fk_afiliacao_afiliacao_PK VARCHAR(20),
    descriocao VARCHAR(80)
);

CREATE TABLE local (
    id_local INT,
    nome_local VARCHAR(20),
    tipo_local VARCHAR(20),
    descricao_local VARCHAR(80)
);

CREATE TABLE item (
    efeito VARCHAR(20),
    nome_item VARCHAR(20),
    id_item INT,
    tipo_item VARCHAR(20),
    raridade INT
);

CREATE TABLE raca (
    raca_PK VARCHAR(20) NOT NULL PRIMARY KEY,
    Hylian VARCHAR(20),
    Goron VARCHAR(20),
    Zora VARCHAR(20)
);

CREATE TABLE afiliacao (
    afiliacao_PK VARCHAR(20) NOT NULL PRIMARY KEY,
    Hyrule VARCHAR(20),
    Viloes VARCHAR(20)
);

CREATE TABLE relacionamentos (
    fk_personagens_id_personagem INT,
    fk_personagens_id_personagem_ INT
);

CREATE TABLE tem (
    fk_personagens_id_personagem INT
);

CREATE TABLE associado (
    fk_personagens_id_personagem INT,
    fk_local INT PRIMARY KEY
);
 
ALTER TABLE personagens ADD CONSTRAINT FK_personagens_2
    FOREIGN KEY (fk_raca_raca_PK)
    REFERENCES raca (raca_PK)
    ON DELETE SET NULL;
 
ALTER TABLE personagens ADD CONSTRAINT FK_personagens_3
    FOREIGN KEY (fk_afiliacao_afiliacao_PK)
    REFERENCES afiliacao (afiliacao_PK)
    ON DELETE SET NULL;
 
ALTER TABLE local ADD CONSTRAINT FK_local_1
    FOREIGN KEY (id_local)
    REFERENCES associado (fk_local);
 
ALTER TABLE relacionamentos ADD CONSTRAINT FK_relacionamentos_1
    FOREIGN KEY (fk_personagens_id_personagem)
    REFERENCES personagens (id_personagem)
    ON DELETE CASCADE;
 
ALTER TABLE relacionamentos ADD CONSTRAINT FK_relacionamentos_2
    FOREIGN KEY (fk_personagens_id_personagem_)
    REFERENCES personagens (id_personagem)
    ON DELETE CASCADE;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_1
    FOREIGN KEY (fk_personagens_id_personagem)
    REFERENCES personagens (id_personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE associado ADD CONSTRAINT FK_associado_1
    FOREIGN KEY (fk_personagens_id_personagem)
    REFERENCES personagens (id_personagem)
    ON DELETE RESTRICT;