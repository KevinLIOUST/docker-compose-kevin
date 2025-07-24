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

DROP TABLE IF EXISTS genres;
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

DROP TABLE IF EXISTS music_have_genres;
CREATE TABLE music_have_genres(
   music_id INT,
   genre_id INT,
   PRIMARY KEY(music_id, genre_id),
   FOREIGN KEY(music_id) REFERENCES titres_music(music_id),
   FOREIGN KEY(genre_id) REFERENCES genres(genre_id)
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
-- Playlist 1 : Anime Openings
(2, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(13, 1),
(14, 1),
(16, 1),

-- Playlist 2 : Gaming Vibes
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(41, 2),
(42, 2),

-- Playlist 3 : Vocaloid Hits
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),

-- Playlist 4 : K-pop Favorites
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