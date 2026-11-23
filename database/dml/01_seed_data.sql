-- ============================================================================
-- Name: Aphrodis Senga
-- Student ID: 20251SEN137
-- Group: Group I
-- Project: SmartHerd
-- File: database/dml/01_seed_data.sql
-- ============================================================================

INSERT INTO farms (farm_name, location, owner_name)
VALUES ('Nyagatare Green Pastures', 'Nyagatare, Eastern Province', 'Aphrodis Senga');

INSERT INTO farms (farm_name, location, owner_name)
VALUES ('Gishwati Highland Dairy', 'Rubavu, Western Province', 'Jean Damascene');

INSERT INTO livestock (farm_id, tag_code, species, breed, birth_date, gender, health_status)
VALUES (1, 'SH-COW-001', 'Cattle', 'Friesian', DATE '2023-04-12', 'FEMALE', 'HEALTHY');

INSERT INTO livestock (farm_id, tag_code, species, breed, birth_date, gender, health_status)
VALUES (1, 'SH-COW-002', 'Cattle', 'Jersey', DATE '2022-11-05', 'FEMALE', 'TREATED');

INSERT INTO livestock (farm_id, tag_code, species, breed, birth_date, gender, health_status)
VALUES (2, 'SH-GOAT-001', 'Goat', 'Boer', DATE '2024-02-20', 'MALE', 'HEALTHY');

INSERT INTO vet_records (livestock_id, visit_date, diagnosis, treatment, vet_name, next_checkup)
VALUES (2, SYSDATE - 3, 'Mild Mastitis', 'Intramammary antibiotic course (5 days)', 'Dr. Uwimana Claire', SYSDATE + 7);

INSERT INTO vaccinations (livestock_id, vaccine_name, dose_ml, date_given, next_due_date, administered_by)
VALUES (1, 'Foot and Mouth Disease (FMD)', 2.50, SYSDATE - 30, SYSDATE + 150, 'Dr. Uwimana Claire');

INSERT INTO milk_production (livestock_id, milking_date, morning_liters, evening_liters, quality_grade)
VALUES (1, TRUNC(SYSDATE), 14.50, 11.20, 'GRADE_A');

COMMIT;
