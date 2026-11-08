# PROJECT PROPOSAL
**Project Title:** SmartHerd: Modern Livestock Management & Veterinary Care System  
**Student Name:** Aphrodis Senga  
**Student ID:** 20251SEN137  
**Course Title & Code:** Database Development with PL/SQL (INSY 8311)  
**Instructor:** Dr. Eric Maniraguha  
**Institution:** Adventist University of Central Africa (AUCA)  
  



## 1. Executive Summary & Problem Statement
In many developing livestock sectors, farmers rely heavily on manual paper logbooks or informal tracking techniques to maintain records of herd health, feeding schedules, and veterinary consultations. This traditional record-keeping framework results in lost medical records, missed vaccination schedules, undetected disease outbreaks, and inaccurate yield projections. The absence of a structured database prevents automated decision-making and operational analytics.

The SmartHerd project addresses these challenges by engineering a normalized Oracle relational database driven by automated PL/SQL business logic. By centralizing management of animal inventory, farm staff responsibilities, and veterinary diagnostics, SmartHerd minimizes livestock mortality, enhances record accuracy, and optimizes livestock operational productivity.

---

## 2. Project Objectives
* **Primary Objective:** To design, build, and deploy a normalized 3NF Oracle relational database with embedded PL/SQL procedures, functions, triggers, and packages for automated livestock care management.
* **Secondary Objectives:**
  1. **Normalize Data Structures:** Build third normal form (3NF) relational tables for farm locations, livestock animals, user roles, and medical history.
  2. **Automate Business Logic:** Implement PL/SQL stored procedures and dynamic functions to handle daily feeding updates, calculate health scores, and register veterinary appointments.
  3. **Enforce Security & Validation Rules:** Deploy database triggers to prevent expired vaccine entries, restrict unauthorized diagnostic updates, and maintain full audit logs.
  4. **Analytics & Visualization Layer:** Integrate an external dashboard interface (Oracle APEX / Power BI / Python Streamlit) to display key performance indicators (KPIs) and disease control alerts.

---

## 3. Proposed Database Schema & Entity Overview
The database architecture comprises five primary relational entities engineered to prevent data anomalies:
* **FARMS_PENS:** Tracks internal farm structures, pen capacities, and environmental housing conditions.
* **LIVESTOCK:** Stores individual animal registration IDs, breed classifications, birth dates, weight logs, and active status tags.
* **STAFF_USERS:** Manages user profiles, contact numbers, and security roles (e.g., Farm Manager, Attendant, Vet Technician).
* **VETERINARIANS:** Stores external medical expert contact details, specialized credentials, and affiliation licenses.
* **HEALTH_LOGS:** Records medical examination outcomes, assigned diagnostic codes, prescribed medications, and scheduled follow-up visits.

---

## 4. Planned PL/SQL Technical Features
To guarantee procedural data integrity and operational automation, the system incorporates the following PL/SQL objects:
* **Stored Procedures (`RECORD_VET_VISIT`, `REGISTER_NEW_HERD`):** Automates standardized data insertion across multiple related entities during routine health checkups.
* **PL/SQL Functions (`CALCULATE_HERD_HEALTH_INDEX`, `GET_TOTAL_YIELD`):** Computes quantitative wellness scores and productivity ratios based on historical treatment logs.
* **Database Triggers (`PREVENT_EXPIRED_VACCINE`, `AUDIT_HEALTH_LOGS`):** Enforces backend validation constraints that automatically reject invalid medical logs and audit security updates.
* **Packages & Dynamic Cursors:** Bundles core management logic to perform efficient batch evaluation of daily feeding costs and active medical alerts.



## 5. Innovation & Analytical Layer
To elevate the utility of the database beyond standard SQL Developer querying, SmartHerd incorporates an external visualization framework (Oracle APEX / Power BI / Python Streamlit). This integration pulls direct analytical views from Oracle SQL to display interactive visual metrics, including real-time disease distribution maps, vaccine due-date notifications, and herd growth trajectory charts.

---

## 6. Project Deliverables & References
### Project Deliverables:
* Public GitHub Repository: https://github.com/aphroseng/aphrodis_20251SEN137_SMARTHERD
* Normalized SQL DDL Scripts & Data Seeding Scripts.
* Fully functional PL/SQL Package Implementations.
* Final Demonstration Video and Technical Documentation Report.

### Academic References (APA Format)
* Kaggle Data Repository. (2024). *Cattle Health, Feeding, and Yield Production Dataset*. Retrieved from https://www.kaggle.com
* Oracle Corporation. (2026). *Oracle Database PL/SQL Language Reference (Release 23c)*. Oracle Documentation.
* Patel, R., & Kumar, A. (2025). Relational Database Optimization for Farm Management and Veterinary Records. *International Journal of Database Systems*, 18(3), 112-128.
* Smith, J., & Kagabo, P. (2024). Modern Livestock Tracking and Health Management Systems in East Africa. *Journal of Agricultural Technology*, 14(2), 45-60.
