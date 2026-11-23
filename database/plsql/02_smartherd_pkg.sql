-- ============================================================================
-- Name: Aphrodis Senga
-- Student ID: 20251SEN137
-- Group: Group I
-- Project: SmartHerd
-- File: database/plsql/02_smartherd_pkg.sql
-- ============================================================================

CREATE OR REPLACE PACKAGE smartherd_mgmt_pkg AS
    PROCEDURE record_milk (
        p_livestock_id   IN milk_production.livestock_id%TYPE,
        p_milking_date   IN milk_production.milking_date%TYPE,
        p_morning_liters IN milk_production.morning_liters%TYPE,
        p_evening_liters IN milk_production.evening_liters%TYPE,
        p_quality_grade  IN milk_production.quality_grade%TYPE DEFAULT 'GRADE_A'
    );

    FUNCTION farm_animal_count (
        p_farm_id IN farms.farm_id%TYPE
    ) RETURN NUMBER;
END smartherd_mgmt_pkg;
/

CREATE OR REPLACE PACKAGE BODY smartherd_mgmt_pkg AS
    PROCEDURE record_milk (
        p_livestock_id   IN milk_production.livestock_id%TYPE,
        p_milking_date   IN milk_production.milking_date%TYPE,
        p_morning_liters IN milk_production.morning_liters%TYPE,
        p_evening_liters IN milk_production.evening_liters%TYPE,
        p_quality_grade  IN milk_production.quality_grade%TYPE DEFAULT 'GRADE_A'
    ) IS
    BEGIN
        INSERT INTO milk_production (
            livestock_id, milking_date, morning_liters, evening_liters, quality_grade
        ) VALUES (
            p_livestock_id, TRUNC(p_milking_date), p_morning_liters, p_evening_liters, p_quality_grade
        );
        COMMIT;
    END record_milk;

    FUNCTION farm_animal_count (
        p_farm_id IN farms.farm_id%TYPE
    ) RETURN NUMBER IS
        v_cnt NUMBER := 0;
    BEGIN
        SELECT COUNT(*)
          INTO v_cnt
          FROM livestock
         WHERE farm_id = p_farm_id;
        RETURN v_cnt;
    END farm_animal_count;
END smartherd_mgmt_pkg;
/