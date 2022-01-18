

CREATE TABLE animals (
    id integer(1),
    animal_name varchar(100),
    date_of_birth date NOT NULL,
    escape_attempts integer,
    neutered boolean NOT NULL,
    weight_per_kg decimal NOT NULL
);

INSERT INTO animals (animal_name, date_of_birth, escape_attempts, neutered, weight_per_kg)
VALUES (Agumon,  02/02/2020, true, 10.23, 0);