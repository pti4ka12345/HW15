-- CREATE TABLE breed_type (
-- 	id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
-- 	breed_type TEXT NOT NULL
-- -- );
--
-- --
-- CREATE TEMPORARY TABLE temp AS
-- SELECT *
-- FROM breed_type;
-- --
-- --
-- CREATE TABLE breed_type (
-- 	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
-- 	breed_type TEXT NOT NULL,
-- 	CONSTRAINT BREED_TYPE_PK PRIMARY KEY (id),
-- 	CONSTRAINT breed_type_FK FOREIGN KEY (breed_type) REFERENCES breed_type(id)
-- );
--
-- INSERT INTO breed_type
-- SELECT *
-- FROM temp;
--
-- DROP TABLE temp;

-- select DISTINCT (a.breed)
-- from animals a

ALTER TABLE New_animals
DROP COLUMN age_upon_outcome;



