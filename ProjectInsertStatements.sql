/*
Team 06
*/

INSERT INTO PATIENT VALUES('P00000001', 111222333, 'John Smith', 24, TO_DATE('1965-01-09', 'yyyy-mm-dd'), '302 Example Ln, Nowhere NJ 00001');
INSERT INTO PATIENT VALUES('P00000002', 111222334, 'Jack Robbin', 21, TO_DATE('1979-01-09', 'yyyy-mm-dd'), '511 Crazy Str, Edison NJ 00002');
INSERT INTO PATIENT VALUES('P00000003', 111222335, 'Daniyal Khan', 34, TO_DATE('2001-01-09', 'yyyy-mm-dd'), '378 Harper Str, Elizabeth NJ 00003');
INSERT INTO PATIENT VALUES('P00000004', 111222336, 'Michael Renda', 27, TO_DATE('1994-01-09', 'yyyy-mm-dd'), '899 Murray Ave, Linden NJ 00004');
INSERT INTO PATIENT VALUES('P00000005', 111222337, 'Daniel Huaman', 44, TO_DATE('1985-01-09', 'yyyy-mm-dd'), '731 Alien Blvd, Rahway NJ 00005');

Select * from patient;

INSERT INTO DRUG VALUES('DR0000001', 'Ibuprofen', 299);
INSERT INTO DRUG VALUES('DR0000002', 'Acetomenaphin', 123);
INSERT INTO DRUG VALUES('DR0000003', 'Oxycodin', 332);
INSERT INTO DRUG VALUES('DR0000004', 'Ozempic', 280);
INSERT INTO DRUG VALUES('DR0000005', 'Insulin', 30);

SELECT * from DRUG;

INSERT INTO SERVICE VALUES('S00000001', 'Give Flu Shot', 30);
INSERT INTO SERVICE VALUES('S00000002', 'Administer Insulin', 40);
INSERT INTO SERVICE VALUES('S00000003', 'Heart Surgery', 300000);
INSERT INTO SERVICE VALUES('S00000004', 'Knee Reconstruction', 400000);
INSERT INTO SERVICE VALUES('S00000005', 'Nebulizer Treatment', 400);

SELECT * FROM SERVICE;

INSERT INTO DOCTOR VALUES('D00000001', 'Walter H. White');
INSERT INTO DOCTOR VALUES('D00000002', 'Gregory House');
INSERT INTO DOCTOR VALUES('D00000003', 'Rick Sanchez');
INSERT INTO DOCTOR VALUES('D00000004', 'Andy Tate');
INSERT INTO DOCTOR VALUES('D00000005', 'Pito Rico');

SELECT * from Doctor;

INSERT INTO DEPARTMENT VALUES('DEP000001', 'Wing A', 'Anestesiology', 'Anestesia');
INSERT INTO DEPARTMENT VALUES('DEP000002', 'Wing B', 'Operating Theatre', 'Surgery');
INSERT INTO DEPARTMENT VALUES('DEP000003', 'Wing C', 'Intensive Care Unit', 'Emergency');
INSERT INTO DEPARTMENT VALUES('DEP000004', 'Wing D', 'Cardiology', 'Heart Problems');
INSERT INTO DEPARTMENT VALUES('DEP000005', 'Wing E', 'ENT Department', 'Ears, nose and throat');

SELECT * FROM DEPARTMENT;

INSERT INTO PHARMACY VALUES ('PH0000001', 'A WING');
INSERT INTO PHARMACY VALUES ('PH0000002', 'B WING');
INSERT INTO PHARMACY VALUES ('PH0000003', 'C WING');
INSERT INTO PHARMACY VALUES ('PH0000004', 'D WING');
INSERT INTO PHARMACY VALUES ('PH0000005', 'E WING');

SELECT * FROM PHARMACY;

INSERT INTO SPECIALIZATION VALUES ('SP0000001', 'Cardiology', 'Works on Heart and Cardiac Procedures');
INSERT INTO SPECIALIZATION VALUES ('SP0000002', 'ENT', 'Ears nose and throat');
INSERT INTO SPECIALIZATION VALUES ('SP0000003', 'Radiology', 'Works on x-ray images for tumor detection');
INSERT INTO SPECIALIZATION VALUES ('SP0000004', 'Infectious Diseases', 'Expert in viruses and bacteria');
INSERT INTO SPECIALIZATION VALUES ('SP0000005', 'General Surgeon', 'Able to perform many general surgeries');

SELECT * FROM SPECIALIZATION;

INSERT INTO PROVIDES VALUES ('PH0000001', 'DR0000003');
INSERT INTO PROVIDES VALUES ('PH0000002', 'DR0000004');
INSERT INTO PROVIDES VALUES ('PH0000003', 'DR0000003');
INSERT INTO PROVIDES VALUES ('PH0000004', 'DR0000001');
INSERT INTO PROVIDES VALUES ('PH0000005', 'DR0000002');

SELECT * FROM PROVIDES;


INSERT INTO SPECIALIZES VALUES ('D00000001', 'SP0000003', 2);
INSERT INTO SPECIALIZES VALUES ('D00000004', 'SP0000001', 10);
INSERT INTO SPECIALIZES VALUES ('D00000005', 'SP0000002', 13);
INSERT INTO SPECIALIZES VALUES ('D00000003', 'SP0000004', 15);
INSERT INTO SPECIALIZES VALUES ('D00000002', 'SP0000005', 11);

SELECT * FROM SPECIALIZES;

INSERT INTO WORKS_FOR VALUES('D00000001', 'DEP000002');
INSERT INTO WORKS_FOR VALUES('D00000002', 'DEP000001');
INSERT INTO WORKS_FOR VALUES('D00000003', 'DEP000005');
INSERT INTO WORKS_FOR VALUES('D00000004', 'DEP000004');
INSERT INTO WORKS_FOR VALUES('D00000005', 'DEP000003');

SELECT * FROM WORKS_FOR;

INSERT INTO BILL VALUES( 'B00000001', 1299, TO_DATE('2007-11-19', 'yyyy-mm-dd'), 'P00000001');
INSERT INTO BILL VALUES( 'B00000002', 30000, TO_DATE('2013-07-08', 'yyyy-mm-dd'), 'P00000003');
INSERT INTO BILL VALUES( 'B00000003', 12000, TO_DATE('2015-3-01', 'yyyy-mm-dd'), 'P00000005');
INSERT INTO BILL VALUES( 'B00000004', 18000, TO_DATE('2004-12-07', 'yyyy-mm-dd'), 'P00000004');
INSERT INTO BILL VALUES( 'B00000005', 36000, TO_DATE('2019-10-29', 'yyyy-mm-dd'), 'P00000002');

SELECT * FROM BILL;

INSERT INTO PRESCRIBES VALUES('P00000001', 'D00000005', 'DR0000002', TO_DATE('2017-12-19', 'yyyy-mm-dd'), 100); 
INSERT INTO PRESCRIBES VALUES('P00000002', 'D00000004', 'DR0000003', TO_DATE('2023-01-19', 'yyyy-mm-dd'), 30); 
INSERT INTO PRESCRIBES VALUES('P00000003', 'D00000003', 'DR0000004', TO_DATE('2022-04-24', 'yyyy-mm-dd'), 42); 
INSERT INTO PRESCRIBES VALUES('P00000004', 'D00000002', 'DR0000005', TO_DATE('2015-03-13', 'yyyy-mm-dd'), 11); 
INSERT INTO PRESCRIBES VALUES('P00000005', 'D00000001', 'DR0000002', TO_DATE('2007-11-19', 'yyyy-mm-dd'), 17); 

SELECT * FROM PRESCRIBES;

INSERT INTO ASSIGNED_TO VALUES('P00000001', 'DEP000003', TO_DATE('2010-10-29', 'yyyy-mm-dd'), NULL, 24);
INSERT INTO ASSIGNED_TO VALUES('P00000004', 'DEP000005', TO_DATE('2012-11-03', 'yyyy-mm-dd'), TO_DATE('2012-11-13', 'yyyy-mm-dd'), 203);
INSERT INTO ASSIGNED_TO VALUES('P00000002', 'DEP000001', TO_DATE('2007-07-13', 'yyyy-mm-dd'), NULL, 341);
INSERT INTO ASSIGNED_TO VALUES('P00000005', 'DEP000004', TO_DATE('2011-04-18', 'yyyy-mm-dd'),TO_DATE('2015-02-13', 'yyyy-mm-dd'), 234);
INSERT INTO ASSIGNED_TO VALUES('P00000003', 'DEP000002', TO_DATE('2017-02-12', 'yyyy-mm-dd'), NULL, 431);

SELECT * FROM ASSIGNED_TO;

INSERT INTO TREATMENT VALUES('P00000001', 'D00000004', 'S00000003', 'Patient had chest pain', TO_DATE('2010-10-29', 'yyyy-mm-dd'));
INSERT INTO TREATMENT VALUES('P00000002', 'D00000005', 'S00000005', 'Patient complained of sinus infection', TO_DATE('2012-11-04', 'yyyy-mm-dd'));
INSERT INTO TREATMENT VALUES('P00000003', 'D00000005', 'S00000002', 'Patient was in diabetic shock', TO_DATE('2007-07-13', 'yyyy-mm-dd'));
INSERT INTO TREATMENT VALUES('P00000004', 'D00000002', 'S00000004', 'Patient needed knee surgery', TO_DATE('2011-04-18', 'yyyy-mm-dd'));
INSERT INTO TREATMENT VALUES('P00000005', 'D00000004', 'S00000001', 'Patient needed flu shot', TO_DATE('2072-02-12', 'yyyy-mm-dd'));

SELECT * FROM TREATMENT;


INSERT INTO INCLUDES VALUES('S00000001', 'B00000001' );
INSERT INTO INCLUDES VALUES('S00000002', 'B00000001' );
INSERT INTO INCLUDES VALUES('S00000003', 'B00000003' );
INSERT INTO INCLUDES VALUES('S00000005', 'B00000002' );
INSERT INTO INCLUDES VALUES('S00000004', 'B00000005' );

SELECT * FROM INCLUDES;





