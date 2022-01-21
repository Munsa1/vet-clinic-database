/* Create animals table */

CREATE TABLE animals (
    id integer GENERATED ALWAYS ASPRIMARY KEY NOT NULL,
    animal_name varchar(100),
    date_of_birth date NOT NULL,
    escape_attempts integer,
    neutered boolean NOT NULL,
    weight_per_kg decimal NOT NULL
);

/* Alter animals table and add new column*/

ALTER TABLE animals ADD COLUMN species varchar;


/* Create owners table */
CREATE TABLE owners (
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 full_name VARCHAR(50),
 age INT
);

/* Create species table */
CREATE TABLE species (
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 name VARCHAR(50)
);

/* Modify primary key */


-- Alter Animals Table
ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_name FOREIGN KEY(species_id) REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_name2 FOREIGN KEY(owner_id) REFERENCES owners(id);


-- Create Vets Table
CREATE TABLE vets(
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 name VARCHAR(50),
 age INT,
 date_of_graduation DATE
);