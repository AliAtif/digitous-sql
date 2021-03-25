-- CREATE TABLE school (id INT, name CHAR(20), City CHAR (30), PRIMARY KEY (id);
-- alter table school rename to  students;
-- UPDATE students
-- SET colonne_1 = 'id INT PRIMARY KEY NOT NULL',
-- 	colonne_2 = 'name CHAR(30)',
--     colonne_3 = 'city CHAR(30)';

--     INSERT INTO students VALUES ('Véronique', 'Paris');

 CREATE TABLE students
( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,name VARCHAR(30),city VARCHAR(30));

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
 

 CREATE TABLE favorites
( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,class VARCHAR(30),sport VARCHAR(30), student_id INt);

INSERT INTO favorites (class, sport, student_id) VALUES 
	("Maths", "Cricket", 2),
	("Music", "Hip-hop", 6),
	("Arts", "Boxing", 1),
	("Literature", "Tennis", 3),
	("Computer-science", "Tennis", 5),
	("Arts", "Baseball", 4);

    CREATE TABLE students_languages (id INT PRIMARY KEY AUTO_INCREMENT, student_id INT, language_id INT);

    INSERT INTO students_languages (student_id, language_id) VALUES 
	(1, 1),
	(1, 2),
	(2,1),
	(2,3),
	(3,1),
	(4,1),
	(4,2),
	(4,4),
	(4,5),
	(5,1),
	(5,5),
	(6,1),
	(6,2),
	(6,3);


    -- Rappport lvl 1
-- 1. Récupérer toutes les colonnes de l’étudiant.e avec l’ID 3
SELECT * FROM students WHERE id = 3;

-- 2. Récupérer toutes les colonnes l’étudiant.e avec l’ID 6
SELECT * FROM students WHERE id = 6;

-- 3. Récupérer le nom et la ville de l’étudiant.e avec l’ID 1
SELECT name, city FROM students WHERE id = 1;

-- 4. Récupérer le nom de l’étudiant.e avec l’ID 2
SELECT name FROM students WHERE id = 2;

-- 5. Récupérer toutes les colonnes des étudiant.e.s de la ville de Paris
SELECT * FROM students WHERE city = 'Paris';

-- 6. Récupérer les noms des étudiant.es de la ville de Lyon
SELECT name FROM students WHERE city = 'Lyon';



--  Rapport lvl 2
-- 1. Pour l’étudiant.e d’ID 5, récupérer toutes les colonnes sur l’étudiant.e et ses activités favorites
SELECT * FROM students INNER JOIN favorites ON students.id = favorites.student_id WHERE students.id = 5;

-- 2. Pour l’étudiant.e d’ID 4, récupérer son nom et son sport préféré
SELECT name, sport FROM students INNER JOIN favorites ON students.id = favorites.student_id WHERE students.id = 4;
-- autre façon @Yeshi
SELECT students.name, favorites.sport FROM students, favorites WHERE students.id = 4 AND favorites.student_id = 4;

-- 3. Pour l’étudiant.e d’ID 1, récupérer son nom et sa matière préférée
SELECT name, class FROM students INNER JOIN favorites ON students.id = favorites.student_id WHERE students.id = 1;

-- 4. Récupérer toutes les colonnes de l’étudiant.e qui aime la musique
SELECT * FROM students INNER JOIN favorites ON students.id = favorites.student_id WHERE favorites.class = 'Music';

-- 5. Récupérer le nom des étudiant.e.s qui aime le tennis
SELECT name FROM students INNER JOIN favorites ON students.id = favorites.student_id WHERE favorites.sport = 'Tennis';

-- 6. Récupérer le nom des étudiant.e.s qui aime les matières artistiques
SELECT name FROM students INNER JOIN favorites ON students.id = favorites.student_id WHERE favorites.class = 'Arts';

-- 7. Récupérer le nombre d’étudiant.e.s de la ville de Paris
SELECT students.id, name, count(*) as languagesCount FROM students INNER JOIN students_languages ON 
students_languages.student_id = students.id group by students.id;


-- Rapport lvl 3
SELECT name FROM students WHERE name LIKE '%e%'

SELECT name, sport FROM students JOIN favorites ON students.id = favorites.student_id WHERE name LIKE '%e%'

SELECT name, class, city FROM students JOIN favorites ON students.id = favorites.student_id WHERE paris LIKE '%i%'
