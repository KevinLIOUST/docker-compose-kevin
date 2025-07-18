-- Monde 1

-- Monde 1-1
CREATE DATABASE languages;

-- Monde 1-2
CREATE DATABASE webdevelopment CHARACTER SET utf8;

-- Monde 1-3
CREATE DATABASE IF NOT EXISTS frameworks CHARACTER SET utf8;

-- Monde 1-4
CREATE DATABASE IF NOT EXISTS languages CHARACTER SET utf8;

-- Monde 1-5
DROP DATABASE languages;

-- Monde 1-6
DROP DATABASE IF EXISTS frameworks;

-- Monde 1-7
DROP DATABASE IF EXISTS languages;

-- Monde 1-8

-- Selon moi, c'est normal de vérifier avant la création ou la suppression de la base de données si elle existe déjà ou pas, pour éviter de la récréer.

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
SELECT titre, prix FROM `lpecom_livres` WHERE prix >= 20 AND prix <= 22 ORDER BY titre ASC;

-- Monde 5-6
SELECT titre FROM `lpecom_livres` WHERE isbn_10 != 2092589547 ORDER BY titre ASC;

-- Monde 6

-- Monde 6-1
-- Afficher l'id des étudiants qui ont participés à au moins un examen.
SELECT TOP 3 id FROM `lpecom_examens`;
SELECT COUNT(id_etudiant) AS nbr_doublon, id_etudiant, matiere FROM `lpecom_examens` GROUP BY id_etudiant, matiere HAVING COUNT(id_etudiant) > 1 ORDER BY matiere;

-- Monde 6-2

-- Monde 6-3

-- Monde 6-4

-- Monde 6-5

-- Monde 6-6

-- Monde 6-7

-- Monde 6-8

-- Monde 6-9