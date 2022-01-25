
-- Create patients table
CREATE TABLE patients(
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 name VARCHAR(50),
 date_of_birth DATE
);


-- Create medical_histories table
CREATE TABLE medical_histories(
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 admitted_at TIMESTAMP,
 status VARCHAR
);