-- Création de la base de données

CREATE DATABASE vetements CHARACTER SET utf8;

-- Création des tables dans la base de données

DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS vetements;
DROP TABLE IF EXISTS types;
DROP TABLE IF EXISTS genres;

CREATE TABLE types(
   type_id INT AUTO_INCREMENT,
   type_nom VARCHAR(15) NOT NULL,
   PRIMARY KEY(type_id)
);

CREATE TABLE genres(
   genre_id INT AUTO_INCREMENT,
   genre_nom VARCHAR(15) NOT NULL,
   PRIMARY KEY(genre_id)
);

CREATE TABLE vetements(
   vetement_id INT AUTO_INCREMENT,
   vetement_nom VARCHAR(50) NOT NULL,
   vetement_taille VARCHAR(5) NOT NULL,
   vetement_prix DECIMAL(15,2) NOT NULL,
   genre_id INT NOT NULL,
   type_id INT NOT NULL,
   PRIMARY KEY(vetement_id),
   FOREIGN KEY(genre_id) REFERENCES genres(genre_id),
   FOREIGN KEY(type_id) REFERENCES types(type_id)
);

CREATE TABLE images(
   image_id INT AUTO_INCREMENT,
   image_nom VARCHAR(50) NOT NULL,
   image_main INT NOT NULL,
   vetement_id INT NOT NULL,
   PRIMARY KEY(image_id),
   FOREIGN KEY(vetement_id) REFERENCES vetements(vetement_id)
);

-- CREATE TABLE vetements_have_images(
--    vetement_id INT,
--    image_id INT,
--    PRIMARY KEY(vetement_id, image_id),
--    FOREIGN KEY(vetement_id) REFERENCES vetements(vetement_id),
--    FOREIGN KEY(image_id) REFERENCES images(image_id)
-- );

-- Insertion des données

INSERT INTO types (type_nom) VALUES
  ('T-shirt'),
  ('Sweat à capuche'),
  ('Veste bomber'),
  ('Kimono'),
  ('Jogging'),
  ('Robe'),
  ('Jupe'),
  ('Chemise'),
  ('Sneakers'),
  ('Casquette'),
  ('Bonnet'),
  ('Manteau');

INSERT INTO genres (genre_nom) VALUES
  ('Homme'),
  ('Femme'),
  ('Mixte'),
  ('Alien');

INSERT INTO vetements (vetement_nom, vetement_taille, vetement_prix, genre_id, type_id) VALUES
  ('T-shirt Natsu Dragneel - Flamme', 'M', 19.90, 3, 1),
  ('Hoodie Akatsuki - Nuages rouges', 'L', 49.90, 3, 2),
  ('Veste Bomber - Bataillon d\"Exploration', 'M', 69.90, 1, 3),
  ('Kimono Streetwear - Neon Tokyo', 'One', 39.90, 3, 4),
  ('Jogging Pixel Hero', 'L', 34.90, 3, 5),
  ('Robe MagiTech - Circuit mystique', 'M', 59.90, 2, 6),
  ('Jupe Otaku Stars - Plissée', 'S', 29.90, 2, 7),
  ('Chemise Mecha Lines - futuriste', 'L', 39.90, 1, 8),
  ('Sneakers Portal Runner', '42', 79.90, 3, 9),
  ('Casquette Pixel Chibi', 'Adj', 14.90, 3, 10),
  ('Bonnet Glitch Logo', 'One', 12.90, 3, 11),
  ('Manteau Cape du Magus', 'XL', 99.00, 3, 12);

INSERT INTO images (image_nom, image_main, vetement_id) VALUES
  ('ts_natsu_fire_front.png', 1, 1),
  ('ts_natsu_fire_back.png', 0, 1),

  ('hoodie_akatsuki_front.png', 1, 2),
  ('hoodie_akatsuki_detail.png', 0, 2),

  ('bomber_scout_regiment_front.png', 1, 3),
  ('bomber_scout_regiment_back.png', 0, 3),

  ('kimono_neon_tokyo_front.png', 1, 4),
  ('kimono_neon_tokyo_back.png', 0, 4),

  ('jogging_pixel_hero_front.png', 1, 5),
  ('jogging_pixel_hero_detail.png', 0, 5),

  ('robe_magitech_front.png', 1, 6),
  ('robe_magitech_back.png', 0, 6),

  ('jupe_otaku_stars_front.png', 1, 7),
  ('jupe_otaku_stars_back.png', 0, 7),

  ('chemise_mecha_lines_front.png', 1, 8),
  ('chemise_mecha_lines_cuff.png', 0, 8),

  ('sneakers_portal_runner_side.png', 1, 9),
  ('sneakers_portal_runner_sole.png', 0, 9),

  ('cap_pixel_chibi_front.png', 1, 10),
  ('cap_pixel_chibi_side.png', 0, 10),

  ('beanie_glitch_logo.png', 1, 11),
  ('beanie_glitch_close.png', 0, 11),

  ('coat_cape_magus_front.png', 1, 12),
  ('coat_cape_magus_back.png', 0, 12);

-- INSERT INTO vetements_have_images (vetement_id, image_id) VALUES
--   (1, 1), (1, 2),
--   (2, 3), (2, 4),
--   (3, 5), (3, 6),
--   (4, 7), (4, 8),
--   (5, 9), (5, 10),
--   (6, 11), (6, 12),
--   (7, 13), (7, 14),
--   (8, 15), (8, 16),
--   (9, 17), (9, 18),
--   (10,19), (10,20),
--   (11,21), (11,22),
--   (12,23), (12,24);

-- SELECT * FROM
-- vetements.vetement_id,
-- vetements.vetement_nom,
-- vetements.vetement_taille,
-- vetements.vetement_prix,
-- genres.genre_id,
-- types.type_id,
-- JOIN genres ON genres.genre_id = vetements.genre_id
-- JOIN types ON types.type_id = vetements.type_id
-- JOIN vetements_have_images ON vetements_have_images.vetement_id = vetements.vetement_id
-- JOIN images ON images.image_id = vetements_have_images.image_id
-- WHERE images.image_main = 1;