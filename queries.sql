/* Add Queries in-line with the requirements */

SELECT * from animals where animal_name LIKE '%mon';

SELECT animal_name FROM animals WHERE date_of_birth >= '2016/01/01' AND date_of_birth <= '2019/12/31';

SELECT animal_name FROM animals WHERE neutered = 'true' AND escape_attempts < '3';

SELECT date_of_birth FROM animals WHERE animal_name IN ('Agumon', 'Pikachu') ;

SELECT animal_name, escape_attempts FROM animals WHERE weight_per_kg > 10.5; 

SELECT * FROM animals WHERE neutered = 'true';

SELECT * FROM animals WHERE animal_name != 'Gabumon';

SELECT * FROM animals WHERE weight_per_kg >= '10.4' AND weight_per_kg <= '17.3';


/* Transaction Update 1 */
UPDATE animals SET species = 'Unspecified'
ROLLBACK;


/* Transaction Update 2 set species name to 'digimon' */
UPDATE animals SET species = 'pokemon' WHERE species != 'digimon';

UPDATE animals SET species = 'digimon' WHERE species = NULL;
COMMIT;

/* Delete all records then rollback */
BEGIN;
DELETE * FROM animals;
ROLLBACK;

/* Transaction Update 3 update animals weight, create savepoint, change negative values for kg */
BEGIN;
DELETE FROM animals WHERE date_of_birth>'2022-01-01';
SAVEPOINT dateOfBirth;
UPDATE animals SET weight_per_kg=-1*weight_per_kg;
ROLLBACK TO dateOfBirth;
UPDATE animals SET weight_per_kg=-1*weight_per_kg WHERE weight_per_kg<0;
COMMIT; 

