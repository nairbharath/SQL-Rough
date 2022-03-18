use stud1;
create table hostel(hostelid int,hostelname varchar(20), primary key(hostelid));
create table stud(studid int, studname varchar(20), hostelid int, primary key(studid), foreign key(hostelid) references hostel(hostelid));
select * from stud,hostel;
desc hostel;
desc stud;
insert into hostel values(50,'idiminnal');
insert into stud values(8,'adwaith',50);
select * from hostel,stud;
