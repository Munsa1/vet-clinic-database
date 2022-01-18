/* Create animals table */

CREATE TABLE animals (
    id integer PRIMARY KEY NOT NULL,
    animal_name varchar(100),
    date_of_birth date NOT NULL,
    escape_attempts integer,
    neutered boolean NOT NULL,
    weight_per_kg decimal NOT NULL
);

/* Alter animals table and add new column*/

ALTER TABLE animals ADD COLUMN species varchar;



