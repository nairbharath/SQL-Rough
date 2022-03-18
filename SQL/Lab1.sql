create database stud5;
use stud5;

create table regions(
region_id int auto_increment primary key,
 region_name varchar(20)
);

create table countries(
country_id int auto_increment primary key,
 country_name varchar(20),
 region_id int not null,
foreign key(region_id) references regions(region_id)
);

create table locations(
location_id int auto_increment primary key,
street_address varchar(20),
postal_code varchar(20),
city varchar(20),
state_province varchar(20),
 country_id int not null,
 foreign key(country_id) references countries(country_id)
 );
 
create table departments(
department_id int auto_increment primary key ,
department_name varchar(20),
location_id int not null,
 foreign key(location_id) references locations(location_id)
 );
 
create table jobs(
job_id int auto_increment primary key,
job_title varchar(20),
min_salary int,
 max_salary int
);
 
create table employees(
employee_id int auto_increment primary key,
first_name varchar(20),
last_name varchar(20),
 email varchar(50),
 phone_number int,
 hire_date varchar(20),
 job_id int not null,
 salary int,
 manager_id varchar(20),
 department_id int not null,
 foreign key(department_id) references departments(department_id),
 foreign key(job_id) references jobs(job_id)
 );
 
create table dependents(
dependent_id int auto_increment primary key,
first_name varchar(20),
last_name varchar(20),
relationship varchar(20),
 employee_id int not null,
 foreign key(employee_id) references employees(employee_id)
 );
 
alter table employees add foreign key(manager_id) references employees(employee_id);
alter table employees modify manager_id int;
