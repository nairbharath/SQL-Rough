use stud1;
create table regions(region_id varchar(20), region_name varchar(20),primary key(region_id));
create table countries(country_id varchar(20), country_name varchar(20), region_id varchar(20), primary key(country_id), foreign key(region_id) references regions(region_id));
create table locations(location_id varchar(20),street_address varchar(20),postal_code varchar(20),city varchar(20),state_province varchar(20), country_id varchar(20), primary key(location_id), foreign key(country_id) references countries(country_id));
create table departments(department_id varchar(20),department_name varchar(20),location_id varchar(20), primary key(department_id), foreign key(location_id) references locations(location_id));
create table employees(employee_id varchar(20),first_name varchar(20),last_name varchar(20), email varchar(50),phone_number int,hire_date varchar(20),job_id varchar(20), salary int,manager_id varchar(20), department_id varchar(20), primary key(employee_id), foreign key(department_id) references departments(department_id));

create table dependents(dependent_id varchar(20),first_name varchar(20),last_name varchar(20),relationship varchar(20), employee_id varchar(20), primary key(dependent_id), foreign key(employee_id) references employees(employee_id));
create table jobs(job_id varchar(20),job_title varchar(20),min_salary int, max_salary int, primary key(job_id));
alter table employees add foreign key(job_id) references jobs(job_id);
desc employees;
drop table employees;