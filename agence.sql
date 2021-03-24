
CREATE TABLE Candidates ( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,first_name VARCHAR(30),
 last_name VARCHAR(30), birthday DATE, salary INT, portfolio VARCHAR(255), github VARCHAR(255) );

 INSERT INTO Candidates (first_name, last_name, birthday, salary, portfolio, github)
 VALUES
 ('Véronique', 'Fabien', 01/01/1995, 3500, 'Veroniqueportfolio', 'Veronique.github.io'),
 ('Steeven', 'Vicotr', 01/03/1992, 3500, 'Steevenportfolio', 'Steeven.github.io'),
 ('Marc', 'Jilles', 01/02/1994, 3200, 'Marcportfolio', 'Marc.github.io'),
 ('Nour', 'Pantier', 01/02/1993, 3000, 'Nourportfolio', 'Nour.github.io'),
 ('Sophie', 'Alexis',  01/02/1994, 3000, 'Nourportfolio', 'Nour.github.io');


  CREATE TABLE Languages
( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,name VARCHAR(30), candidate_id INT,
 CONSTRAINT FOREIGN KEY (candidate_id) REFERENCES Candidates(id) );


INSERT INTO Languages (name, candidate_id)
 VALUES
 ('English', 1),
 ('Spanish', 4),
 ('French', 1),
 ('Spanish', 3),
 ('English', 5),
 ('French', 2),
 ('English', 2),
 ('French', 5);
 
   
   CREATE TABLE Programming
( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,name VARCHAR(255), candidate_id INT,
 CONSTRAINT FOREIGN KEY (candidate_id) REFERENCES Candidates(id) );

 INSERT INTO Programming (name, candidate_id)
 VALUES
 ('React', 1),
 ('Express', 1),
 ('React', 3),
 ('Express', 5),
 ('React', 4),
 ('React', 2),
 ('Express', 4),
 ('React', 5);