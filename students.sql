-- CREATE TABLE school (id INT, name CHAR(20), City CHAR (30), PRIMARY KEY (id);
-- alter table school rename to  students;
-- UPDATE students
-- SET colonne_1 = 'id INT PRIMARY KEY NOT NULL',
-- 	colonne_2 = 'name CHAR(30)',
--     colonne_3 = 'city CHAR(30)';

--     INSERT INTO students VALUES ('Véronique', 'Paris');

 CREATE TABLE students
( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,,name VARCHAR(30),city VARCHAR(30));

INSERT INTO students (name, city)
 VALUES
 ('Véronique', 'Paris'),
 ('Steeven', 'Lyon'),
 ('Marc', 'Marseille'),
 ('Nour', 'Lyon'),
 ('Romain', 'Paris'),
 ('Sophie', 'Paris');

 CREATE TABLE languages
( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,name VARCHAR(30) );

INSERT INTO languages (name)
 VALUES
 ('French'),
 ('English'),
 ('German'),
 ('Spanish'),
 ('Mandarin');
 
