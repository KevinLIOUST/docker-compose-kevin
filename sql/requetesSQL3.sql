-- Monde 8-1

-- School books
-- Requêtes :

-- Création de la base de données

CREATE DATABASE IF NOT EXISTS SchoolBooks CHARACTER SET utf8;

-- Création des tables

CREATE TABLE eleves(
   eleve_id INT AUTO_INCREMENT,
   eleve_prenom VARCHAR(25) NOT NULL,
   eleve_nom VARCHAR(35) NOT NULL,
   eleve_classe VARCHAR(15) NOT NULL,
   PRIMARY KEY(eleve_id)
);

CREATE TABLE livres(
   livre_id INT,
   livre_nom VARCHAR(50) NOT NULL,
   livre_auteur VARCHAR(50) NOT NULL,
   livre_annee_pub INT NOT NULL,
   PRIMARY KEY(livre_id)
);

CREATE TABLE emprunts(
   emprunt_id INT AUTO_INCREMENT,
   emprunt_date_emprunt DATE NOT NULL,
   emprunt_date_retour VARCHAR(50) NOT NULL,
   livre_id INT NOT NULL,
   eleve_id INT NOT NULL,
   PRIMARY KEY(emprunt_id),
   FOREIGN KEY(livre_id) REFERENCES livres(livre_id),
   FOREIGN KEY(eleve_id) REFERENCES eleves(eleve_id)
);

-- Insertion des données

INSERT INTO eleves (eleve_prenom, eleve_nom, eleve_classe) VALUES
('Naruto', 'Uzumaki', '3A'),
('Sakura', 'Haruno', '3A'),
('Ichigo', 'Kurosaki', '2B'),
('Luffy', 'Monkey D.', '1C'),
('Mikasa', 'Ackerman', '2A'),
('Gon', 'Freecss', '1B'),
('Killua', 'Zoldyck', '1B'),
('Natsu', 'Dragneel', '3B'),
('Erza', 'Scarlet', '3B'),
('Tanjiro', 'Kamado', '2C');

INSERT INTO livres (livre_nom, livre_auteur, livre_id, livre_annee_pub) VALUES
('Naruto', 'Masashi Kishimoto', 1, 1999),
('One Piece', 'Eiichiro Oda', 2, 1997),
('Bleach', 'Tite Kubo', 3, 2001),
('Fairy Tail', 'Hiro Mashima', 4, 2006),
('Attack on Titan', 'Hajime Isayama', 5, 2009),
('Demon Slayer', 'Koyoharu Gotouge', 6, 2016),
('Death Note', 'Tsugumi Ohba & Takeshi Obata', 7, 2003),
('Fullmetal Alchemist', 'Hiromu Arakawa', 8, 2001),
('My Hero Academia', 'Kohei Horikoshi', 9, 2014),
('Jujutsu Kaisen', 'Gege Akutami', 10, 2018);

INSERT INTO emprunts (emprunt_date_emprunt, emprunt_date_retour, livre_id, eleve_id) VALUES
('2025-01-05', '2025-01-15', 3, 1),
('2025-01-10', '2025-01-20', 5, 2),
('2025-01-12', '2025-01-22', 7, 3),
('2025-01-15', '2025-01-30', 2, 4),
('2025-01-18', '2025-02-01', 1, 5),
('2025-01-20', '2025-02-05', 6, 3),
('2025-01-22', '2025-02-02', 9, 6),
('2025-01-25', '2025-02-08', 4, 7),
('2025-01-28', '2025-02-10', 10, 8),
('2025-02-01', '2025-02-14', 8, 9),
('2025-02-03', '2025-02-15', 5, 10),
('2025-02-05', '2025-02-17', 2, 1),
('2025-02-07', '2025-02-21', 6, 2),
('2025-02-10', '2025-02-25', 1, 3),
('2025-02-12', '2025-02-26', 4, 4),
('2025-02-14', '2025-02-27', 3, 5),
('2025-02-16', '2025-03-01', 7, 6),
('2025-02-18', '2025-03-04', 9, 7),
('2025-02-20', '2025-03-06', 10, 8),
('2025-02-22', '2025-03-08', 8, 9),
('2025-02-25', '2025-03-12', 1, 10),
('2025-02-27', '2025-03-14', 5, 3),
('2025-03-01', '2025-03-17', 2, 1),
('2025-03-03', '2025-03-20', 6, 2),
('2025-03-05', '2025-03-21', 4, 3),
('2025-03-07', '2025-03-23', 3, 4),
('2025-03-09', '2025-03-24', 7, 5),
('2025-03-11', '2025-03-26', 9, 6),
('2025-03-13', '2025-03-29', 10, 7),
('2025-03-15', '2025-03-30', 8, 8),
('2025-03-17', '2025-04-01', 1, 9),
('2025-03-19', '2025-04-02', 5, 10),
('2025-03-21', '2025-04-03', 2, 1),
('2025-03-23', '2025-04-04', 6, 2),
('2025-03-25', '2025-04-06', 4, 3),
('2025-03-27', '2025-04-07', 3, 4),
('2025-03-29', '2025-04-08', 7, 5),
('2025-03-31', '2025-04-10', 9, 6),
('2025-04-02', '2025-04-12', 10, 7),
('2025-04-04', '2025-04-14', 8, 8),
('2025-04-06', '2025-04-15', 1, 9),
('2025-04-08', '2025-04-17', 5, 10),
('2025-04-10', '2025-04-18', 2, 1),
('2025-04-12', '2025-04-19', 6, 3),
('2025-04-14', '2025-04-20', 4, 5),
('2025-04-16', '2025-04-22', 3, 6),
('2025-04-18', '2025-04-23', 7, 7),
('2025-04-20', '2025-04-25', 9, 8),
('2025-04-22', '2025-04-26', 10, 9),
('2025-04-24', '2025-04-28', 8, 3);

-- Requête Légendaire de sélection (affichage) :

-- Afficher toutes les entrées du registre d’emprunts :
-- Nom
-- Prénom
-- Classe
-- Date d’emprunt
-- Date de retour
-- Nom du livre
-- Auteur

SELECT
eleves.eleve_prenom,
eleves.eleve_nom,
eleves.eleve_classe,
emprunts.emprunt_date_emprunt,
emprunts.emprunt_date_retour,
livres.livre_nom,
livres.livre_auteur
FROM emprunts
INNER JOIN eleves ON eleves.eleve_id = emprunts.eleve_id
INNER JOIN livres ON emprunts.livre_id = livres.livre_id;

-- Exemple :
-- 1 id de l'emprunt
-- 2025-01-05 date d'emprunt
-- 2025-01-15 date de retour
-- 3 Bleach, Tite Kubo
-- 1 Naruto Uzumaki

-- Monde 8-2

-- Création de la base de données

CREATE DATABASE IF NOT EXISTS MusicMix CHARACTER SET utf8;

-- Création des tables

CREATE TABLE utilisateurs(
   utilisateur_id INT AUTO_INCREMENT,
   utilisateur_prenom VARCHAR(25) NOT NULL,
   utilisateur_nom VARCHAR(30) NOT NULL,
   PRIMARY KEY(utilisateur_id)
);

CREATE TABLE titres_music(
   music_id INT AUTO_INCREMENT,
   music_nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(music_id)
);

CREATE TABLE playlists(
   playlist_id INT AUTO_INCREMENT,
   playlist_nom VARCHAR(50) NOT NULL,
   utilisateur_id INT NOT NULL,
   PRIMARY KEY(playlist_id),
   FOREIGN KEY(utilisateur_id) REFERENCES utilisateurs(utilisateur_id)
);

CREATE TABLE genres(
   genre_id INT AUTO_INCREMENT,
   genre_nom VARCHAR(35) NOT NULL,
   PRIMARY KEY(genre_id)
);

CREATE TABLE playlist_have_music(
   music_id INT,
   playlist_id INT,
   PRIMARY KEY(music_id, playlist_id),
   FOREIGN KEY(music_id) REFERENCES titres_music(music_id),
   FOREIGN KEY(playlist_id) REFERENCES playlists(playlist_id)
);

CREATE TABLE music_have_genres(
   music_id INT,
   genre_id INT,
   PRIMARY KEY(music_id, genre_id),
   FOREIGN KEY(music_id) REFERENCES titres_music(music_id),
   FOREIGN KEY(genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE playlists_share_with(
   utilisateur_id INT,
   playlist_id INT,
   PRIMARY KEY(utilisateur_id, playlist_id),
   FOREIGN KEY(utilisateur_id) REFERENCES utilisateurs(utilisateur_id),
   FOREIGN KEY(playlist_id) REFERENCES playlists(playlist_id)
);

-- Insertion des données

INSERT INTO utilisateurs (utilisateur_prenom, utilisateur_nom) VALUES
('Naruto', 'Uzumaki'),
('Ichigo', 'Kurosaki'),
('Natsu', 'Dragneel'),
('Luffy', 'Monkey D.'),
('Gon', 'Freecss');

INSERT INTO titres_music (music_nom) VALUES
("Butter - BTS"),
("POP! - Nayeon"),
("DDU-DU DDU-DU - BLACKPINK"),
("God’s Menu - Stray Kids"),
("TOMBOY - (G)I-DLE"),
("Kick Back - Kenshi Yonezu"),
("Blue Bird - Ikimono Gakari"),
("Silhouette - KANA-BOON"),
("Gurenge - LiSA"),
("Crossing Field - LiSA"),
("My Dearest - supercell"),
("Unravel - TK from Ling Tosite Sigure"),
("The Day - Porno Graffitti"),
("A Cruel Angel's - Thesis - Yoko Takahashi"),
("We Are! - Hiroshi Kitadani"),
("Again - YUI"),
("Inferno - Mrs. GREEN APPLE"),
("Kaikai Kitan - Eve"),
("Shinunoga E-Wa - Fujii Kaze"),
("Zankyou Sanka - Aimer"),
("KING - Kanaria (Vocaloid)"),
("Senbonzakura - Hatsune Miku"),
("Tell Your World - Hatsune Miku"),
("World is Mine - Hatsune Miku"),
("Rolling Girl - Hatsune Miku"),
("Ghost Rule - DECO*27"),
("Palette - Aimer & Miku"),
("Meltdown - Kagamine Rin"),
("Remote Control - Kagamine Twins"),
("Lost One’s Weeping - Kagamine Len"),
("MEGALOVANIA - Undertale"),
("Song of Storms - Zelda: Ocarina of Time"),
("Zelda’s Lullaby - The Legend of Zelda"),
("One-Winged Angel - Final Fantasy VII"),
("Aerith’s Theme - Final Fantasy VII"),
("Still Alive - Portal"),
("Baba Yetu - Civilization IV"),
("Main Theme - Super Smash Bros. Brawl"),
("Guile’s Theme - Street Fighter II"),
("Corridors of Time - Chrono Trigger"),
("Battle Theme - Pokémon Red/Blue"),
("Team Rocket Battle - Pokémon"),
("Baka Mitai - Yakuza 0"),
("Life Will Change - Persona 5"),
("Last Surprise - Persona 5"),
("Reach Out to the Truth - Persona 4"),
("Splattack! - Splatoon"),
("Calamari Inkantation - Splatoon"),
("Jump Up, Super Star! - Super Mario Odyssey"),
("Megalovania - Sans (Undertale Remix)"),
("Simple and Clean - Kingdom Hearts");

INSERT INTO playlists (playlist_nom, utilisateur_id) VALUES
('Anime Openings', 1),
('Gaming Vibes', 2),
('Vocaloid Hits', 1),
('K-pop Favorites', 3);

INSERT INTO genres (genre_nom) VALUES
('K-pop'),
('J-pop'),
('Vocaloid'),
('Anime Opening'),
('Anime Ending'),
('OST Jeux Vidéo'),
('Electro'),
('Rock Japonais'),
('Ballade'),
('Idol'),
('Chill / Lo-fi'),
('Epic / Battle Music');

INSERT INTO playlist_have_music (music_id, playlist_id) VALUES
(2, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(13, 1),
(14, 1),
(16, 1),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(41, 2),
(42, 2),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(20, 4),
(17, 4);

INSERT INTO music_have_genres (music_id, genre_id) VALUES
(1, 1),
(2, 1),
(2, 4),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(10, 8),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(14, 11),
(15, 4),
(16, 4),
(17, 2),
(17, 11),
(18, 2),
(19, 2),
(20, 2),
(20, 1),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(26, 7),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(30, 8),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(34, 12),
(35, 6),
(36, 6),
(36, 11),
(37, 6),
(38, 6),
(39, 6),
(39, 7),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(44, 12),
(45, 6),
(46, 6),
(46, 9),
(47, 6),
(48, 6),
(48, 10),
(49, 6),
(50, 6),
(50, 4);

INSERT INTO playlists_share_with (utilisateur_id, playlist_id) VALUES
(2, 1),
(3, 1),
(5, 1),
(1, 2),
(3, 2),
(4, 3),
(5, 3),
(1, 4),
(2, 4),
(5, 4);

SELECT COUNT(*) FROM titres_music;

-- Afficher le nombre de playlists par utilisateur.

SELECT COUNT(*) AS nb_playlists, utilisateur_prenom, utilisateur_nom FROM playlists
INNER JOIN utilisateurs ON utilisateurs.utilisateur_id = playlists.utilisateur_id
GROUP BY playlists.utilisateur_id;

-- Afficher toutes les playlists avec :
-- le nom de l’utilisateur
-- le nom de la playlist
-- le nom des chansons qui composent la playlist

SELECT utilisateurs.utilisateur_prenom, utilisateurs.utilisateur_nom, playlists.playlist_nom, GROUP_CONCAT(titres_music.music_nom SEPARATOR ', ' ) AS 'Musiques de la playlist' FROM playlists
INNER JOIN utilisateurs ON utilisateurs.utilisateur_id = playlists.utilisateur_id
INNER JOIN playlist_have_music ON playlist_have_music.playlist_id = playlists.playlist_id
INNER JOIN titres_music ON titres_music.music_id = playlist_have_music.music_id
GROUP BY utilisateurs.utilisateur_nom, utilisateurs.utilisateur_prenom, playlists.playlist_nom;

SELECT utilisateurs.utilisateur_prenom, utilisateurs.utilisateur_nom, playlists.playlist_nom, titres_music.music_nom FROM playlists
INNER JOIN utilisateurs ON utilisateurs.utilisateur_id = playlists.utilisateur_id
INNER JOIN playlist_have_music ON playlist_have_music.playlist_id = playlists.playlist_id
INNER JOIN titres_music ON titres_music.music_id = playlist_have_music.music_id
GROUP BY utilisateurs.utilisateur_nom, utilisateurs.utilisateur_prenom, playlists.playlist_nom, titres_music.music_nom;

-- Afficher toutes les chansons avec les genres associés

SELECT titres_music.music_nom, GROUP_CONCAT(genres.genre_nom SEPARATOR ', ' ) AS `Genres` FROM titres_music
INNER JOIN music_have_genres ON music_have_genres.music_id = titres_music.music_id
INNER JOIN genres ON genres.genre_id = music_have_genres.genre_id
GROUP BY titres_music.music_nom
ORDER BY `Genres` ASC;

-- Afficher le classement des chansons les plus utilisées dans les playlists

-- SELECT titres_music.music_nom, COUNT(titres_music.music_id) AS 'Nombre de fois utilisée dans les playlists' FROM titres_music
-- INNER JOIN playlist_have_music ON playlist_have_music.music_id = titres_music.music_id;
-- INNER JOIN playlists ON playlists.playlist_id = playlist_have_music.playlist_id
-- GROUP BY titres_music.music_nom, titres_music.music_id;

SELECT titres_music.music_nom, COUNT(playlist_have_music.music_id) AS `Nombre de fois utilisée dans les playlists` FROM titres_music
INNER JOIN playlist_have_music ON playlist_have_music.music_id = titres_music.music_id
GROUP BY playlist_have_music.music_id
ORDER BY `Nombre de fois utilisée dans les playlists` DESC;

-- Monde 8-3

-- Création de la base de données

CREATE DATABASE photos_albums CHARACTER SET utf8;

-- Création des tables

CREATE TABLE utilisateurs(
   utilisateur_id INT AUTO_INCREMENT,
   utilisateur_prenom VARCHAR(25) NOT NULL,
   utilisateur_nom VARCHAR(35) NOT NULL,
   utilisateur_mail VARCHAR(50) NOT NULL,
   utilisateur_mdp VARCHAR(50) NOT NULL,
   PRIMARY KEY(utilisateur_id)
);

CREATE TABLE albums(
   album_id INT AUTO_INCREMENT,
   album_nom VARCHAR(50) NOT NULL,
   album_date_creation DATE NOT NULL,
   PRIMARY KEY(album_id)
);

DROP TABLE IF EXISTS photos;
CREATE TABLE photos(
   photo_id INT AUTO_INCREMENT,
   photo_desc VARCHAR(255),
   photo_date_ajout DATE NOT NULL,
   photo_url VARCHAR(255) NOT NULL,
   PRIMARY KEY(photo_id)
);

CREATE TABLE util_create_album(
   utilisateur_id INT,
   album_id INT,
   PRIMARY KEY(utilisateur_id, album_id),
   FOREIGN KEY(utilisateur_id) REFERENCES utilisateurs(utilisateur_id),
   FOREIGN KEY(album_id) REFERENCES albums(album_id)
);

DROP TABLE IF EXISTS photo_in_album;
CREATE TABLE photo_in_album(
   album_id INT,
   photo_id INT,
   PRIMARY KEY(album_id, photo_id),
   FOREIGN KEY(album_id) REFERENCES albums(album_id),
   FOREIGN KEY(photo_id) REFERENCES photos(photo_id)
);

CREATE TABLE album_share_with(
   utilisateur_id INT,
   album_id INT,
   PRIMARY KEY(utilisateur_id, album_id),
   FOREIGN KEY(utilisateur_id) REFERENCES utilisateurs(utilisateur_id),
   FOREIGN KEY(album_id) REFERENCES albums(album_id)
);

-- Insertion des données (enregistrements de données)

INSERT INTO utilisateurs (utilisateur_prenom, utilisateur_nom, utilisateur_mail, utilisateur_mdp) VALUES
('Naruto', 'Uzumaki', 'naruto.uzumaki@konoha.jp', 'Rasengan123'),
('Sakura', 'Haruno', 'sakura.haruno@konoha.jp', 'CherryBlossom2024'),
('Luffy', 'Monkey D.', 'luffy.monkey@onepiece.jp', 'GomuGomuNo456'),
('Ichigo', 'Kurosaki', 'ichigo.kurosaki@karakura.jp', 'Bankai789'),
('Erza', 'Scarlet', 'erza.scarlet@fairytail.jp', 'TitaniaFT2025');

INSERT INTO albums (album_nom, album_date_creation) VALUES
('Souvenirs de Konoha', '2023-08-12'),
('Aventures de Fairy Tail', '2024-01-27'),
('Photos de la Team Straw Hat', '2022-11-03'),
('Moments à l’Académie UA', '2023-05-20'),
('Exploration de l’univers Pokémon', '2024-06-15'),
('Instants à Karakura', '2023-09-10'),
('Journée au Quartier Général des Exorcistes', '2022-12-01');

INSERT INTO photos (photo_desc, photo_date_ajout, photo_url) VALUES
('Demon Slayer style illustration jaune - CC0 public domain', '2025-07-25', 'https://publicdomainpictures.net/en/view-image.php?image=367801'),
('Illustration japonaise traditionnelle', '2025-07-25', 'https://rawpixel.com/image/10193004'),
('Jeune fille manga tenant un chat - style kawaii', '2025-07-25', 'https://rawpixel.com/image/6726226'),
('Fille manga médiévale', '2025-07-25', 'https://i.pinimg.com/736x/7b/88/f4/7b88f4a76d57f1aab3a579107fc92f70.jpg'),
('Alita Battle Angel', '2025-07-25', 'https://i.pinimg.com/736x/ec/ba/30/ecba3090a002904afd795601e3fbfb91.jpg'),
('Illustration manga portrait femme cheveux bleus, CC0 public domain', '2025-07-25', 'https://publicdomainpictures.net/en/view-image.php?image=582042'),
('Guerrière manga style samouraï avec épée - CC0 public domain', '2025-07-25', 'https://publicdomainpictures.net/en/view-image.php?image=88849'),
('Figurine manga japonaise - photo HD CC0 public domain', '2025-07-25', 'https://publicdomainpictures.net/en/view-image.php?image=372485'),
('Ciel dessiné style anime manga - illustration libre CC0', '2025-07-25', 'https://www.freepik.com/premium-ai-image/blue-sky-with-clouds-blue-sky-with-clouds-manga-anime-comic-style-digital-art-style-illustration-painting_37450056.htm'),
('Fille manga Dragon Ball', '2025-07-25', 'https://i.pinimg.com/1200x/0a/e3/f0/0ae3f0ca49e857d92aa98a45169c3b00.jpg'),
('5 filles manga avec la même tenue Japonaise', '2025-07-25', 'https://stock.adobe.com/images/anime-manga-girls-in-short-pleated-skirts-with-white-shirt-and-black-tie-fading-from-black-and-white-to-color-made-with-generative-ai/559687729'),
('Personnage manga style robot/genre cyber - CC0 public domain', '2025-07-25', 'https://publicdomainpictures.net/en/view-image.php?image=372572'),
('Personnage manga avec un casque rose sur sa tête', '2025-07-25', 'https://stock.adobe.com/images/anime-girl-with-headphones/604982252'),
('Fille manga cyborg aux yeux bleus, cheuveux argentés et bleu ciel vers le bas en dégradé', '2025-07-25', 'https://stock.adobe.com/images/anime-women-cyborg/1452084975'),
('Guilde FairyTail avec plein de personnages', '2025-07-25', 'https://i.pinimg.com/1200x/b2/74/97/b27497b2c160688be0de90a409ee56bc.jpg');

INSERT INTO util_create_album (utilisateur_id, album_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(3, 7);

INSERT INTO photo_in_album (album_id, photo_id) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10),
(6, 11), (6, 12), (6, 13),
(7, 14), (7, 15);

INSERT INTO album_share_with (utilisateur_id, album_id) VALUES
(2, 1),
(3, 1),
(1, 2),
(5, 2),
(2, 3),
(1, 4),
(3, 4),
(4, 5),
(2, 5),
(1, 6),
(5, 6),
(2, 7),
(4, 7);

-- Requêtes

-- Afficher toutes les photos avec le nom de l’album associé :
-- Attention certaines photos ne font parties d’aucun album et il faudra tout de même les afficher.

-- SELECT *, albums.album_nom FROM photos
-- NATURAL JOIN albums
-- INNER JOIN photo_in_album ON photo_in_album.album_id = albums.album_id;

-- GROUP_CONCAT(photo_in_album.album_id SEPARATOR ', ') AS `Numéros des photos présentes`

SELECT albums.album_nom, GROUP_CONCAT(photo_in_album.photo_id SEPARATOR ', ') AS `Photos présentes` FROM albums
INNER JOIN photo_in_album ON photo_in_album.album_id = albums.album_id
INNER JOIN photos ON photos.photo_id = photo_in_album.photo_id
GROUP BY albums.album_nom;

-- Afficher tous les albums avec leurs photos.

SELECT albums.album_nom, GROUP_CONCAT(photo_in_album.photo_id SEPARATOR ', ') AS `Photos présentes` FROM albums
INNER JOIN photo_in_album ON photo_in_album.album_id = albums.album_id
INNER JOIN photos ON photos.photo_id = photo_in_album.photo_id
GROUP BY albums.album_nom;

-- Afficher tous les utilisateurs avec le nombre total d’albums créés.

SELECT utilisateurs.utilisateur_prenom, utilisateurs.utilisateur_nom, COUNT(util_create_album.utilisateur_id) AS `Nombre d'albums crées` FROM utilisateurs
INNER JOIN util_create_album ON util_create_album.utilisateur_id = utilisateurs.utilisateur_id
GROUP BY utilisateurs.utilisateur_prenom, utilisateurs.utilisateur_nom;

-- Afficher les noms des personnes avec qui les utilisateurs partagent leurs albums.

SELECT utilisateurs.utilisateur_prenom, utilisateurs.utilisateur_nom, GROUP_CONCAT(album_share_with.album_id SEPARATOR ', ') FROM utilisateurs
INNER JOIN album_share_with ON album_share_with.utilisateur_id = utilisateurs.utilisateur_id
GROUP BY utilisateurs.utilisateur_prenom, utilisateurs.utilisateur_nom, album_share_with.utilisateur_id;

-- Mode 8-4

-- Création de la base de données

DROP DATABASE IF EXISTS location_vehicules;
CREATE DATABASE location_vehicules CHARACTER SET utf8;

-- Création des tables

DROP TABLE IF EXISTS clients;
CREATE TABLE clients(
   client_id INT AUTO_INCREMENT,
   client_prenom VARCHAR(30) NOT NULL,
   client_nom VARCHAR(50),
   PRIMARY KEY(client_id)
);

DROP TABLE IF EXISTS employes;
CREATE TABLE employes(
   employe_id INT AUTO_INCREMENT,
   employe_prenom VARCHAR(30) NOT NULL,
   employe_nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(employe_id)
);

DROP TABLE IF EXISTS vehicules;
CREATE TABLE vehicules(
   vehicule_id INT AUTO_INCREMENT,
   vehicule_marque VARCHAR(25) NOT NULL,
   vehicule_modele VARCHAR(25) NOT NULL,
   vehicule_categorie VARCHAR(25) NOT NULL,
   vehicule_etat VARCHAR(35) NOT NULL,
   rapport_etat_id INT NOT NULL,
   PRIMARY KEY(vehicule_id),
   FOREIGN KEY(rapport_etat_id) REFERENCES rapports_etat(rapport_etat_id)
);

DROP TABLE IF EXISTS locations;
CREATE TABLE locations(
   location_id INT AUTO_INCREMENT,
   location_date_debut DATE NOT NULL,
   location_date_fin DATE NOT NULL,
   location_kil_depart INT NOT NULL,
   location_kil_retour INT,
   PRIMARY KEY(location_id)
);

DROP TABLE IF EXISTS reservations;
CREATE TABLE reservations(
   reservation_id INT AUTO_INCREMENT,
   reservation_maniere VARCHAR(15) NOT NULL,
   reservation_etat VARCHAR(15) NOT NULL,
   reservation_date DATE NOT NULL,
   PRIMARY KEY(reservation_id)
);

DROP TABLE IF EXISTS rapports_etat;
CREATE TABLE rapports_etat(
   rapport_etat_id INT AUTO_INCREMENT,
   rapport_etat_comm VARCHAR(255) NOT NULL,
   rapport_etat_etat_general VARCHAR(50) NOT NULL,
   rapport_etat_domm VARCHAR(255) NOT NULL,
   PRIMARY KEY(rapport_etat_id)
);

DROP TABLE IF EXISTS cautions;
CREATE TABLE cautions(
   caution_id INT AUTO_INCREMENT,
   caution_montant INT NOT NULL,
   caution_date DATE NOT NULL,
   caution_statut VARCHAR(50) NOT NULL,
   PRIMARY KEY(caution_id)
);

DROP TABLE IF EXISTS client_do_location;
CREATE TABLE client_do_location(
   client_id INT,
   location_id INT,
   PRIMARY KEY(client_id, location_id),
   FOREIGN KEY(client_id) REFERENCES clients(client_id),
   FOREIGN KEY(location_id) REFERENCES locations(location_id)
);

DROP TABLE IF EXISTS location_generate_caution;
CREATE TABLE location_generate_caution(
   location_id INT,
   caution_id INT,
   PRIMARY KEY(location_id, caution_id),
   FOREIGN KEY(location_id) REFERENCES locations(location_id),
   FOREIGN KEY(caution_id) REFERENCES cautions(caution_id)
);

DROP TABLE IF EXISTS employe_valide_ou_refuse_reser;
CREATE TABLE employe_valide_ou_refuse_reser(
   employe_id INT,
   reservation_id INT,
   PRIMARY KEY(employe_id, reservation_id),
   FOREIGN KEY(employe_id) REFERENCES employes(employe_id),
   FOREIGN KEY(reservation_id) REFERENCES reservations(reservation_id)
);

DROP TABLE IF EXISTS reser_vehicules;
CREATE TABLE reser_vehicules(
   vehicule_id INT,
   reservation_id INT,
   PRIMARY KEY(vehicule_id, reservation_id),
   FOREIGN KEY(vehicule_id) REFERENCES vehicules(vehicule_id),
   FOREIGN KEY(reservation_id) REFERENCES reservations(reservation_id)
);

DROP TABLE IF EXISTS employe_manage_locations;
CREATE TABLE employe_manage_locations(
   employe_id INT,
   location_id INT,
   PRIMARY KEY(employe_id, location_id),
   FOREIGN KEY(employe_id) REFERENCES employes(employe_id),
   FOREIGN KEY(location_id) REFERENCES locations(location_id)
);

DROP TABLE IF EXISTS employe_manage_rapp;
CREATE TABLE employe_manage_rapp(
   employe_id INT,
   rapport_etat_id INT,
   PRIMARY KEY(employe_id, rapport_etat_id),
   FOREIGN KEY(employe_id) REFERENCES employes(employe_id),
   FOREIGN KEY(rapport_etat_id) REFERENCES rapports_etat(rapport_etat_id)
);

-- Insertion des données

INSERT INTO clients (client_prenom, client_nom) VALUES
('Naruto', 'Uzumaki'),
('Hinata', 'Hyuga'),
('Eren', 'Jaeger'),
('Luffy', 'Monkey'),
('Sakura', 'Haruno');

INSERT INTO employes (employe_prenom, employe_nom) VALUES
('Levi', 'Ackerman'),
('Nami', 'Arlong');

INSERT INTO vehicules (vehicule_marque, vehicule_modele, vehicule_categorie, vehicule_etat, rapport_etat_id) VALUES
('Toyota', 'Supra GR', 'Sport', 'Loué', 1),
('Nissan', 'GT-R R35', 'Sport', 'Disponible', 2),
('Honda', 'Civic Type R', 'Sport', 'En maintenance', 3),
('Subaru', 'Forester', 'SUV', 'Disponible', 1),
('Mitsubishi', 'Outlander', 'SUV', 'Loué', 2),
('Toyota', 'Land Cruiser', 'SUV', 'Disponible', 3),
('Mazda', '6', 'Berline', 'En maintenance', 1),
('Honda', 'Accord', 'Berline', 'Disponible', 2);

INSERT INTO locations (location_date_debut, location_date_fin, location_kil_depart, location_kil_retour) VALUES
('2025-07-01', '2025-07-05', 15200, 15640),
('2025-07-10', '2025-07-15', 8750, 9025),
('2025-06-20', '2025-06-25', 43500, 43980),
('2025-07-18', '2025-08-18', 23000, NULL),
('2025-07-05', '2025-07-09', 10120, 10450);

INSERT INTO reservations (reservation_maniere, reservation_etat, reservation_date) VALUES
('En ligne', 'En cours', '2025-07-24'),
('Sur place', 'Validée', '2025-07-22'),
('Sur place', 'Refusée', '2025-07-20'),
('En ligne', 'Validée', '2025-07-23');

INSERT INTO rapports_etat (rapport_etat_comm, rapport_etat_etat_general, rapport_etat_domm) VALUES
('Rien à signaler, véhicule propre.', 'Très bon', 'Aucun'),
('Rayure sur l’aile arrière gauche.', 'Bon', 'Rayure légère'),
('Intérieur poussiéreux et pneu avant droit usé.', 'Moyen', 'Usure pneu, nettoyage à prévoir');

INSERT INTO cautions (caution_montant, caution_date, caution_statut) VALUES
(500.00, '2025-07-01', 'Restituée'),
(800.00, '2025-07-10', 'Restituée'),
(600.00, '2025-07-18', 'En attente'),
(750.00, '2025-07-20', 'En attente'),
(700.00, '2025-07-05', 'Retenue');

INSERT INTO client_do_location (client_id, location_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO location_generate_caution (location_id, caution_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO employe_valide_ou_refuse_reser (employe_id, reservation_id) VALUES
(1, 1),
(2, 2),
(1, 3),
(2, 4);

INSERT INTO reser_vehicules (vehicule_id, reservation_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 1),
(6, 4);

INSERT INTO employe_manage_locations (employe_id, location_id) VALUES
(1, 1),
(2, 2),
(1, 3),
(2, 4),
(1, 5);

INSERT INTO employe_manage_rapp (employe_id, rapport_etat_id) VALUES
(1, 1),
(2, 2),
(1, 3);

-- 1. Afficher tous les véhicules avec leur état actuel.

SELECT * FROM vehicules;

-- 2. Afficher les clients avec leur nombre total de locations.

SELECT clients.client_prenom, clients.client_nom, COUNT(client_do_location.client_id) AS `Nombre de locations`  FROM clients
INNER JOIN client_do_location ON client_do_location.client_id = clients.client_id
GROUP BY clients.client_prenom, clients.client_nom;

-- 3. Afficher les véhicules disponibles sur une période donnée.

SELECT * FROM vehicules WHERE vehicules.vehicule_etat = 'Disponible';

-- 4. Afficher les réservations avec type (en ligne/sur place), statut, dates

SELECT * FROM reservations;

-- 5. Afficher les locations en cours.

SELECT * FROM locations WHERE location_kil_retour IS NULL;

-- 6. Afficher les véhicules avec leur historique de rapport d’état.

SELECT *, rapports_etat.rapport_etat_comm, rapports_etat.rapport_etat_etat_general, rapports_etat.rapport_etat_domm FROM vehicules
INNER JOIN rapports_etat ON vehicules.rapport_etat_id = rapports_etat.rapport_etat_id;

-- 7. Afficher les véhicules jamais loués.

-- 8. Afficher toutes les cautions non libérées avec le client, le véhicule loué, et le montant.