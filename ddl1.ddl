-- Generated by Oracle SQL Developer Data Modeler 4.1.3.901
--   at:        2016-04-27 18:54:57 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE Department
  (
    dept_no   INTEGER NOT NULL ,
    dept_name VARCHAR2 (20) NOT NULL
  ) ;
ALTER TABLE Department ADD CONSTRAINT Department_PK PRIMARY KEY ( dept_no ) ;


CREATE TABLE Person
  (
    person_id          INTEGER NOT NULL ,
    first_name         VARCHAR2 (254) NOT NULL ,
    last_name          VARCHAR2 (254) NOT NULL ,
    home_address       VARCHAR2 (254) ,
    zipcode            INTEGER ,
    home_phone         INTEGER ,
    us_citizen         CHAR (1) NOT NULL ,
    Person_person_id   INTEGER ,
    employee_id        INTEGER ,
    salary             INTEGER ,
    salary_exception   CHAR (1) ,
    isFired            CHAR (1) ,
    Department_dept_no INTEGER ,
    Person_person_id1  INTEGER ,
    job_type           VARCHAR2 (254)
  ) ;
CREATE UNIQUE INDEX Person__IDX ON Person
  (
    Person_person_id ASC
  )
  ;
ALTER TABLE Person ADD CONSTRAINT Person_PK PRIMARY KEY ( person_id ) ;


CREATE TABLE Project
  (
    project_no         INTEGER NOT NULL ,
    project_title      VARCHAR2 (20) NOT NULL ,
    employee_id        INTEGER ,
    end_date_month     INTEGER ,
    end_date_day       INTEGER ,
    end_date_year      INTEGER ,
    est_person_hours   INTEGER ,
    project_active     CHAR (1) ,
    Project_project_no INTEGER ,
    Department_dept_no INTEGER ,
    Person_person_id   INTEGER ,
    project_type       VARCHAR2 (254)
  ) ;
ALTER TABLE Project ADD CONSTRAINT Project_PK PRIMARY KEY ( project_no ) ;


CREATE TABLE Projects_employees
  (
    Project_project_no INTEGER ,
    Person_person_id   INTEGER
  ) ;


CREATE TABLE parent_child
  (
    Person_person_id  INTEGER ,
    Person_person_id1 INTEGER
  ) ;


ALTER TABLE Person ADD CONSTRAINT Person_Department_FK FOREIGN KEY ( Department_dept_no ) REFERENCES Department ( dept_no ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FK FOREIGN KEY ( Person_person_id ) REFERENCES Person ( person_id ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FKv1 FOREIGN KEY ( Person_person_id1 ) REFERENCES Person ( person_id ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Department_FK FOREIGN KEY ( Department_dept_no ) REFERENCES Department ( dept_no ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Person_FK FOREIGN KEY ( Person_person_id ) REFERENCES Person ( person_id ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Project_FK FOREIGN KEY ( Project_project_no ) REFERENCES Project ( project_no ) ;

ALTER TABLE Projects_employees ADD CONSTRAINT Projects_employees_Person_FK FOREIGN KEY ( Person_person_id ) REFERENCES Person ( person_id ) ;

ALTER TABLE Projects_employees ADD CONSTRAINT Projects_employees_Project_FK FOREIGN KEY ( Project_project_no ) REFERENCES Project ( project_no ) ;

ALTER TABLE parent_child ADD CONSTRAINT parent_child_Person_FK FOREIGN KEY ( Person_person_id ) REFERENCES Person ( person_id ) ;

ALTER TABLE parent_child ADD CONSTRAINT parent_child_Person_FKv1 FOREIGN KEY ( Person_person_id1 ) REFERENCES Person ( person_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             1
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
