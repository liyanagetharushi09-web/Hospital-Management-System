1)	List all appointments that were booked online. 
SELECT * 
FROM Appointment
WHERE Booking_Type = 'Online';

2)	Show all prescriptions where the duration is more than 7 days. 
SELECT * 
FROM Prescription
WHERE Duration LIKE '%10 days%'
   OR Duration LIKE '%14 days%'
   OR Duration LIKE '%30 days%'; 

3)	Show all medicines in the pharmacy that expire before 2027.
SELECT * 
FROM Pharmacy
WHERE Expiry_Date < DATE '2027-01-01';

4)	Show all surgeries that took place in operating room OR-5.
SELECT * 
FROM Surgery
WHERE Operating_Room = 'OR-5'; 

5)	Show all payments where the status is pending.
SELECT * 
FROM Payment
WHERE Payment_Status = 'Pending'; 

6)	Show all appointments for patient PT109.
SELECT * 
FROM Appointment
WHERE Patient_ID = 'PT109'; 

7)	Show all prescriptions dated after 06-JUN-26.
SELECT * 
FROM Prescription
WHERE Prescription_Date > DATE '2026-06-06'; 

8)	Show all nurses who assisted in surgery SU005.
SELECT * 
FROM Surgery_Nurse
WHERE Surgery_ID = 'SU005'; 

9)	Show all payments made using cash.
SELECT * 
FROM Payment
WHERE Payment_Method = 'Cash'; 

10)	Show the patient IDs and names of all patients who have both an appointment and a surgery.
SELECT DISTINCT a.Patient_ID
FROM Appointment a
JOIN Surgery s ON a.Patient_ID = s.Patient_ID; 

11)	List the doctor IDs and the number of surgeries each doctor performed.
SELECT Doctor_ID, COUNT(*) AS total_surgeries
FROM Surgery
GROUP BY Doctor_ID; 

12)	Show the patient IDs and invoice numbers for patients who had both a surgery and a paid payment. 
SELECT DISTINCT p.Patient_ID, p.Invoice_No
FROM Payment p
JOIN Surgery s ON p.Surgery_ID = s.Surgery_ID
WHERE p.Payment_Status = 'Paid';
