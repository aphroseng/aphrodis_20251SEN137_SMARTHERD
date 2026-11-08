# SmartHerd: Modern Livestock Management & Veterinary Care System

## Student Information
* **Name:** Aphrodis Senga
* **Student ID:** 20251SEN137
* **Course:** INSY 8311 & Database Development with PL/SQL
* **Institution:** Adventist University of Central Africa (AUCA)

---

## 1. Problem Statement
Livestock farmers often struggle with manual record-keeping of animal health, feeding schedules, and veterinary care. This lack of centralized tracking leads to undetected diseases, delayed treatments, and significant economic losses in the livestock sector.

## 2. Objectives
* **Main Objective:** To design and implement a robust Oracle relational database with PL/SQL automation to manage livestock herds, farm operations, and veterinary services efficiently.
* **Specific Objectives:**
  1. Build normalized relational database tables (3NF) to store data on farms, animals, staff, and veterinary visits.
  2. Implement PL/SQL stored procedures and functions to automate data recording and health monitoring.
  3. Enforce strict business and security rules using database triggers.

## 3. Data Source
* **Dataset:** Cattle and Livestock Health Datasets (sourced via Kaggle and structured for educational database management use)[cite: 3].
* **Characteristics:** Contains records on animal weights, feeding logs, and health histories without any personal identifiable information (PII) of real individuals[cite: 3].

## 4. Planned Tables
* **Farms & Pens:** Stores information about farm locations and housing units.
* **Livestock (Herd):** Tracks individual animals, breeds, ages, weights, and health status.
* **Staff & Roles:** Manages farm workers and their assigned responsibilities.
* **Veterinarians & Consultations:** Records details of visiting vets and treatment notes.
* **Health & Vaccination Logs:** Tracks medical treatments, diseases, and vaccination schedules.

## 5. Planned PL/SQL Features
* **Stored Procedures (`RECORD_VET_VISIT`, `LOG_FEEDING`):** Automates the insertion of daily farm logs and veterinary interventions.
* **Functions:** Calculates animal health scores and overall herd productivity metrics.
* **Triggers:** Restricts unauthorized staff from updating medical records and prevents the issuance of expired medications or vaccines.
* **Packages & Cursors:** Bundles related procedures for efficient batch processing of herd data.

## 6. Innovation
* **Tool:** Analytics Dashboard (Power BI / Tableau) or interactive User Interface (Python Streamlit / Oracle APEX).
* **Description:** Connects directly to the Oracle database to visualize live KPIs, herd health trends, milk/yield outputs, and veterinary alerts beyond standard SQL Developer interfaces.

## 7. References (APA)
* Smith, J., & Kagabo, P. (2024). Modern Livestock Tracking and Health Management Systems in East Africa. *Journal of Agricultural Technology*, 14(2), 45-60.
* National Institute of Statistics of Rwanda [NISR]. (2025). *Annual Agricultural Survey: Livestock Sub-sector Report*. Kigali, Rwanda.
* Oracle Corporation. (2026). *Oracle Database PL/SQL Language Reference*. Retrieved from Oracle Docs.
