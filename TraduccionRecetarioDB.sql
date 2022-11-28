-- TABLE
CREATE TABLE cooking_steps(
    id INTEGER PRIMARY KEY,
  	recipe_id INTEGER NOT NULL REFERENCES recipes (id),
  	step_number INTEGER NOT NULL, 
  	description TEXT
);
CREATE TABLE ingredients (
    id INTEGER PRIMARY KEY,
    recipe_id INTEGER NOT NULL REFERENCES recipes (id),
	name TEXT NOT NULL,
  	quantity decimal NOT NULL,
  	unit_id INTEGER REFERENCES ingredient_units (id)
  	
);
CREATE TABLE ingredient_units (
    id INTEGER PRIMARY KEY,
	name TEXT NOT NULL
);
CREATE TABLE recipes (
    id INTEGER PRIMARY KEY,
	name TEXT NOT NULL,
    portions INTEGER NOT NULL,
    prep_time INTEGER,
    prep_time_unit TEXT,
    cook_time INTEGER,
  	cook_time_unit TEXT,
    calories INTERGER
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
