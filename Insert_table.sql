Appointment Table
INSERT ALL
  INTO Appointment VALUES ('AP0001','PT101','CA0001',DATE '2026-06-15',TIMESTAMP '2026-06-15 09:00:00','Online','Routine check-up')
  INTO Appointment VALUES ('AP0002','PT102','OR0001',DATE '2026-06-16',TIMESTAMP '2026-06-16 10:30:00','Walk-in','Post-surgery follow-up')
  INTO Appointment VALUES ('AP0003','PT103','NE0001',DATE '2026-06-17',TIMESTAMP '2026-06-17 11:00:00','Online','Neurology consultation')
  INTO Appointment VALUES ('AP0004','PT104','PD0001',DATE '2026-06-18',TIMESTAMP '2026-06-18 14:00:00','Walk-in','Child vaccination')
  INTO Appointment VALUES ('AP0005','PT105','DE0001',DATE '2026-06-19',TIMESTAMP '2026-06-19 15:30:00','Online','Skin rash check')
  INTO Appointment VALUES ('AP0006','PT106','GS0001',DATE '2026-06-20',TIMESTAMP '2026-06-20 09:30:00','Walk-in','Surgery consultation')
  INTO Appointment VALUES ('AP0007','PT107','ON0001',DATE '2026-06-21',TIMESTAMP '2026-06-21 10:00:00','Online','Cancer treatment follow-up')
  INTO Appointment VALUES ('AP0008','PT108','EN0001',DATE '2026-06-22',TIMESTAMP '2026-06-22 13:00:00','Walk-in','ENT check-up')
  INTO Appointment VALUES ('AP0009','PT109','OP0001',DATE '2026-06-23',TIMESTAMP '2026-06-23 11:30:00','Online','Eye examination')
  INTO Appointment VALUES ('AP0010','PT110','UR0001',DATE '2026-06-24',TIMESTAMP '2026-06-24 16:00:00','Walk-in','Kidney stone follow-up')
SELECT * FROM dual;

Prescription Table
INSERT ALL
  INTO Prescription VALUES ('PR201','PT101','CA0001','Aspirin','500mg','Twice daily','10 days',DATE '2026-06-01','Chest pain')
  INTO Prescription VALUES ('PR202','PT102','OR0001','Amoxicillin','250mg','Three times daily','7 days',DATE '2026-06-02','Infection treatment')
  INTO Prescription VALUES ('PR203','PT103','NE0001','Paracetamol','500mg','Twice daily','5 days',DATE '2026-06-03','Headache relief')
  INTO Prescription VALUES ('PR204','PT104','PD0001','Ibuprofen','200mg','Twice daily','3 days',DATE '2026-06-04','Fever')
  INTO Prescription VALUES ('PR205','PT105','DE0001','Cetirizine','10mg','Once daily','14 days',DATE '2026-06-05','Allergy')
  INTO Prescription VALUES ('PR206','PT106','GS0001','Omeprazole','20mg','Once daily','30 days',DATE '2026-06-06','Acid reflux')
  INTO Prescription VALUES ('PR207','PT107','ON0001','Morphine','10mg','Twice daily','5 days',DATE '2026-06-07','Pain management')
  INTO Prescription VALUES ('PR208','PT108','EN0001','Nasal Spray','2 puffs','Twice daily','10 days',DATE '2026-06-08','Sinus relief')
  INTO Prescription VALUES ('PR209','PT109','OP0001','Eye Drops','2 drops','Thrice daily','7 days',DATE '2026-06-09','Dry eyes')
  INTO Prescription VALUES ('PR210','PT110','UR0001','Ciprofloxacin','500mg','Twice daily','10 days',DATE '2026-06-10','UTI treatment')
SELECT * FROM dual;


