Prompt ******  Populating DNT_USUARIO table ....
INSERT INTO dnt_usuario VALUES(1, 'Laura Martins', 'laura@gmail.com', 'laura123', null);
INSERT INTO dnt_usuario VALUES(2, 'Giovanna Freitas', 'giovanna@gmail.com', 'gigi12345', null);
INSERT INTO dnt_usuario VALUES(3, 'Fagner Pereira', 'fagner@gmail.com', 'faguinho1', null);
INSERT INTO dnt_usuario VALUES(4, 'Arthur Marcelo', 'arthur@gmail.com', 'arthur000', null);
INSERT INTO dnt_usuario VALUES(5, 'Victor Laurindo', 'victor@gmail.com', 'victor20', null);

select * from dnt_usuario;

Prompt ******  Populating DNT_POSTAGEM table ....
INSERT INTO dnt_postagem VALUES(1, 1, 'Hoje eu recebi uma rim...', null);
INSERT INTO dnt_postagem VALUES(2, 2, 'Meu avô recebeu um coração...', null);
INSERT INTO dnt_postagem VALUES(3, 3, 'Eu recebi um figado...', null);
INSERT INTO dnt_postagem VALUES(4, 4, 'Meu filho acaba de doar sua medula...', null);
INSERT INTO dnt_postagem VALUES(5, 5, 'Minha mãe está na cirurgia recebendo um pulmão...', null);

select * from dnt_postagem;


Prompt ******  Populating DNT_COMENTARIO table ....
INSERT INTO dnt_comentario VALUES(1, 1, 3, 'Que bom' );
INSERT INTO dnt_comentario VALUES(2, 2, 4, 'Fico feliz pelo seu avô');
INSERT INTO dnt_comentario VALUES(3, 3, 2, 'Cuide bem dele');
INSERT INTO dnt_comentario VALUES(4, 4, 5, 'Que coragem, parabéns');
INSERT INTO dnt_comentario VALUES(5, 5, 1, 'Não se preocupe, vai tudo dar certo, força.');

select * from dnt_comentario;


Prompt ******  Populating DNT_POSTAGEM_FAVORITA table ....
INSERT INTO dnt_postagem_favorita VALUES(1, 2, 3);
INSERT INTO dnt_postagem_favorita VALUES(2, 4, 5);
INSERT INTO dnt_postagem_favorita VALUES(3, 3, 1);
INSERT INTO dnt_postagem_favorita VALUES(4, 1, 2);
INSERT INTO dnt_postagem_favorita VALUES(5, 5, 4);

select * from dnt_postagem_favorita;




