-- Monde 1

-- Monde 1-1
-- Créer une base de données “languages”.
CREATE DATABASE languages;

-- Monde 1-2
-- Créer une base de données “webdevelopment“avec l’encodage “UTF-8”.
CREATE DATABASE webdevelopment CHARACTER SET utf8;

-- Monde 1-3
-- Créer une base de données “frameworks”,si elle n’existe pas, avec l’encodage “UTF-8”.
CREATE DATABASE IF NOT EXISTS frameworks CHARACTER SET utf8;

-- Monde 1-4
-- Créer une base de données “languages”,si elle n’existe pas,avec l’encodage “UTF-8”.
CREATE DATABASE IF NOT EXISTS languages CHARACTER SET utf8;

-- Monde 1-5
-- Supprimer la base de données “languages”.
DROP DATABASE languages;

-- Monde 1-6
-- Supprimer la base de données,si elle existe, “frameworks”.
DROP DATABASE IF EXISTS frameworks;

-- Monde 1-7
-- Supprimer la base de données,si elle existe, “languages”.
DROP DATABASE IF EXISTS languages;

-- Monde 1-8

-- Selon moi, c'est normal de vérifier avant la création ou la suppression de la base de données si elle existe déjà ou pas, pour éviter de la récréer.
-- Selon vous, quel est l’intérêt de vérifier si une base de données existe avant la création / suppression ?
-- Avant de terminer s’assurer que la base de données “webdevelopment”est bien présente dans votre SGBDR.

DROP DATABASE IF EXISTS webdevelopment;
CREATE DATABASE IF NOT EXISTS webdevelopment;

-- Monde 2

-- Monde 2-1

CREATE TABLE language (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
langue VARCHAR(50)
);

-- Monde 2-2
CREATE TABLE tools (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
tool VARCHAR(50)
);

-- Monde 2-3
CREATE TABLE frameworks (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nom VARCHAR(50)
);

-- Monde 2-4
CREATE TABLE libraries (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
library VARCHAR(50)
);

-- Monde 2-5
CREATE TABLE ide (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ide VARCHAR(50)
);

-- Monde 2-6
CREATE TABLE IF NOT EXISTS frameworks (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
framework VARCHAR(50)
);

-- Monde 2-7
DROP TABLE IF EXISTS tools;

-- Monde 2-8
DROP TABLE libraries;

-- Monde 2-9
DROP TABLE IF EXISTS ide;

-- Monde 2-10
CREATE DATABASE codex DEFAULT CHARACTER SET utf8;

CREATE TABLE IF NOT EXISTS clients (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    lastname VARCHAR(50),
    firstname VARCHAR(50),
    birthDate DATE,
    adresse VARCHAR(50),
    firstFhoneNumber INT(10),
    secondPhoneNumber INT(10),
    mail VARCHAR(50)
);

-- Monde 3

-- Monde 3-1
ALTER TABLE language ADD versions VARCHAR(50);

-- Monde 3-2
ALTER TABLE frameworks ADD version INT(3);

-- Monde 3-3
ALTER TABLE language CHANGE versions version VARCHAR(50);

-- Monde 3-4
ALTER TABLE frameworks CHANGE nom framework VARCHAR(50);

-- Monde 3-5
ALTER TABLE frameworks MODIFY version VARCHAR(3);

-- Monde 3-6
ALTER TABLE clients DROP secondPhoneNumber;
ALTER TABLE clients CHANGE firstFhoneNumber fhoneNumber VARCHAR(50);
ALTER TABLE clients MODIFY fhoneNumber VARCHAR(10);
ALTER TABLE clients ADD zipCode VARCHAR(5), ADD city VARCHAR(20);

--  Monde 4

-- Monde 4-1
INSERT INTO language (langue, version)
    VALUES
    ('JavaScript', 5),
    ('PHP', 5.2),
    ('PHP', 5.4),
    ('HTML', 5.1),
    ('JavaScript', 6),
    ('JavaScript', 7),
    ('JavaScript', 8),
    ('PHP', 7);

-- Monde 4-2
DROP TABLE IF EXISTS frameworks;

CREATE TABLE IF NOT EXISTS frameworks (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    framework VARCHAR(50),
    version VARCHAR(10)
);

ALTER TABLE frameworks MODIFY version VARCHAR(10);

INSERT INTO frameworks (framework, version)
    VALUES
    ('Symfony', 2.8),
    ('Symfony', 3),
    ('Jquery', 1.6),
    ('Jquery', 2.10);

-- Monde 5
CREATE DATABASE IF NOT EXISTS sql_exercices DEFAULT CHARACTER SET utf8;

-- Monde 5-1
SELECT * FROM `lpecom_livres`;

-- Monde 5-2
SELECT titre FROM `lpecom_livres` WHERE prix > 20;

-- Monde 5-3
SELECT * FROM `lpecom_livres` ORDER BY prix DESC;

-- Monde 5-4
SELECT MAX(prix) FROM `lpecom_livres`;
SELECT titre, prix FROM `lpecom_livres` ORDER BY prix DESC LIMIT 1;

-- Monde 5-5
-- Afficher les livres de la table lpecom_livres qui ont un prix compris entre 20 et 22.
SELECT titre, prix FROM `lpecom_livres` WHERE prix >= 20 AND prix <= 22 ORDER BY titre ASC;

-- Monde 5-6
-- Afficher les livres de la table lpecom_livres à l'exception de celui portant la valeur pour la colonne isbn_10 : 2092589547.
SELECT titre FROM `lpecom_livres` WHERE isbn_10 != 2092589547 ORDER BY titre ASC;

-- Monde 6

-- Monde 6-1
-- Afficher l'id des étudiants qui ont participés à au moins un examen.
SELECT TOP 3 id FROM `lpecom_examens`;
SELECT COUNT(id_etudiant) AS nbr_doublon, id_etudiant, matiere FROM `lpecom_examens` GROUP BY id_etudiant, matiere HAVING COUNT(id_etudiant) > 1 ORDER BY matiere;

-- VRAI REQUETE :
-- On sélectionne l'id des étudiants, puis le nombre de fois où le même id_etudiant apparaît dans la table de la table lpecom_etudiants,
-- puis on la connecte avec la table lpecom_examens pour afficher les informations générales.
-- Puis avec l'aide de HAVING, on regarde si le nombre de fois où apparaît le même id_etudiant est vraiment plus grand que 1 et on range les lignes avec les id_etudiant du plus petit au plus grand.
SELECT id_etudiant FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens` GROUP BY id_etudiant HAVING COUNT(id_etudiant) > 1 ORDER BY id_etudiant ASC;
SELECT id_etudiant FROM lpecom_examens;

-- Monde 6-2
-- Compter le nombre d'étudiants qui ont participés à au moins un examen.
SELECT COUNT(id_etudiant), id_etudiant FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens` GROUP BY id_etudiant HAVING COUNT(id_etudiant) > 1 ORDER BY id_etudiant ASC;
SELECT COUNT(DISTINCT id_etudiant) FROM lpecom_examens;

-- Monde 6-3
-- Calculer la moyenne de l'examen portant l'id 45.
SELECT note, matiere, id_examen FROM `lpecom_examens` WHERE id_examen = 45;
SELECT AVG(note) FROM `lpecom_examens` WHERE id_examen = 45;

-- Monde 6-4
-- Afficher la meilleure note de l'examen portant l'id 87.
SELECT * FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens`;
SELECT note FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens` WHERE id_examen = 87 ORDER BY note DESC LIMIT 1;

-- Monde 6-5
-- Afficher l'id des étudiants qui ont eu plus de 11 à l'examen 45 ou plus de 12 à l'examen 87.
SELECT * FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens`;
SELECT * FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens` WHERE (id_examen = 45 && note > 11) || (id_examen = 87 && note > 12);
SELECT DISTINCT id_etudiant FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens` WHERE (id_examen = 45 && note > 11) || (id_examen = 87 && note > 12);

-- Monde 6-6
-- Afficher tous les enregistrement de la table lpecom_examens avec en plus, si c'est possible, le prénom et le nom de l'étudiant.
SELECT * FROM `lpecom_examens` NATURAL JOIN `lpecom_etudiants`;
SELECT * FROM lpecom_examens as exam LEFT JOIN lpecom_etudiants as etu ON exam.id_etudiant = etu.id_etudiant;

-- Monde 6-7
-- Afficher les enregistrements de la table lpecom_examens avec le prénom et le nom de l'étudiant, uniquement quand les étudiants sont présents dans la table lpecom_etudiants.
SELECT DISTINCT nom, prenom FROM `lpecom_etudiants` JOIN `lpecom_examens`;

-- Monde 6-8
-- Afficher uniquement le nom et le prénom de l'étudiant avec l'id 30 avec la moyenne de ses deux examens dans une colonne moyenne.
SELECT AVG(note) AS moyenne, nom, prenom FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens` WHERE id_etudiant = 30;

-- Monde 6-9
-- Afficher les 3 meilleures examens, du meilleur au moins bon, avec le prénom et le nom de l'étudiant associé.
SELECT DISTINCT * FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens`;
SELECT nom, prenom, matiere, note FROM `lpecom_etudiants` NATURAL JOIN `lpecom_examens` ORDER BY note DESC LIMIT 3;

-- Monde 7

-- Monde 7-1
-- Listez l’ensemble des jeux enregistré dans la table « games ».
SELECT * FROM games;

-- Monde 7-2
-- Listez l’ensemble de jeux sans les doublons.
SELECT DISTINCT g_name FROM games ORDER BY g_name ASC;

-- Monde 7-3
-- Affichez le nom, le mode de jeu, la date de sortie et le pegi de tous les jeux triés par ordre alphabétique.
SELECT g_name, g_mode, g_published_at, g_pegi FROM games ORDER BY g_name ASC;
SELECT DISTINCT g_name, g_mode, g_published_at, g_pegi FROM games ORDER BY g_name ASC;

-- Monde 7-4
-- Affichez le nom, le mode de jeu, la date de sortie et le pegi des 10 jeux les plus récents.
SELECT g_name, g_mode, g_published_at, g_pegi FROM games ORDER BY g_published_at DESC LIMIT 10;

-- Monde 7-5
-- Affichez le nom et le mode de jeu des jeux qui se jouent uniquement dans un seul mode.
SELECT g_name, g_mode FROM games WHERE g_mode = "Solo" || g_mode = "Multijoueur";

-- Monde 7-6
-- Affichez le nom et la date de sortie des jeux sortie entre 2015 et 2020 triés par année
SELECT DATE_FORMAT(g_published_at, "%Y"), g_name FROM games WHERE g_published_at BETWEEN '2015-01-01' AND '2020-12-31' ORDER BY g_published_at ASC;
SELECT g_published_at, g_name FROM games WHERE g_published_at BETWEEN '2015-01-01' AND '2020-12-31' ORDER BY g_published_at ASC;

-- Monde 7-7
-- Affichez le nom et le mode de jeu des jeux qui peuvent se jouer en mode solo
SELECT * FROM games;
SELECT g_name, g_mode FROM games WHERE g_mode = 'Solo' || g_mode = 'Solo / Multijoueur' || g_mode = 'Solo / Coopératif';
SELECT g_name, g_mode FROM games WHERE g_mode != 'Multijoueur';

-- Monde 7-8
-- Affichez les informations des différents jeux "witcher" disponibles.
SELECT * FROM games;
SELECT * FROM games WHERE g_name LIKE "The W%";

-- Monde 7-9
-- Affichez les informations de tous les jeux sauf les jeux "Halo".
SELECT * FROM games WHERE g_name NOT LIKE "Halo%";

-- Monde 7-10
-- Lister les jeux sortis en 2012, 2016 et 2020.
SELECT * FROM games
WHERE g_published_at LIKE '2012%' OR g_published_at LIKE '2016%' OR g_published_at LIKE '2020%'
ORDER BY g_published_at ASC;

-- Monde 7-11
-- Affichez le nom de jeu et le studio de tous les jeux. Utiliser une jointure naturelle.
SELECT g_name, s_name FROM games NATURAL JOIN studios;

-- Monde 7-12
-- Affichez le nom de jeu, le studio, la nationalité de la société des jeux disponibles. Utiliser une jointure avec join
SELECT g_name, s_name, s_nationality FROM games NATURAL JOIN studios;

-- Monde 7-13
-- Affichez le nom et le mode de jeu des jeux console grand public triés par pegi croissant
SELECT g_name, g_mode, g_pegi, p_name FROM games NATURAL JOIN platforms ORDER BY g_pegi ASC;

-- Monde 7-14
-- Affichez le nom de jeu et les plateformes de tous les jeux triés par ordre alphabétique
SELECT g_name, p_name FROM games NATURAL JOIN platforms ORDER BY g_name ASC;

-- Monde 7-15
-- Calculez le nombre total de jeux.
SELECT COUNT(*) FROM games;

-- Monde 7-16
-- Affichez le nombre de jeux uniques.
SELECT DISTINCT COUNT(*) FROM games;

-- Monde 7-17
-- Calculez le nombre de jeux par studio.
SELECT s_name, COUNT(s_id) AS nb_jeux_par_studio FROM games NATURAL JOIN studios GROUP BY s_name;

-- Monde 7-18
-- Calculez le nombre de jeux par studio et par plateforme.
SELECT s_name, p_name, COUNT(g_id) FROM games NATURAL JOIN studios NATURAL JOIN platforms NATURAL JOIN games_platforms GROUP BY s_name, p_name;

-- Monde 7-19
-- Affichez les jeux disponibles sur au moins 4 plateformes
-- SELECT g_name, p_name, COUNT(g_name) AS nb_jeux_plateformes FROM games NATURAL JOIN platforms NATURAL JOIN games_platforms GROUP BY g_name, p_name HAVING nb_jeux_plateformes >= 4;
SELECT g_name, COUNT(g_id) AS nb FROM games NATURAL JOIN games_platforms GROUP BY g_name HAVING nb >= 4;

-- Monde 7-20
-- Mettre le mode de jeu de Cyberpunk 2077 en solo
UPDATE games SET g_mode = 'Solo' WHERE g_mode = "Solo / Multijoueur" AND g_name = "Cyberpunk 2077";

-- Monde 7-21
-- CREATE : “insert into” :
-- Dans la base de données ` videogames `, enregistrer 2 jeux que vous souhaitez :
INSERT INTO studios (s_name, s_nationality) VALUES('Gust', 'Japon');

INSERT INTO games (g_mode, g_name, g_pegi, g_published_at, s_id) VALUES('Solo', 'Edens Zero', '16', '2025-07-15', "22");
INSERT INTO games (g_mode, g_name, g_pegi, g_published_at, s_id) VALUES('Solo', 'FairyTail', '12', '2020-07-31', "22");

-- id Plateforme PC : 4
-- id Plateforme PlayStation 5 : 8
-- id Plateforme STEAM : 10
-- id Plateforme XBOX Series X/S : 15
-- id Plateforme Nintendo Switch : 3
-- id Plateforme PlayStation 4 : 7

-- id Genre RPG : 5

INSERT INTO games_platforms (p_id, g_id) VALUES(4, 50);
INSERT INTO games_platforms (p_id, g_id) VALUES(8, 50);
INSERT INTO games_platforms (p_id, g_id) VALUES(10, 50);
INSERT INTO games_platforms (p_id, g_id) VALUES(15, 50);

INSERT INTO games_platforms (p_id, g_id) VALUES(4, 51);
INSERT INTO games_platforms (p_id, g_id) VALUES(10, 51);
INSERT INTO games_platforms (p_id, g_id) VALUES(3, 51);
INSERT INTO games_platforms (p_id, g_id) VALUES(7, 51);

INSERT INTO games_genres (genre_id, g_id) VALUES(5, 50);
INSERT INTO games_genres (genre_id, g_id) VALUES(5, 51);

-- Monde 7-22
-- READ : "Select" :
-- A l’aide d’une requête, afficher les infos suivantes des “ 2 nouveaux jeux enregistrés ” :
-- Utilisation d’ALIAS obligatoire pour avoir le même nom des champs ci-dessous :
-- id
-- nom
-- genre
-- mode de jeu
-- pegi
-- nom du studio
-- plateforme(s)
-- Pensez à utiliser la fonction `GROUP_CONCAT` si vous deviez regrouper des choses, ex. : "PC, Playstation 4, Xbox ..."
-- SELECT
-- games.g_id AS 'id',
-- games.g_name AS 'nom',
-- genres.genre_name AS 'genre',
-- games.g_mode AS 'mode de jeu',
-- games.g_pegi AS 'pegi',
-- studios.s_name AS 'nom du studio',
-- GROUP_CONCAT(platforms.p_name SEPARATOR ', ')
-- FROM games
-- NATURAL JOIN genres
-- JOIN games_genres ON games_genres.genre_id = genres.genre_id
-- NATURAL JOIN platforms
-- NATURAL JOIN studios
-- JOIN games_platforms ON platforms.p_id = games_platforms.p_id
-- WHERE games.g_id = 50;
SELECT
g_id AS 'id',
g_name AS 'nom',
genre_name AS 'genre',
g_mode AS 'mode de jeu',
g_pegi AS 'pegi',
s_name AS 'nom du studio',
GROUP_CONCAT(p_name SEPARATOR ', ') AS 'platefomes'
FROM games 
NATURAL JOIN games_genres
NATURAL JOIN games_platforms
NATURAL JOIN platforms
NATURAL JOIN genres
NATURAL JOIN studios
WHERE games.g_id = 50
GROUP BY g_id, genre_name;

SELECT
g_id AS 'id',
g_name AS 'nom',
genre_name AS 'genre',
g_mode AS 'mode de jeu',
g_pegi AS 'pegi',
s_name AS 'nom du studio',
GROUP_CONCAT(p_name SEPARATOR ', ') AS 'platefomes'
FROM games 
NATURAL JOIN games_genres
NATURAL JOIN games_platforms
NATURAL JOIN platforms
NATURAL JOIN genres
NATURAL JOIN studios
WHERE games.g_id = 51
GROUP BY g_id, genre_name;

-- Monde 7-23
-- UPDATE "mise à jour -> update"
-- Changer le genre du jeu : “ Naruto Shippuden Ultimate Ninja Storm 2 ” avec l’ID 39 , car il s’agit d’un jeu de “ Combat ”

-- id genre combat : 13
-- id jeu Naruto Shippuden Ultimate Ninja Storm 2 : 39

UPDATE games_genres SET genre_id = 13 WHERE g_id = 39 && genre_id = 14;

-- Changer le nom du jeu “ Counter-Strike : Global Offensive ” par “ Counter-Strike GO ”
UPDATE games SET g_name = "Counter-Strike GO" WHERE g_name = "Counter-Strike : Global Offensive";

-- Monde 7-24
-- DELETE "delete -> Supprimmer"
-- Supprimer le jeu “ Naruto Shippuden Ultimate Ninja Storm 2 ” dont l’ID est 30.

-- id jeu Naruto Shippuden Ultimate Ninja Storm 2 : 30
-- DELETE FROM `table` WHERE condition

DELETE FROM games_platforms WHERE g_id = 30;
DELETE FROM games_genres WHERE g_id = 30;
DELETE FROM games WHERE g_id = 30;

-- Supprimer le jeu “ Red Dead Redemption ” dont l’ID est 40.

DELETE FROM games_platforms WHERE g_id = 40;
DELETE FROM games_genres WHERE g_id = 40;
DELETE FROM games WHERE g_id = 40;

-- BONUS !!!! :) :) :) :)
-- Trouver le meurtrier de SQL City

SELECT * FROM crime_scene_report
WHERE city = "SQL City"
AND type = "murder";

-- REDACTED REDACTED REDACTED
-- Someone killed the guard! He took an arrow to the knee!
-- Security footage shows that there were 2 witnesses. 
-- The first witness lives at the last house on "Northwestern Dr".
-- The second witness, named Annabel, lives somewhere on "Franklin Ave".

SELECT * FROM person
WHERE id = 16371;

-- Temoin 1 :
-- Annabel Miller :
-- id = 16371
-- address_street_name = Franklin Ave
-- address_number = 103
-- id permis de conduire : 490173

SELECT * FROM interview
WHERE person_id = 16371;

-- Annabel Miller :
-- I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th 2018.

SELECT * FROM drivers_license WHERE id = 490173;

-- Annabel Miller :
-- Age : 35 ans
-- Taille : 1m65
-- Couleur de yeux : verts
-- Couleur de cheveux : marron
-- Genre : fille
-- Plaque d'immatriculation : 23AM98
-- Marque voiture : TOYOTA
-- Model de voiture : Yaris

SELECT * FROM get_fit_now_member
WHERE person_id = 16371;

-- Annabel Miller :
-- A commencée à travailler le 08 / 02 / 2016
-- Statut : Gold
-- id membre : 90081

SELECT * FROM get_fit_now_check_in
WHERE check_in_date = 20180109
AND membership_id = 90081;

-- Le 9 Janvier 2018, Annabel Miller était à la salle de Gym entre 16:00 et 17:00. D'après son interview, elle aurait reconnu le merutrier à ce moment là.

-- Hyothèses :

-- Suspect numero 1 :
-- nom : Jeremy Bowers
--  person_id = 67318
-- membership_id : 48Z55
-- check_in_date : 20180209
-- check_in_time : 15:30
-- check_out_time : 17:00

-- Suspect numéro 2 :
-- nom : Joe Germuska
-- membership_id : 48Z7A
-- check_in_date : 20180209
-- check_in_time : 16:00
-- check_out_time : 17:30

-- Jeremy Bowers c'est le tueur à gage !!!! :) :) :) :)

-- Son témoignage :

-- I was hired by a woman with a lot of money.
-- I don't know her name but I know she's around 5'5" (65") or 5'7" (67").
-- She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.

-- La commanditaire, c'est : Miranda Priestly !!!! :) :) :) :)