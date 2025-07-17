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