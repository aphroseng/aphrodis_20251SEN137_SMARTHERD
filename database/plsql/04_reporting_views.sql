-- ============================================================================
-- Name: Aphrodis Senga
-- Student ID: 20251SEN137
-- Group: Group I
-- Project: SmartHerd
-- File: database/plsql/04_reporting_views.sql
-- ============================================================================

CREATE OR REPLACE VIEW vw_herd_health_milk_summary AS
SELECT f.farm_id,
       f.farm_name,
       f.location,
       l.livestock_id,
       l.tag_code,
       l.species,
       l.breed,
       l.health_status,
       fn_total_milk_liters(l.livestock_id) AS total_milk_liters,
       (SELECT COUNT(*)
          FROM vet_records vr
         WHERE vr.livestock_id = l.livestock_id) AS vet_visits_count
  FROM farms f
  JOIN livestock l
    ON f.farm_id = l.farm_id;