-- 11 genres
-- 5 catégories
-- 10 articles
-- 10 clients
-- 10 commandes
-- 10 détails

CREATE DATABASE IF NOT EXISTS KevinShop CHARACTER SET utf8;

CREATE TABLE CLIENTS(
   id_cli INT AUTO_INCREMENT,
   mail_cli VARCHAR(30) NOT NULL,
   adresse_cli VARCHAR(50),
   tel_cli VARCHAR(10),
   nom_cli VARCHAR(25) NOT NULL,
   prenom_cli VARCHAR(10),
   PRIMARY KEY(id_cli)
);

CREATE TABLE CATEGORIE(
   id_cat INT AUTO_INCREMENT,
   nom_cat VARCHAR(30) NOT NULL,
   PRIMARY KEY(id_cat)
);

CREATE TABLE GENRES(
   id_genre INT AUTO_INCREMENT,
   nom_genre VARCHAR(30),
   PRIMARY KEY(id_genre)
);

CREATE TABLE COMMANDES(
   id_com INT AUTO_INCREMENT,
   id_cli INT NOT NULL,
   PRIMARY KEY(id_com),
   FOREIGN KEY(id_cli) REFERENCES CLIENTS(id_cli)
);

CREATE TABLE ARTICLES(
   id_art INT AUTO_INCREMENT,
   prix_art DOUBLE NOT NULL,
   nom_art VARCHAR(50) NOT NULL,
   taille_art VARCHAR(4),
   stock INT NOT NULL,
   id_genre INT NOT NULL,
   id_cat INT NOT NULL,
   PRIMARY KEY(id_art),
   FOREIGN KEY(id_genre) REFERENCES GENRES(id_genre),
   FOREIGN KEY(id_cat) REFERENCES CATEGORIE(id_cat)
);

CREATE TABLE DETAILS(
   id_art INT,
   id_com INT,
   qty INT NOT NULL,
   PRIMARY KEY(id_art, id_com),
   FOREIGN KEY(id_art) REFERENCES ARTICLES(id_art),
   FOREIGN KEY(id_com) REFERENCES COMMANDES(id_com)
);

INSERT INTO CLIENTS (mail_cli, adresse_cli, tel_cli, nom_cli, prenom_cli) VALUES
('natsu.dragneel@fairytail.com', 'Magnolia, Rue du Sud 14', '0601020304', 'Dragneel', 'Natsu'),
('lucy.heartfilia@fairytail.com', 'Magnolia, Rue du Céleste 8', '0605060708', 'Heartfilia', 'Lucy'),
('naruto.uzumaki@konoha.jp', 'Konoha, Quartier Uzumaki 3', '0708091011', 'Uzumaki', 'Naruto'),
('sasuke.uchiha@konoha.jp', 'Konoha, Quartier Uchiha 1', '0611223344', 'Uchiha', 'Sasuke'),
('itadori.yuji@jujutsu.jp', 'Tokyo, Rue du Lycée 5', '0622334455', 'Itadori', 'Yuji'),
('goku.son@capsulecorp.com', 'Mont Paozu, Route 9', '0655667788', 'Son', 'Goku'),
('light.yagami@kira.jp', 'Tokyo, Rue Sakura 7', '0666778899', 'Yagami', 'Light'),
('l.lawliet@investigation.jp', 'Inconnu', '0600000001', 'Lawliet', 'L'),
('eren.yeager@paradis.com', 'Shiganshina, Rue du Mur 12', '0677889900', 'Yeager', 'Eren'),
('mikasa.ackerman@paradis.com', 'Shiganshina, Quartier Nord 4', '0612345678', 'Ackerman', 'Mikasa');
-- ('gon.freecss@hunter.org', 'Île de la Baleine, Maison 5', '0688990011', 'Freecss', 'Gon'),
-- ('killua.zoldyck@hunter.org', 'Mont Kukuru, Manoir Zoldyck', '0699001122', 'Zoldyck', 'Killua'),
-- ('tanjiro.kamado@demon.jp', 'Montagnes de Kamado, Maison 1', '0611223344', 'Kamado', 'Tanjiro'),
-- ('nezuko.kamado@demon.jp', 'Montagnes de Kamado, Maison 1', '0611223345', 'Kamado', 'Nezuko'),
-- ('edward.elric@alchemy.jp', 'Amestris, Résidence Elric', '0677008800', 'Elric', 'Edward');

-- INSERT INTO GENRES (nom_genre) VALUES
-- ('Shōnen'),
-- ('Seinen'),
-- ('Shōjo'),
-- ('Josei'),
-- ('Isekai');

INSERT INTO GENRES (nom_genre) VALUES
-- Manga Papier
('Action'),
('Romance'),
('Comédie'),

-- Anime
('Fantasy'),
('Science-Fiction'),

-- Figurine
('Nendoroid'),
('PVC'),

-- Vêtement
('Kawaii'),
('Vintage'),

-- Accessoire
('Chibi'),
('Logo de Guilde');

-- UPDATE GENRES SET nom_genre = Homme WHERE 

INSERT INTO CATEGORIE (nom_cat) VALUES
('Manga Papier'),
('Anime'),
('Figurine'),
('Vêtement'),
('Accessoire');

INSERT INTO ARTICLES (prix_art, nom_art, taille_art, stock, id_genre, id_cat) VALUES
(74.14, 'Nendoroid Nezuko', NULL, 88, 7, 3),
(6.81, 'Figurine Luffy Articulée', NULL, 88, 7, 3),
(67.00, 'Fairy Tail Tome 12', NULL, 30, 3, 1),
(29.49, 'POP! Tanjiro', NULL, 61, 6, 3),
(34.26, 'Fairy Tail Tome 12', NULL, 24, 3, 1),
(43.76, 'Naruto Tome 1', NULL, 19, 2, 1),
(78.96, 'Figurine Luffy Articulée', NULL, 67, 7, 3),
(34.44, 'Tapis de souris Akatsuki', NULL, 56, 10, 5),
(12.15, 'Blu-ray Attack on Titan S2', NULL, 64, 5, 2),
(34.37, 'Figurine Goku PVC', NULL, 90, 6, 3),
(21.00, 'Sweat One Piece', 'M', 41, 8, 4),
(68.50, 'Sweat One Piece', 'M', 69, 8, 4),
(30.08, 'Porte-clé Sharingan', NULL, 19, 10, 5),
(39.86, 'DVD My Hero Academia S1', NULL, 59, 4, 2),
(50.62, 'Fairy Tail Tome 12', NULL, 67, 1, 1),
(34.02, 'Naruto Tome 1', NULL, 56, 2, 1),
(42.98, 'Porte-clé Sharingan', NULL, 71, 10, 5),
(56.28, 'Naruto Tome 1', NULL, 87, 2, 1),
(34.51, 'POP! Tanjiro', NULL, 99, 6, 3),
(9.76, 'Fairy Tail Tome 12', NULL, 42, 2, 1),
(38.78, 'Fairy Tail Tome 12', NULL, 85, 2, 1),
(57.04, 'Nendoroid Nezuko', NULL, 27, 7, 3),
(19.74, 'Naruto Tome 1', NULL, 81, 1, 1),
(6.73, 'Blu-ray Attack on Titan S2', NULL, 3, 5, 2),
(60.60, 'Fairy Tail Tome 12', NULL, 92, 3, 1),
(50.13, 'Sweat One Piece', 'L', 11, 8, 4),
(53.37, 'Porte-clé Sharingan', NULL, 42, 11, 5),
(68.38, 'Sweat One Piece', 'S', 95, 8, 4),
(62.23, 'DVD My Hero Academia S1', NULL, 52, 4, 2),
(27.85, 'Sweat One Piece', 'XL', 64, 9, 4),
(42.46, 'Casquette Fairy Tail', 'S', 91, 8, 4),
(59.26, 'Casquette Fairy Tail', 'M', 47, 9, 4),
(66.97, 'Porte-clé Sharingan', NULL, 90, 11, 5),
(59.62, 'DVD My Hero Academia S1', NULL, 76, 4, 2),
(44.94, 'Blu-ray Attack on Titan S2', NULL, 94, 5, 2),
(50.90, 'Sweat One Piece', 'M', 28, 9, 4),
(79.64, 'Casquette Fairy Tail', 'XS', 86, 8, 4),
(63.27, 'Nendoroid Nezuko', NULL, 42, 7, 3),
(60.82, 'Fairy Tail Tome 12', NULL, 42, 2, 1),
(76.13, 'Fairy Tail Tome 12', NULL, 8, 3, 1),
(52.82, 'POP! Tanjiro', NULL, 61, 6, 3),
(22.52, 'Sweat One Piece', 'M', 13, 9, 4),
(59.50, 'Sweat One Piece', 'L', 83, 9, 4),
(63.85, 'Sweat One Piece', 'XS', 97, 8, 4),
(55.66, 'Casquette Fairy Tail', 'L', 1, 9, 4),
(10.79, 'Tapis de souris Akatsuki', NULL, 34, 10, 5),
(42.39, 'POP! Tanjiro', NULL, 98, 7, 3),
(74.91, 'Naruto Tome 1', NULL, 16, 2, 1),
(41.49, 'Tapis de souris Akatsuki', NULL, 62, 11, 5),
(13.75, 'One Piece Tome 5', NULL, 13, 3, 1);