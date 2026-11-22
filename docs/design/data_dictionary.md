# SmartHerd Data Dictionary & Field Mapping

## 1. Entities, Keys & Relationships (Logical Overview)
- **FARM** (1) ----< (M) **ANIMAL**: A farm houses many animals; each animal belongs to one farm.
- **ANIMAL** (1) ----< (M) **HEALTH_RECORD**: An animal can have many health records; each health record belongs to one animal.
- **VETERINARIAN** (1) ----< (M) **HEALTH_RECORD**: A veterinarian can conduct many health inspections; each health record is handled by one veterinarian.
- **TREATMENT** (1) ----< (M) **HEALTH_RECORD**: A treatment can be applied in many health records; each health record references one treatment.

---

## 2. Data Dictionary

### Table: FARM
| Column Name | Description | Required | Unique | Key / Relationship |
| :--- | :--- | :--- | :--- | :--- |
| `farm_id` | Unique identifier for each farm | Yes | Yes | Primary Key |
| `farm_name` | Name of the farm or cooperative | Yes | No | Attribute |
| `district` | Administrative district where the farm is located | Yes | No | Attribute |

### Table: ANIMAL
| Column Name | Description | Required | Unique | Key / Relationship |
| :--- | :--- | :--- | :--- | :--- |
| `animal_id` | Unique identifier for each animal | Yes | Yes | Primary Key |
| `tag_number` | Ear tag or identification code on the animal | Yes | Yes | Business Identifier |
| `breed` | Livestock breed (e.g., Friesian, Ankole, Jersey) | Yes | No | Attribute |
| `weight` | Recorded body weight of the animal | No | No | Attribute |
| `farm_id` | Reference to the farm owning the animal | Yes | No | Foreign Key -> `FARM.farm_id` |

### Table: VETERINARIAN
| Column Name | Description | Required | Unique | Key / Relationship |
| :--- | :--- | :--- | :--- | :--- |
| `vet_id` | Unique identifier for each veterinarian | Yes | Yes | Primary Key |
| `vet_name` | Full name of the veterinarian | Yes | No | Attribute |
| `phone_contact` | Telephone contact of the veterinarian | No | No | Attribute |

### Table: TREATMENT
| Column Name | Description | Required | Unique | Key / Relationship |
| :--- | :--- | :--- | :--- | :--- |
| `treatment_id` | Unique identifier for each treatment or medication | Yes | Yes | Primary Key |
| `treatment_name` | Name of the drug or veterinary intervention | Yes | Yes | Attribute |
| `drug_cost` | Cost associated with the treatment | No | No | Attribute |

### Table: HEALTH_RECORD
| Column Name | Description | Required | Unique | Key / Relationship |
| :--- | :--- | :--- | :--- | :--- |
| `record_id` | Unique identifier for each health inspection event | Yes | Yes | Primary Key |
| `animal_id` | Reference to the inspected animal | Yes | No | Foreign Key -> `ANIMAL.animal_id` |
| `vet_id` | Reference to the attending veterinarian | Yes | No | Foreign Key -> `VETERINARIAN.vet_id` |
| `treatment_id` | Reference to the administered treatment | No | No | Foreign Key -> `TREATMENT.treatment_id` |
| `inspection_date` | Date when the health check or treatment occurred | Yes | No | Attribute |
| `diagnosis` | Observed health condition or inspection finding | Yes | No | Attribute |

---

## 3. Raw Field Mapping & Phase IV Cleaning Checklist
| Raw Field | Target Table & Column | Action / Conversion Needed in Phase IV |
| :--- | :--- | :--- |
| `record_id` | `HEALTH_RECORD.record_id` | Convert text/string to integer/numeric identifier; verify uniqueness and remove duplicate rows |
| `date` | `HEALTH_RECORD.inspection_date` | Convert string format to standard date; handle missing dates (37 missing records) |
| `farm_name` | `FARM.farm_name` | Standardize text casing and trim extra spaces |
| `district` | `FARM.district` | Standardize spelling variations (e.g., unify "Nyarugenge" variants) and validate district names |
| `animal_tag` | `ANIMAL.tag_number` | Standardize tag formatting and enforce uniqueness |
| `breed` | `ANIMAL.breed` | Standardize breed labels and casing |
| `weight` | `ANIMAL.weight` | Convert text values to numeric values; handle missing or out-of-range entries |
| `issue` | `HEALTH_RECORD.diagnosis` | Standardize condition/diagnosis labels and check for blank entries |
| `vet_name` | `VETERINARIAN.vet_name` | Standardize veterinarian names and remove duplicates |
| `drug` | `TREATMENT.treatment_name` | Standardize drug/treatment names and map to `treatment_id` |
| `drug_cost` / price | `TREATMENT.drug_cost` | Convert text prices to numeric values; handle missing or non-numeric characters |
