-- ============================================================================
-- Name: Aphrodis Senga
-- Student ID: 20251SEN137
-- Group: Group I
-- Project: SmartHerd
-- File: database/plsql/01_triggers_and_functions.sql
-- ============================================================================

-- 1. Trigger: When a vet record is added, set livestock health_status to 'TREATED'
CREATE OR REPLACE TRIGGER trg_vet_update_livestock_status
AFTER INSERT ON vet_records
FOR EACH ROW
BEGIN
    UPDATE livestock
       SET health_status = 'TREATED'
     WHERE livestock_id = :NEW.livestock_id
       AND health_status <> 'QUARANTINE';
END;
/

-- 2. Function: Calculate total milk (morning + evening) for a given livestock_id
CREATE OR REPLACE FUNCTION fn_total_milk_liters (
    p_livestock_id IN livestock.livestock_id%TYPE
) RETURN NUMBER
IS
    v_total NUMBER(10,2) := 0;
BEGIN
    SELECT NVL(SUM(NVL(morning_liters, 0) + NVL(evening_liters, 0)), 0)
      INTO v_total
      FROM milk_production
     WHERE livestock_id = p_livestock_id;

    RETURN v_total;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END fn_total_milk_liters;
/