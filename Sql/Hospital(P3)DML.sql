-- =========================
-- Nurse
-- =========================
INSERT INTO Nurse VALUES (1, 'Nurse A', 'Cairo', NULL);
INSERT INTO Nurse VALUES (2, 'Nurse B', 'Giza', NULL);
INSERT INTO Nurse VALUES (3, 'Nurse C', 'Alexandria', NULL);
INSERT INTO Nurse VALUES (4, 'Nurse D', 'Luxor', NULL);
INSERT INTO Nurse VALUES (5, 'Nurse E', 'Aswan', NULL);

-- =========================
-- Ward
-- =========================
INSERT INTO Ward VALUES (1, 'Ward 1', 1);
INSERT INTO Ward VALUES (2, 'Ward 2', 2);
INSERT INTO Ward VALUES (3, 'Ward 3', 3);
INSERT INTO Ward VALUES (4, 'Ward 4', 4);
INSERT INTO Ward VALUES (5, 'Ward 5', 5);

-- Update Nurses with ward assignment
UPDATE Nurse SET ward_id = 1 WHERE id = 1;
UPDATE Nurse SET ward_id = 2 WHERE id = 2;
UPDATE Nurse SET ward_id = 3 WHERE id = 3;
UPDATE Nurse SET ward_id = 4 WHERE id = 4;
UPDATE Nurse SET ward_id = 5 WHERE id = 5;

-- =========================
-- Consultant
-- =========================
INSERT INTO Consultant VALUES (1, 'Dr. Ali');
INSERT INTO Consultant VALUES (2, 'Dr. Sara');
INSERT INTO Consultant VALUES (3, 'Dr. Omar');
INSERT INTO Consultant VALUES (4, 'Dr. Mona');
INSERT INTO Consultant VALUES (5, 'Dr. Karim');

-- =========================
-- Patient
-- =========================
INSERT INTO Patient VALUES (1, 'Patient One', '2000-01-01', 1, 1);
INSERT INTO Patient VALUES (2, 'Patient Two', '1998-02-15', 2, 2);
INSERT INTO Patient VALUES (3, 'Patient Three', '1995-03-20', 3, 3);
INSERT INTO Patient VALUES (4, 'Patient Four', '1988-04-10', 4, 4);
INSERT INTO Patient VALUES (5, 'Patient Five', '1992-05-25', 5, 5);

-- =========================
-- Drug
-- =========================
INSERT INTO Drug VALUES (101, 10);
INSERT INTO Drug VALUES (102, 20);
INSERT INTO Drug VALUES (103, 30);
INSERT INTO Drug VALUES (104, 40);
INSERT INTO Drug VALUES (105, 50);

-- =========================
-- Drug_brand
-- =========================
INSERT INTO Drug_brand VALUES (101, 'Panadol');
INSERT INTO Drug_brand VALUES (102, 'Brufen');
INSERT INTO Drug_brand VALUES (103, 'Augmentin');
INSERT INTO Drug_brand VALUES (104, 'Cataflam');
INSERT INTO Drug_brand VALUES (105, 'Aspirin');

-- =========================
-- ConsultantExamine
-- =========================
INSERT INTO ConsultantExamine VALUES (1, 1);
INSERT INTO ConsultantExamine VALUES (2, 2);
INSERT INTO ConsultantExamine VALUES (3, 3);
INSERT INTO ConsultantExamine VALUES (4, 4);
INSERT INTO ConsultantExamine VALUES (5, 5);

-- =========================
-- DrugRecords
-- =========================
INSERT INTO DrugRecords VALUES (1, 101, '08:00:00', '2025-08-01', 10, 1);
INSERT INTO DrugRecords VALUES (2, 102, '09:00:00', '2025-08-01', 20, 2);
INSERT INTO DrugRecords VALUES (3, 103, '10:00:00', '2025-08-01', 30, 3);
INSERT INTO DrugRecords VALUES (4, 104, '11:00:00', '2025-08-01', 40, 4);
INSERT INTO DrugRecords VALUES (5, 105, '12:00:00', '2025-08-01', 50, 5);
