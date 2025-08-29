USE Hospital;

CREATE TABLE Nurse(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    ward_id INT NULL
);

CREATE TABLE Ward(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    nurse_id INT NULL
);

CREATE TABLE Drug(
    code INT PRIMARY KEY,
    dosage INT
);

CREATE TABLE Patient(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dateOfBirth DATE,
    ward_id INT,
    consultant_id INT
);

CREATE TABLE Consultant(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Drug_brand(
    code INT NOT NULL,
    brand VARCHAR(50) NOT NULL,
    CONSTRAINT Pk3 PRIMARY KEY(code, brand)
);

CREATE TABLE ConsultantExamine(
    patient_id INT NOT NULL,
    consultant_id INT NOT NULL,
    CONSTRAINT Pk2 PRIMARY KEY(patient_id, consultant_id)
);

CREATE TABLE DrugRecords(
    nurse_num INT,
    drug_code INT NOT NULL,
    dTime TIME NOT NULL,
    dDate DATE NOT NULL,
    dosage INT,
    patient_id INT,
    CONSTRAINT Pk1 PRIMARY KEY(drug_code, dDate, dTime, patient_id)
);

-- Foreign Keys
ALTER TABLE Ward
ADD CONSTRAINT fk1 FOREIGN KEY(nurse_id) REFERENCES Nurse(id);

ALTER TABLE Nurse 
ADD CONSTRAINT fk2 FOREIGN KEY(ward_id) REFERENCES Ward(id);

ALTER TABLE DrugRecords
ADD CONSTRAINT fk3 FOREIGN KEY(nurse_num) REFERENCES Nurse(id); 

ALTER TABLE Patient
ADD CONSTRAINT fk4 FOREIGN KEY(ward_id) REFERENCES Ward(id); 

ALTER TABLE DrugRecords
ADD CONSTRAINT fk5 FOREIGN KEY(patient_id) REFERENCES Patient(id); 

ALTER TABLE DrugRecords
ADD CONSTRAINT fk6 FOREIGN KEY(drug_code) REFERENCES Drug(code); 

ALTER TABLE Drug_brand
ADD CONSTRAINT fk7 FOREIGN KEY(code) REFERENCES Drug(code); 

ALTER TABLE Patient
ADD CONSTRAINT fk8 FOREIGN KEY(consultant_id) REFERENCES Consultant(id);

ALTER TABLE ConsultantExamine
ADD CONSTRAINT fk9 FOREIGN KEY(patient_id) REFERENCES Patient(id); 

ALTER TABLE ConsultantExamine
ADD CONSTRAINT fk10 FOREIGN KEY(consultant_id) REFERENCES Consultant(id);
