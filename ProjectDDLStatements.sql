CREATE TABLE PATIENT 
    (Patient_ID     CHAR(9)     NOT NULL,
     SSN            CHAR(9)     NOT NULL,
     Name           VARCHAR(40) NOT NULL,
     Age            INT         NOT NULL,
     Bdate          DATE        NOT NULL,
     Address        VARCHAR(60) NOT NULL,
     PRIMARY KEY(Patient_ID));
     
CREATE TABLE DOCTOR
    (Doctor_ID      CHAR(9)     NOT NULL,
     Name           VARCHAR(40) NOT NULL,
     PRIMARY KEY (Doctor_ID));
     
CREATE TABLE DRUG
    (Drug_ID        CHAR(9)     NOT NULL,
     Name           VARCHAR(40) NOT NULL,
     Price          INT         NOT NULL,
     PRIMARY KEY(Drug_ID));
     
CREATE TABLE SERVICE 
    (Service_ID     CHAR(9)     NOT NULL,
     Description    VARCHAR(50) NOT NULL,
     Price          INT         NOT NULL,
     PRIMARY KEY(Service_ID));
     
CREATE TABLE SPECIALIZATION
    (Spec_ID        CHAR(9)     NOT NULL,
     Name           VARCHAR(30) NOT NULL,
     Description    VARCHAR(50) NOT NUll,
     PRIMARY KEY(Spec_ID));

CREATE TABLE DEPARTMENT
    (Dept_ID        CHAR(9)     NOT NULL,
     Dept_loc       VARCHAR(30) NOT NULL,
     Dept_name      VARCHAR(30) NOT NULL,
     Description    VARCHAR(50) NOT NULL,
     PRIMARY KEY(Dept_ID));
     
CREATE TABLE PHARMACY
    (Pharm_ID       CHAR(9)     NOT NULL,
     Pharm_loc      VARCHAR(30) NOT NULL,
     PRIMARY KEY(Pharm_ID));
     
CREATE TABLE PROVIDES
    (Pharm_ID       CHAR(9)     NOT NULL,
     Drug_ID        CHAR(9)     NOT NULL,
     PRIMARY KEY(Pharm_ID, Drug_ID),
     FOREIGN KEY (Pharm_ID) REFERENCES PHARMACY(Pharm_ID) ON DELETE CASCADE,
     FOREIGN KEY (Drug_ID)  REFERENCES DRUG(Drug_ID) ON DELETE CASCADE);
     
    
CREATE TABLE BILL
    (Bill_ID        CHAR(9)     NOT NULL,
     Total_cost     INT         NOT NULL,
     Due_date       DATE        NOT NULL,
     Patient_ID     CHAR(9)     NOT NULL,
     PRIMARY KEY (Bill_ID),
     FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID) ON DELETE CASCADE);
     
CREATE TABLE WORKS_FOR
    (Doctor_ID      CHAR(9)     NOT NULL,
     Dept_ID        CHAR(9)     NOT NULL,
     PRIMARY KEY(Doctor_ID, Dept_ID),
     FOREIGN KEY (Doctor_ID) REFERENCES DOCTOR(Doctor_ID)ON DELETE CASCADE,
     FOREIGN KEY (Dept_ID)   REFERENCES DEPARTMENT(Dept_ID) ON DELETE CASCADE);

CREATE TABLE ASSIGNED_TO
    (Patient_ID    CHAR(9)     NOT NULL,
     Dept_ID       CHAR(9)     NOT NULL, 
     Date_Assign   DATE        NOT NULL,
     Date_Release  DATE                 ,
     Room_Num      INT         NOT NULL,
     PRIMARY KEY(Patient_ID, Dept_ID),
     FOREIGN KEY(Patient_ID) REFERENCES PATIENT(Patient_ID) ON DELETE CASCADE,
     FOREIGN KEY(Dept_ID) REFERENCES DEPARTMENT(Dept_ID)ON DELETE CASCADE);
     
CREATE TABLE PRESCRIBES
    (Patient_ID    CHAR(9)     NOT NULL,
     Doctor_ID     CHAR(9)     NOT NULL,
     Drug_ID       CHAR(9)     NOT NULL,
     Prescription_date DATE    NOT NULL,
     Amount        INT         NOT NULL,
     PRIMARY KEY(Patient_ID, Doctor_ID, Drug_ID),
     FOREIGN KEY(Patient_ID) REFERENCES PATIENT(Patient_ID) ON DELETE CASCADE,
     FOREIGN KEY(Doctor_ID) REFERENCES DOCTOR(Doctor_ID) ON DELETE CASCADE,
     FOREIGN KEY(Drug_ID) REFERENCES DRUG(Drug_ID) ON DELETE CASCADE);
     
CREATE TABLE TREATMENT
     (Patient_ID    CHAR(9)     NOT NULL,
      Doctor_ID     CHAR(9)     NOT NULL,
      Service_ID    CHAR(9)     NOT NULL,
      Ailment       VARCHAR(50) NOT NULL,
      Treatment_Date          DATE        NOT NULL,
      PRIMARY KEY(Patient_ID, Doctor_ID, Service_ID),
      FOREIGN KEY(Patient_ID) REFERENCES PATIENT(Patient_ID) ON DELETE CASCADE,
      FOREIGN KEY(Doctor_ID) REFERENCES DOCTOR(Doctor_ID) ON DELETE CASCADE,
      FOREIGN KEY(Service_ID) REFERENCES SERVICE(Service_ID)ON DELETE CASCADE); 

CREATE TABLE SPECIALIZES
    (Doctor_ID      CHAR(9)     NOT NULL,
     Spec_ID        CHAR(9)     NOT NULL,
     Years_exp      INT         NOT NULL,
     PRIMARY KEY (Doctor_ID, Spec_ID),
     FOREIGN KEY (Doctor_ID) REFERENCES DOCTOR(Doctor_ID) ON DELETE CASCADE,
     FOREIGN KEY (Spec_ID)   REFERENCES SPECIALIZATION(Spec_ID) ON DELETE CASCADE);
     
CREATE TABLE INCLUDES
    (Service_ID      CHAR(9)     NOT NULL,
     Bill_ID        CHAR(9)     NOT NULL,
     PRIMARY KEY (Service_ID, Bill_ID),
     FOREIGN KEY (Service_ID) REFERENCES SERVICE(Service_ID) ON DELETE CASCADE,
     FOREIGN KEY (Bill_ID)    REFERENCES BILL(Bill_ID) ON DELETE CASCADE);
    

/*
drop table provides;
drop table pharmacy;
drop table drug;
drop table includes;
drop table specializes;
drop table treatment;
drop table prescribes;
drop table assigned_to;
drop table works_for;
drop table bill;
drop table department;
drop table specialization;
drop table service;
drop table doctor;
drop table patient;
*/