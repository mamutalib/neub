CREATE DATABASE un;

USE university;

CREATE TABLE depart (
    deprt_name VARCHAR(20) PRIMARY KEY,
    building VARCHAR(20),
    budget INT
);

CREATE TABLE inst (
	ID int PRIMARY KEY,
    name VARCHAR(20),
    deprt_name VARCHAR(20) references department(deprt_name),
    salary INT
);

CREATE TABLE techer (
    ID INT references instructor(ID),
    course_id VARCHAR(20),
    section_id INT,
    semester VARCHAR(20),
    year INT
);

DESCRIBE depart;
drop table depart;
select * from depart;
insert into depart values('Biology','Watson',90000);
insert into depart values('Comp.Sci.','Taylor',100000);
insert into depart values('Elec.Eng.','Taylor',85000);
insert into depart values('Finance','Painter',120000);
insert into depart values('History','Painter',50000);
insert into depart values('Music','Packard',80000);
insert into depart values('Physics','Watson',70000);


DESCRIBE inst;
drop table inst;
select * from inst;
insert into inst values('10101','Srinivasan','Comp.Sci.',65000);
insert into inst values('12121','Wu','Finance.',90000);
insert into inst values('15151','Mozart','Music',40000);
insert into inst values('222222','Einstein','Physics',95000);
insert into inst values('32343','El Said','History',60000);
insert into inst values('33456','Gold','Physics',87000);
insert into inst values('45565','Katz','Comp.Sci.',75000);





DESCRIBE techer;
drop table techer;
select * from techer;
insert into techer values('10101','CS-101',1,'Fall',2009);
insert into techer values('10101','CS-315',1,'Spring',2010);
insert into techer values('10101','CS-347',1,'Fall',2009);
insert into techer values('12121','FIN-201',1,'Spring',2010);
insert into techer values('15151','MU-199',1,'Spring',2009);
insert into techer values('22222','PHY-101',1,'Fall',2010);
insert into techer values('32343','HIS-351',1,'Spring',2010);
insert into techer values('45565','CS-101',1,'Spring',2010);
insert into techer values('45565','CS-319',1,'Spring',2010);
insert into techer values('76766','BIO-101',1,'Summer',2009);


-- Querys



-- 3-> List in alphabetic order all instructors in the Computer Sci. department

select *
from inst
where deprt_name = 'Comp.Sci.'
ORDER BY deprt_name;

-- 4-> Find the list of all courses taught in the Spring 2009 semester

select *
from techer
where semester = 'Spring' AND year = 2009;

-- 5-> Find the names of all instructors, along with their department names and department building name

select name, inst.dept_name,building
from inst,depart
where inst.deprt_name=depart.deprt_name;

-- 6-> List the names of instructors along with the titles of courses that they teach.

select name,course_id
from inst,techer
where inst.ID=techer.ID;

-- 7-> For all instructors in the Computer Science department, find their names and the course ID of all courses they taught

select name,course_id
from instructor,teaches
where deprt_name='Comp.Sci.' and instructor.ID=teaches.ID;