DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  valor FLOAT NOT NULL  
);

CREATE TABLE usuario(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  id_plano INT NOT NULL,
  data_assinatura DATE NOT NULL,
  FOREIGN KEY (id_plano) REFERENCES plano (id)
);

CREATE TABLE artista(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE album(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  id_artista INT NOT NULL,
  ano_lancamento YEAR NOT NULL,
  FOREIGN KEY (id_artista) REFERENCES artista (id)
);

CREATE TABLE cancao(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  id_album INT NOT NULL,
  duracao_segundos INT NOT NULL,
  FOREIGN KEY (id_album) REFERENCES album (id)
);

CREATE TABLE usuario_artistas_seguidos(
	usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuario (id),
  FOREIGN KEY (artista_id) REFERENCES artista (id)
);

CREATE TABLE historico_usuario(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cancao_id INT NOT NULL,
  usuario_id INT NOT NULL,
  data_reproducao DATETIME NOT NULL,
  FOREIGN KEY (cancao_id) REFERENCES cancao (id),
  FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);

INSERT INTO plano ( nome, valor)
	VALUES ( 'gratuito', 0);
INSERT INTO plano ( nome, valor)
	VALUES ( 'familiar', 799);
INSERT INTO plano ( nome, valor)
	VALUES ( 'universitario', 599);
INSERT INTO plano ( nome, valor)
	VALUES ( 'pessoal', 699); 
  
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ( 'Thati',	23,	1,	'2019-10-20');
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ( 'Cintia',	35,	2,	'2017-12-30');
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ( 'Bill',	20,	3,	'2019-06-05');
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ( 'Roger',	45,	4,	'2020-05-13');
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ( 'Norman',	58,	4, '2017-02-17');
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ('Patrick', 33 ,	2,	'2017-01-06');
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ( 'Vivian', 26,	3,	'2018-01-05');
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ('Carol',	19,	3,	'2018-02-14');  
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ('Angelina',	42,	2, '2018-04-29');  
INSERT INTO usuario (nome, idade, id_plano, data_assinatura)
	VALUES ( 'Paul', 46	,2	, '2017-01-17');
  
INSERT INTO artista (nome) VALUES ('Walter Phoenix');
INSERT INTO artista (nome) VALUES ('Peter Strong');
INSERT INTO artista (nome) VALUES ('Lance Day');
INSERT INTO artista (nome) VALUES ('Freedie Shannon');
INSERT INTO artista (nome) VALUES ('Tyler Isle');
INSERT INTO artista (nome) VALUES ('Fog');

INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('Envios', 1, 1990);
INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('Exuberant', 1, 1993);
INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('Hallowed Steam', 1, 1995);  
INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('Incandescent', 1, 1998);
INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('Temporary Culture', 1, 2001);
INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('Library of liberty', 1, 2003);  
INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('EnviChained Downos', 1, 2007);
INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('Cabinet of fools', 1, 2012);
INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('No guarantees', 1, 2015);
INSERT INTO album (nome, id_artista, ano_lancamento)
	VALUES ('Apparatus', 1, 2015);

INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Soul For Us ', 1, 200);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Reflections Of Magic ', 1, 163);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Dance With Her Own', 1, 116);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Troubles Of My Inner Fire', 2, 203);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Time Fireworks', 2, 152);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Magic Circus', 3, 105);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Honey, So Do I', 3, 207);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES("Sweetie, Let's Gol Wild", 3, 139);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES(' She Knows', 3, 244);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Fantasy For Me', 4, 100);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Celebration Of More', 4, 146);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Rock His Everything', 4, 223);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Home Forever', 4, 231);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Diamond Power', 4, 241);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES("Let's Be Silly", 4, 132);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Thang Of Thunder', 5, 240);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Words Of Her Life', 5, 185);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Without My Streets', 5, 176);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Need Of The Evening', 6, 190);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('History Of My Roses', 6, 222);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Without My Love', 6, 111);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Walking And Game', 6, 123);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Young And Father', 6, 197);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Finding My Traditions', 7, 179);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Walking And Man', 7, 229);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Hard And Time', 7, 135);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES("Honey, I'm A Lone Wolf", 7, 150);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES("She Thinks I Won't Stay Tonight", 8, 166);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES("He Heard You're Bad For Me", 8, 154);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES("He Hopes We Can't Stay", 8, 210);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('I Know I Know', 8, 117);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES("He's Walking Away", 9, 159);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES("He's Trouble", 9, 138);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('I Heard I Want To Bo Alone', 9, 120);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('I Ride Alone', 9, 151);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Honey', 10, 79);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('You Cheated On Me', 10, 95);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES("Wouldn't It Be Nice", 10, 213);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('Baby', 10, 136);
INSERT INTO cancao (nome, id_album, duracao_segundos)
  VALUES('You Make Me Feel So..', 10, 83);

INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('36', 1, '2020-02-28 10:45:55');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('25', 1, '2020-05-02 05:30:35');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('23', 1, '2020-03-06 11:22:33');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('14', 1, '2020-08-05 08:05:17');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('15', 1, '2020-09-14 16:32:22');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('34', 2, '2020-01-02 07:40:33');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('24', 2, '2020-05-16 06:16:22');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('21', 2, '2020-10-09 12:27:48');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('39', 2, '2020-09-21 13:14:46');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('6', 3, '2020-11-13 16:55:13');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('3', 3, '2020-12-05 18:38:30');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('26', 3, '2020-07-30 10:00:00');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('20', 4, '2021-08-15 17:10:10');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('35', 4, '2021-07-10 15:20:30');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('27', 4, '2021-01-09 01:44:33');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('7', 5, '2020-07-03 19:33:28');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('12', 5, '2017-02-24 21:14:22');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('14', 5, '2020-08-06 15:23:43');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('1', 5, '2020-11-10 13:52:27');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('38', 6, '2019-02-07 20:33:48');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('29', 6, '2017-01-24 00:31:17');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('30', 6, '2017-10-12 12:35:20');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('22', 6, '2018-05-29 14:56:41');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('5', 7, '2018-05-09 22:30:49');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('4', 7, '2020-07-27 12:52:58');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('11', 7, '2018-01-16 18:40:43');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('39', 8, '2018-03-21 16:56:40');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('40', 8, '2020-10-18 13:38:05');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('32', 8, '2019-05-25 08:14:03');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('33', 8, '2021-08-15 21:37:09');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('16', 9, '2021-05-24 17:23:45');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('17', 9, '2018-12-07 22:48:52');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('8', 9, '2021-03-14 06:14:26');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('9', 9, '2020-04-01 03:36:00');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('20', 10, '2017-02-06 08:21:34');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('21', 10, '2017-12-04 05:33:43');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('12', 10, '2017-07-27 05:24:49');
INSERT INTO historico_usuario (cancao_id,usuario_id, data_reproducao)
  VALUES('13', 10, '2017-12-25 01:03:57');
  
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(1, 1);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(1, 4);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(1, 3);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(2, 1);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(2, 3);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(3, 2);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(3, 1);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(4, 4);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(5, 5);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(5, 6);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(6, 6);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(6, 3);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(6, 1);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(7, 2);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(7, 5);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(8, 1);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(8, 5);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(9, 6);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(9, 4);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(9, 3);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(10, 2);
INSERT INTO usuario_artistas_seguidos (usuario_id, artista_id) VALUES(10, 6);