
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
 constraint fk_patient foreign key(patient_id) references patients(id)
);


-- Create treatments table
CREATE TABLE treatments(
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 type VARCHAR(50),
 name DATE
);

-- Create invoice_items table
CREATE TABLE invoice_items (
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 unit_price decimal,
 quantity int,
 total_price decimal,
 invoice_id int,
 treatment_id int
 CONSTRAINT fk_invoices FOREIGN KEY(invoice_id) REFERENCES invoices(id),
 CONSTRAINT fk_treatment FOREIGN KEY(treament_id) REFERENCES treaments(id)
);

-- Create invoice_items table
CREATE TABLE invoices (
 id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 total_amount decimal,
 generated_at timestamp,
 payed_at timestamp,
 medical_history_id int,
 CONSTRAINT fk_medical_history FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id)
);

-- Create join table for medical_histories and treatments table
CREATE TABLE medical_histories_treaments_invoices (
    medical_history_id int,
    treament_id int,
    CONSTRAINT fk_medical_history FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id),
    CONSTRAINT fk_treament FOREIGN KEY(treament_id) REFERENCES treaments(id)
);
