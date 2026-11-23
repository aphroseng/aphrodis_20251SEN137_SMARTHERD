SELECT tag_code,
       health_status,
       fn_total_milk_liters(livestock_id) AS total_milk_l
  FROM livestock;

SELECT farm_id,
       farm_name,
       smartherd_mgmt_pkg.farm_animal_count(farm_id) AS total_animals
  FROM farms;