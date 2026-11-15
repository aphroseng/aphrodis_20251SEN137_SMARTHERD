# Phase II: Step-by-Step Normalization (UNF to 3NF)

## 1. UNF (Unnormalized Form)
- **What changes and why:** The raw data arrives as a single wide table or nested record holding repeating groups of health inspections, animal details, and veterinarian interventions in a single structure.
- **Example Rows:**
  - (record_id: 101, date: 2026-03-04, farm_name: "Gahini Farm", district: "Kayonza", animal_tag: "COW-001", breed: "Friesian", weight: 450, issue: "Mastitis", vet_name: "Dr. Jean", drug: "Penicillin")
  - (record_id: 102, date: 2026-03-05, farm_name: "Nyagatare Ranch", district: "Nyagatare", animal_tag: "COW-002", breed: "Ankole", weight: 380, issue: "Foot Rot", vet_name: "Dr. Alice", drug: "Oxytetracycline")
  - (record_id: 103, date: 2026-03-06, farm_name: "Gahini Farm", district: "Kayonza", animal_tag: "COW-003", breed: "Jersey", weight: 410, issue: "Routine Check", vet_name: "Dr. Jean", drug: "Multivitamin")

## 2. First Normal Form (1NF)
- **What changes and why:** Remove repeating groups so that every column holds a single, atomic value and each row is uniquely identified.
- **Primary Key:** (record_id, animal_tag)
- **Example Rows:**
  - (101, 2026-03-04, "Gahini Farm", "Kayonza", "COW-001", "Friesian", 450, "Mastitis", "Dr. Jean", "Penicillin")
  - (102, 2026-03-05, "Nyagatare Ranch", "Nyagatare", "COW-002", "Ankole", 380, "Foot Rot", "Dr. Alice", "Oxytetracycline")
  - (103, 2026-03-06, "Gahini Farm", "Kayonza", "COW-003", "Jersey", 410, "Routine Check", "Dr. Jean", "Multivitamin")

## 3. Second Normal Form (2NF)
- **What changes and why:** Remove partial dependencies where non-key attributes depend only on a part of a composite primary key. Farm and animal details depend only on their respective identifiers rather than the specific health inspection event, so we split them into FARM, ANIMAL, and HEALTH_RECORD.
- **Example Tables & Rows:**
  - **ANIMAL:**
    - (animal_id: 1, tag_number: "COW-001", breed: "Friesian", weight: 450)
    - (animal_id: 2, tag_number: "COW-002", breed: "Ankole", weight: 380)
    - (animal_id: 3, tag_number: "COW-003", breed: "Jersey", weight: 410)
  - **HEALTH_RECORD:**
    - (record_id: 101, animal_id: 1, inspection_date: 2026-03-04, issue: "Mastitis")
    - (record_id: 102, animal_id: 2, inspection_date: 2026-03-05, issue: "Foot Rot")
    - (record_id: 103, animal_id: 3, inspection_date: 2026-03-06, issue: "Routine Check")

## 4. Third Normal Form (3NF)
- **What changes and why:** Remove transitive dependencies where non-key attributes depend on other non-key attributes. District details depend on the farm, and medication costs depend on the specific treatment rather than the health record. Isolating them produces 5 normalized relational tables.
- **Final 3NF Relational Tables & Rows:**
  1. **FARM** (farm_id, farm_name, district) — *Transitive dependency removed: district depends on farm.*
     - (1, "Gahini Farm", "Kayonza")
     - (2, "Nyagatare Ranch", "Nyagatare")
     - (3, "Musanze Dairy", "Musanze")
  2. **ANIMAL** (animal_id, tag_number, breed, weight, farm_id) — *Partial dependency removed: animal attributes depend only on animal_id.*
     - (1, "COW-001", "Friesian", 450, 1)
     - (2, "COW-002", "Ankole", 380, 2)
     - (3, "COW-003", "Jersey", 410, 1)
  3. **VETERINARIAN** (vet_id, vet_name, phone_contact) — *Transitive dependency removed: contact details depend on the veterinarian.*
     - (1, "Dr. Jean", "0788000111")
     - (2, "Dr. Alice", "0788000222")
     - (3, "Dr. Eric", "0788000333")
  4. **TREATMENT** (treatment_id, treatment_name, drug_cost) — *Transitive dependency removed: drug cost depends on the treatment type.*
     - (1, "Penicillin", 15000)
     - (2, "Oxytetracycline", 12000)
     - (3, "Multivitamin", 5000)
  5. **HEALTH_RECORD** (record_id, animal_id, vet_id, treatment_id, inspection_date, diagnosis) — *Junction table resolving many-to-many relationships between animals, veterinarians, and treatments.*
     - (101, 1, 1, 1, 2026-03-04, "Mastitis")
     - (102, 2, 2, 2, 2026-03-05, "Foot Rot")
     - (103, 3, 1, 3, 2026-03-06, "Routine Check")
