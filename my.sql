

CREATE TABLE IF NOT EXISTS animal_type (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	type VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS animals (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	animal_id VARCHAR(20) NOT NULL,
	age_upon_outcome VARCHAR(50),
	animal_type_id INTEGER NOT NULL,
	name VARCHAR(50),
	breed VARCHAR(50),
	color VARCHAR(50),
	date_of_birth DATE,
	FOREIGN KEY (animal_type_id) REFERENCES animal_type(id) ON DELETE RESTRICT,
    FOREIGN KEY (breed) REFERENCES animal_breed(breed_id) ON DELETE RESTRICT,
    FOREIGN KEY (color) REFERENCES animal_color(color_id) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS breeds (
	id text PRIMARY KEY,
	breed VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS animal_breed (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    animal_id INTEGER NOT NULL,
    breed_id INTEGER  NOT NULL,
    FOREIGN KEY(animal_id) REFERENCES animals(id) ON DELETE CASCADE,
    FOREIGN KEY(breed_id) REFERENCES breeds(id) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS colors (
	id text PRIMARY KEY,
	color VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS animal_color (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    animal_id INTEGER NOT NULL,
    color_id INTEGER  NOT NULL,
    FOREIGN KEY(animal_id) REFERENCES animals(id) ON DELETE CASCADE,
    FOREIGN KEY(color_id) REFERENCES colors(id) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS outcome_types (
    id INTEGER VARCHAR(50) PRIMARY KEY,
    type INTEGER VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS outcome_subtypes (
    id text PRIMARY KEY,
    subtype INTEGER VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS animal_outcome (
    animal_id INTEGER NOT NULL,
    month INTEGER,
    year INTEGER,
    subtype_id INTEGER,
    type_id INTEGER,
    FOREIGN KEY(animal_id) REFERENCES animals(id) ON DELETE CASCADE,
    FOREIGN KEY(subtype_id) REFERENCES outcome_subtypes(id) ON DELETE RESTRICT,
    FOREIGN KEY(type_id) REFERENCES outcome_types(id) ON DELETE RESTRICT
);

UPDATE New_animals
SET animal_type = 'Cat'
WHERE animal_type = 1;


INSERT INTO animal_type(type)
SELECT DISTINCT animal_type from New_animals
ORDER BY animal_type;

-- DELETE FROM animal_type
-- WHERE Id = 1;
--
-- UPDATE animal_type
-- SET id = 1
-- WHERE id = 2;

INSERT INTO breeds(id, breed)
SELECT DISTINCT breed, breed from New_animals
ORDER BY breed;



INSERT INTO colors(id, color)
SELECT DISTINCT color1, color1 from New_animals
ORDER BY color1;



INSERT INTO animal_breed('animal_id', 'breed_id')
SELECT animal_id, breed FROM New_animals;

INSERT INTO animal_color('animal_id', 'color_id')
SELECT animal_id, color1 FROM New_animals;


INSERT INTO outcome_subtypes(id, subtype)
SELECT DISTINCT outcome_subtype, outcome_subtype from New_animals
ORDER BY outcome_subtype;


INSERT INTO outcome_types(id, type)
SELECT DISTINCT outcome_type, outcome_type from New_animals
ORDER BY outcome_type;


INSERT INTO animal_outcome('animal_id', 'month', 'year', 'subtype_id', 'type_id')
SELECT animal_id, outcome_month, outcome_year, outcome_subtype, outcome_type FROM New_animals;


INSERT INTO animals('animal_id', 'age_upon_outcome', 'animal_type_id', 'name', 'breed', 'color', 'date_of_birth')
SELECT animal_id, age_upon_outcome, animal_type, name, breed, color1, date_of_birth FROM New_animals;


UPDATE breeds
SET breed = 'abyssinian7'
WHERE id = 'abyssinian';

SELECT *
from animals
join animal_type at2
where animal_id = 'A667848';
