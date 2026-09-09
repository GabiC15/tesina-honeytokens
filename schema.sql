CREATE TABLE IF NOT EXISTS hospitals (
    hospital_id   integer PRIMARY KEY,
    hospital_name text,
    hash_id       text
);

CREATE TABLE IF NOT EXISTS doctors (
    doctor_id   integer PRIMARY KEY,
    doctor_name text,
    hash_id     text
);

CREATE TABLE IF NOT EXISTS patients (
    patient_id           integer PRIMARY KEY,
    "Name"               text,
    "Age"                integer,
    "Gender"             text,
    "Blood Type"         text,
    "Insurance Provider" text,
    hash_id              text
);

CREATE TABLE IF NOT EXISTS admissions (
    admission_id        integer PRIMARY KEY,
    patient_id          integer NOT NULL REFERENCES patients(patient_id),
    hospital_id         integer NOT NULL REFERENCES hospitals(hospital_id),
    doctor_id           integer NOT NULL REFERENCES doctors(doctor_id),
    "Date of Admission"  date,
    "Discharge Date"     date,
    "Medical Condition"  text,
    "Admission Type"     text,
    "Room Number"        integer,
    "Medication"         text,
    "Test Results"       text,
    "Billing Amount"     numeric,
    hash_id              text
);
