-- Doctor Table
CREATE TABLE Doctor (
    Doctor_ID VARCHAR2(10) PRIMARY KEY,
    Specialization VARCHAR2(100) NOT NULL,
    Availability_Schedule VARCHAR2(100)
);

-- Patient Table
CREATE TABLE Patient (
    Patient_ID VARCHAR2(10) PRIMARY KEY,
    First_Name VARCHAR2(50) NOT NULL,
    Last_Name VARCHAR2(50) NOT NULL,
    Date_of_Birth DATE NOT NULL,
    Gender VARCHAR2(10) NOT NULL,
    Age NUMBER,
    Address VARCHAR2(255),
    Emergency_Contact VARCHAR2(20),
    Insurance_No VARCHAR2(50)
);

-- Appointment Table
CREATE TABLE Appointment (
    Appointment_ID VARCHAR2(10) PRIMARY KEY,
    Patient_ID VARCHAR2(10) REFERENCES Patient(Patient_ID),
    Doctor_ID VARCHAR2(10) REFERENCES Doctor(Doctor_ID),
    Appointment_Date DATE NOT NULL,
    Appointment_Time TIMESTAMP,
    Booking_Type VARCHAR2(50),
    Notes VARCHAR2(255)
);

-- Prescription Table
CREATE TABLE Prescription (
    Prescription_ID VARCHAR2(10) PRIMARY KEY,
    Patient_ID VARCHAR2(10) REFERENCES Patient(Patient_ID),
    Doctor_ID VARCHAR2(10) REFERENCES Doctor(Doctor_ID),
    Medication_Name VARCHAR2(100) NOT NULL,
    Dosage VARCHAR2(50),
    Frequency VARCHAR2(50),
    Duration VARCHAR2(50),
    Prescription_Date DATE,
    Notes VARCHAR2(255)
);

-- Pharmacy Table
CREATE TABLE Pharmacy (
    Pharmacy_ID VARCHAR2(10) PRIMARY KEY,
    Prescription_ID VARCHAR2(10) REFERENCES Prescription(Prescription_ID),
    Medicine_Name VARCHAR2(100) NOT NULL,
    Quantity_in_Stock NUMBER NOT NULL,
    Price NUMBER(10,2) NOT NULL,
    Expiry_Date DATE NOT NULL,
    Supplier VARCHAR2(100),
    Storage_Condition VARCHAR2(50)
);

-- Surgery Table
CREATE TABLE Surgery (
    Surgery_ID VARCHAR2(10) PRIMARY KEY,
    Patient_ID VARCHAR2(10) REFERENCES Patient(Patient_ID),
    Doctor_ID VARCHAR2(10) REFERENCES Doctor(Doctor_ID),
    Surgery_Type VARCHAR2(100) NOT NULL,
    Surgery_Date DATE NOT NULL,
    Surgery_Time TIMESTAMP,
    Operating_Room VARCHAR2(50),
    Outcome VARCHAR2(100),
    Notes VARCHAR2(255)
);

-- Surgery_Doctor Table
CREATE TABLE Surgery_Doctor (
    Doctor_ID VARCHAR2(10) REFERENCES Doctor(Doctor_ID),
    Surgery_ID VARCHAR2(10) REFERENCES Surgery(Surgery_ID),
    Role VARCHAR2(50) NOT NULL,
    PRIMARY KEY (Doctor_ID, Surgery_ID)
);

-- Nurse Table
CREATE TABLE Nurse (
    Nurse_ID VARCHAR2(10) PRIMARY KEY,
    Assigned_Doc VARCHAR2(10) REFERENCES Doctor(Doctor_ID),
    Shift_Timing VARCHAR2(50),
    Ward_Assigned VARCHAR2(50)
);

-- Surgery_Nurse Table
CREATE TABLE Surgery_Nurse (
    Nurse_ID VARCHAR2(10) REFERENCES Nurse(Nurse_ID),
    Surgery_ID VARCHAR2(10) REFERENCES Surgery(Surgery_ID),
    Role VARCHAR2(50) NOT NULL,
    Participation VARCHAR2(100),
    PRIMARY KEY (Nurse_ID, Surgery_ID)
);

-- Staff Table
CREATE TABLE Staff (
    Staff_ID VARCHAR2(10) PRIMARY KEY,
    First_Name VARCHAR2(50) NOT NULL,
    Last_Name VARCHAR2(50) NOT NULL,
    Role VARCHAR2(50) NOT NULL,
    Department VARCHAR2(50),
    Contact_No VARCHAR2(20),
    Email VARCHAR2(100),
    Date_Joined DATE,
    Shift_Timing VARCHAR2(50),
    Address VARCHAR2(255)
);

-- Payment (Billing) Table
CREATE TABLE Payment (
    Invoice_No VARCHAR2(10) PRIMARY KEY,
    Patient_ID VARCHAR2(10) REFERENCES Patient(Patient_ID),
    Appointment_ID VARCHAR2(10) REFERENCES Appointment(Appointment_ID),
    Surgery_ID VARCHAR2(10) REFERENCES Surgery(Surgery_ID),
    Total_Amount NUMBER(10,2) NOT NULL,
    Payment_Method VARCHAR2(50),
    Payment_Status VARCHAR2(50),
    Date_Issued DATE NOT NULL
);

