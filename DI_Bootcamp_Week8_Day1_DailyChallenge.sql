--Exercice DailyChallenge 
		

	Actors Database
CREATE TABLE actors(
 actor_id SERIAL PRIMARY KEY,
 first_name VARCHAR (50) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 age DATE NOT NULL,
 number_oscars SMALLINT NOT NULL);

-- insert actors
INSERT INTO actors (first_name, last_name, age, number_oscars)
VALUES('Matt','Damon','08/10/1970', 5);

INSERT INTO actors (first_name, last_name, age, number_oscars)
VALUES('George','Clooney','06/05/1961', 2)

INSERT INTO actors (first_name, last_name, age, number_oscars)
VALUES('Brad','Pitt','18/12/1963', 2);

-- 1. Count how many actors are in the table.
SELECT COUNT(*)  FROM actors 

-- 2. Try to add a new actor with some blank fields. What do you think the outcome will be ?
INSERT INTO actors (first_name)
VALUES('AKOU');

-- return in result
-- ERROR: ERREUR:  une valeur NULL viole la contrainte NOT NULL de la colonne « last_name » dans la relation « actors »
-- DETAIL:  La ligne en échec contient (4, AKOU, null, null, null).
