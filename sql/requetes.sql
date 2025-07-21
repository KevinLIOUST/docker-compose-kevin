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
-- Affichez le nom, le mode de jeu, la date de sortie et le pegi de tous les jeux triés par ordre alphabétiques.
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

-- Monde 7-15

-- Monde 7-16

-- Monde 7-17

-- Monde 7-18

-- Monde 7-19