🏥 Hospital Management System

A web-based hospital operations platform built with Oracle APEX and Oracle Database, covering patient management, appointments, surgery, pharmacy, billing, and staff records.


🛠️ Technologies Used
LayerTechnologyApplication / FrontendOracle APEX (Application Express)DatabaseOracle Database 19cQuery LanguageOracle SQL (DDL / DML)Business LogicPL/SQL — triggers & stored proceduresID ManagementOracle SequencesDev ToolsSQL Developer, APEX App Builder, SQL Workshop

🗄️ Database Schema
Built on 8 normalised relational tables:
PATIENT · DOCTOR · APPOINTMENT · PHARMACY · BILLING · SURGERY · NURSE · STAFF

✅ Key Features

Patient registration with insurance and emergency contact details
Appointment booking across Online / Physical / Call channels with status tracking
Doctor availability scheduling and multi-specialization profiles
Surgery scheduling with operating room and outcome recording
Pharmacy prescription management with quantity and pricing
Consolidated billing supporting Cash / Card / Insurance payments
Nurse–Doctor assignment with shift management
Non-clinical staff records (receptionists, lab technicians, attendants)


🧠 Key Design Decisions
1. Oracle APEX as the application layer
Chosen for its native Oracle Database integration, allowing forms, interactive reports, and dashboards to be built directly from the schema with minimal extra backend code. APEX's built-in authentication and Page Designer significantly reduced development overhead.
2. Unified Billing table with nullable FKs
A single BILLING table links to APPOINTMENT, PHARMACY, and SURGERY, with the pharmacy and surgery foreign keys marked nullable. This lets a bill represent any combination of services without duplicating billing logic across separate tables.
3. Nurse separated from Staff
Nurses have a dedicated table with a direct FK to DOCTOR (Assigned_Doctor), reflecting the clinical supervision relationship. General staff (receptionists, lab technicians, attendants) have no such dependency and are kept in a separate STAFF table to avoid null-heavy rows.
4. Booking_Type column instead of separate tables
Rather than splitting online, physical, and call bookings into three tables, a single Booking_Type enum column on APPOINTMENT consolidates all channels — simplifying queries and APEX report filters.
5. Oracle Sequences for primary keys
Auto-incrementing PKs are handled via Oracle SEQUENCE objects with BEFORE INSERT triggers, ensuring unique IDs across all tables without any application-side ID generation logic.

📁 Repository Structure
/sql       → DDL scripts (tables, sequences, constraints)
/plsql     → Triggers and stored procedures
/apex      → Exported APEX application (.sql)
/erd       → Entity Relationship Diagram
/docs      → Project report and design documentation

👤 Author
Tharushi — First Year Software Engineering Student
Module: Database Design & Application Development
