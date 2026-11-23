SET SERVEROUTPUT ON;

SELECT * FROM vw_herd_health_milk_summary;

BEGIN
    prc_print_farm_herd_report(1);
END;
/

SELECT * FROM audit_log;