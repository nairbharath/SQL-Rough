create database UNIVERSITY;
USE UNIVERSITY;

CREATE TABLE STUDENT(
Student_name varchar(30),
Student_number INT PRIMARY KEY,
Class INT,
Major VARCHAR(20)
);

CREATE TABLE COURSE(
Course_name varchar(30),
Course_number varchar(20) PRIMARY KEY,
Credit_hours int,
Department varchar(20)
);

CREATE TABLE SECTION(
Section_identifier int PRIMARY KEY,
Course_number varchar(20),
Semester varchar(20),
Course_year int,
Instructor varchar(20),
FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE GRADE_REPORT(
Student_number int,
Section_identifier int,
GRADE varchar(5),
FOREIGN KEY (Student_number) REFERENCES STUDENT(Student_number) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (Section_identifier) REFERENCES SECTION(Section_identifier) ON DELETE CASCADE ON UPDATE CASCADE

);

CREATE TABLE PREREQUISITE(
Course_number varchar(20) ,
Prerequisite_number varchar(20),
FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number) ON DELETE CASCADE ON UPDATE CASCADE

);

desc STUDENT,COURSE;




