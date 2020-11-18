/*
DROP TABLE DNT_COMENTARIO CASCADE CONSTRAINTS;
DROP TABLE DNT_USUARIO CASCADE CONSTRAINTS;
DROP TABLE DNT_POSTAGEM CASCADE CONSTRAINTS;
DROP TABLE DNT_POSTAGEM_FAVORITA CASCADE CONSTRAINTS;
*/

CREATE TABLE dnt_comentario (
    cd_comentario  NUMBER(5) NOT NULL,
    cd_postagem    NUMBER(5) NOT NULL,
    cd_usuario     NUMBER(5) NOT NULL,
    ds_comentario  VARCHAR2(400) NOT NULL
);

COMMENT ON COLUMN dnt_comentario.cd_comentario IS
    'Atributo: cd_comentario
Classe:  Determinante
Dom�nio: Num�rico
Tamanho: 5
Obrigat�rio: Sim
Descri��o: Chave prim�ria da tabela dnt_comentario';

COMMENT ON COLUMN dnt_comentario.ds_comentario IS
    'Atributo: ds_postagem
Classe:  Simples
Dom�nio: Texto
Tamanho: 400
Obrigat�rio: Sim
Descri��o: Coluna que ir� armazenar um coment�rio de um determinado usu�rio em uma postagem';

ALTER TABLE dnt_comentario ADD CONSTRAINT pk_comentario PRIMARY KEY ( cd_comentario );

CREATE TABLE dnt_postagem (
    cd_postagem  NUMBER(5) NOT NULL,
    cd_usuario   NUMBER(5) NOT NULL,
    ds_postagem  VARCHAR2(1000) NOT NULL,
    fl_imagem    BLOB
);

COMMENT ON COLUMN dnt_postagem.cd_postagem IS
    'Atributo: cd_postagem
Classe:  Determinante
Dom�nio: Num�rico
Tamanho: 5
Obrigat�rio: Sim
Descri��o: Chave prim�ria da tabela dnt_postagem';

COMMENT ON COLUMN dnt_postagem.ds_postagem IS
    'Atributo: ds_postagem
Classe:  Simples
Dom�nio: Texto
Tamanho: 1000
Obrigat�rio: Sim
Descri��o: Coluna que ir� armazenar o texto de uma determinada postagem';

COMMENT ON COLUMN dnt_postagem.fl_imagem IS
    'Atributo: fl_imagem
Classe:  Simples
Dom�nio: Byte[ ]
Obrigat�rio: N�o
Descri��o: Coluna que ir� armazenar a imagem de uma determinada postagem';

ALTER TABLE dnt_postagem ADD CONSTRAINT pk_postagem PRIMARY KEY ( cd_postagem );

CREATE TABLE dnt_postagem_favorita (
    cd_postagem_favorita  NUMBER(5) NOT NULL,
    cd_usuario            NUMBER(5) NOT NULL,
    cd_postagem           NUMBER(5) NOT NULL
);

COMMENT ON COLUMN dnt_postagem_favorita.cd_postagem_favorita IS
    'Atributo: cd_postagem_favorita
Classe:  Determinante
Dom�nio: Num�rico
Tamanho: 5
Obrigat�rio: Sim
Descri��o: Chave prim�ria da tabela dnt_postagem_favorita';

COMMENT ON COLUMN dnt_postagem_favorita.cd_usuario IS
    'Atributo: cd_usuario
Classe:  Simples
Dom�nio: Num�rico
Tamanho: 5
Obrigat�rio: Sim
Descri��o: Chave estrangeira da tabela dnt_usuario';

ALTER TABLE dnt_postagem_favorita
    ADD CONSTRAINT pk_postagem_favorita PRIMARY KEY ( cd_postagem_favorita,
                                                      cd_usuario,
                                                      cd_postagem );

CREATE TABLE dnt_usuario (
    cd_usuario  NUMBER(5) NOT NULL,
    nm_usuario  VARCHAR2(20) NOT NULL,
    ds_email    VARCHAR2(60) NOT NULL,
    ds_senha    VARCHAR2(20) NOT NULL,
    fl_usuario  BLOB
);

COMMENT ON COLUMN dnt_usuario.cd_usuario IS
    'Atributo: cd_usuario
Classe:  Determinante
Dom�nio: Num�rico
Tamanho: 5
Obrigat�rio: Sim
Descri��o: Chave prim�ria da tabela dnt_usuario

';

COMMENT ON COLUMN dnt_usuario.nm_usuario IS
    'Atributo: nm_usuario
Classe:  Simples
Dom�nio: Texto
Tamanho: 20
Obrigat�rio: Sim
Descri��o: Coluna que ir� guardar o nome dos usu�rios';

COMMENT ON COLUMN dnt_usuario.ds_email IS
    'Atributo: ds_email
Classe:  Simples
Dom�nio: Texto
Tamanho: 60
Obrigat�rio: Sim
Descri��o: Coluna que ir� guardar o email cadastrado pelo usu�rio';

COMMENT ON COLUMN dnt_usuario.ds_senha IS
    'Atributo: ds_senha
Classe:  Simples
Dom�nio: Texto
Tamanho: 20
Obrigat�rio: Sim
Descri��o: Coluna que ir� guardar a senha cadastrada pelo usu�rio. Deve ter no m�nimo 8 caracteres';

ALTER TABLE dnt_usuario ADD CONSTRAINT pk_usuario PRIMARY KEY ( cd_usuario );

ALTER TABLE dnt_comentario
    ADD CONSTRAINT fk_comentario_postagem FOREIGN KEY ( cd_postagem )
        REFERENCES dnt_postagem ( cd_postagem );

ALTER TABLE dnt_comentario
    ADD CONSTRAINT fk_comentario_usuario FOREIGN KEY ( cd_usuario )
        REFERENCES dnt_usuario ( cd_usuario );

ALTER TABLE dnt_postagem_favorita
    ADD CONSTRAINT fk_postagem_favorita_postagem FOREIGN KEY ( cd_postagem )
        REFERENCES dnt_postagem ( cd_postagem );

ALTER TABLE dnt_postagem_favorita
    ADD CONSTRAINT fk_postagem_favorita_usuario FOREIGN KEY ( cd_usuario )
        REFERENCES dnt_usuario ( cd_usuario );

ALTER TABLE dnt_postagem
    ADD CONSTRAINT fk_postagem_usuario FOREIGN KEY ( cd_usuario )
        REFERENCES dnt_usuario ( cd_usuario );



-- Relat�rio do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
