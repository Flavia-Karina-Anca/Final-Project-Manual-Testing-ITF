create database admin;
use admin;

CREATE TABLE systemUsers (
    systemUserID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    username VARCHAR(50) NOT NULL,
    userRole VARCHAR(25) NOT NULL,
    employeeName VARCHAR(100) NOT NULL,
    status VARCHAR(25) NOT NULL
);

CREATE TABLE jobTitles (
    jobTitleID INT AUTO_INCREMENT NOT NULL,
    jobTitles VARCHAR(50) NOT NULL,
    jobDescription VARCHAR(100),
    systemUserID INT NOT NULL,
	PRIMARY KEY (jobTitleID),
    CONSTRAINT fk_jobTitles_systemUsers FOREIGN KEY (systemUserID)
        REFERENCES systemUsers (systemUserID)
);

CREATE TABLE payGrades (
    payGradeID INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(25) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    systemUserID INT NOT NULL,
    PRIMARY KEY (payGradeID),
    CONSTRAINT fk_payGrades_systemUsers FOREIGN KEY (systemUserID)
        REFERENCES systemUsers (systemUserID)
);

-- creating INSERT instructions for each table
	-- simple
insert into systemUsers(username, userRole, employeeName, status)
values ('roxana_rozalia','admin', 'Roxana Rozalia', 'enabled');
insert into systemUsers(username, userRole, employeeName, status)
values ('cornel_costin','ESS', 'Cornel Costin', 'enabled');
insert into systemUsers(username, userRole, employeeName, status)
values ('daciana_costache','admin', 'Daciana Emilia Costache', 'disabled');
insert into systemUsers(username, userRole, employeeName, status)
values ('petre_dinu','ESS', 'Petre Marian Dinu', 'enabled');
insert into systemUsers(username, userRole, employeeName, status)
values ('cecilia_fabian','ESS', 'Cecilia Fabian', 'disabled');

insert into payGrades(name, currency, systemUserID)
values ('Level 1', 'euro', '10');
insert into payGrades(name, currency, systemUserID)
values ('Level 2', 'dollars', '9');
insert into payGrades(name, currency, systemUserID)
values ('Level 3', 'lek', '8');
insert into payGrades(name, currency, systemUserID)
values ('Level 4', 'pesos', '7');
insert into payGrades(name, currency, systemUserID)
values ('Level 5', 'rupee', '6');

insert into jobTitles(jobTitles, jobDescription, systemUserID)
values ('project manager', '', '2');
insert into jobTitles(jobTitles, jobDescription, systemUserID)
values ('business reporter', '', '1');
insert into jobTitles(jobTitles, jobDescription, systemUserID)
values ('office manager', '', '4');
insert into jobTitles(jobTitles, jobDescription, systemUserID)
values ('office clerk', '', '3');
insert into jobTitles(jobTitles, jobDescription, systemUserID)
values ('assistant buyer', '', '6');

	-- composed
insert into systemUsers(username, userRole, employeeName, status)
values ('emanuel_neculai', 'ESS', 'Emanuel Neculai', 'enabled'),
('traian_petrescu', 'ESS', 'Traian Petrescu', 'disabled'),
('flavia_constantinescu', 'ESS', 'Flavia Anastasia Constantinescu', 'enabled'),
('claudia_solomon', 'admin', 'Claudia Victoria Solomon', 'disabled'),
('matei_stan', 'ESS', 'Matei Dumitru Stan', 'enabled');

insert into payGrades(name, currency, systemUserID)
values ('Level 6', 'dinar', '5'),
('Level 7', 'dirham', '4'),
('Level 8', 'pound', '3'),
('Level 9', 'franc', '2'),
('Level 10', 'lev', '1');

insert into jobTitles(jobTitles, jobDescription, systemUserID)
values('UX designer', '', '5'),
('UI developer', '', '7'),
('SQL developer', '', '8'),
('Java developer', '', '10'),
('software tester', '', '9');

-- creating ALTER instructions
alter table systemUsers add column dateOfBirth date;

alter table systemUsers add column city varchar (100),
add column supervisorID int;

alter table payGrades add column minimumSalary int,
add column maximumSalary int;

alter table jobTitles add column jobSpecification varchar (100);

alter table jobTitles add column experienceLevel varchar(50);

alter table systemUsers drop column dateOfBirth;

alter table payGrades drop column name;
 
alter table jobTitles drop column jobSpecification;

-- creating UPDATE instructions
	-- simple
update systemUsers set userRole = 'ESS';
update systemUsers set status = 'enabled';
update payGrades set currency = 'EUR';
update jobTitles set jobDescription = 'this job is perfect';

	-- composed
update systemUsers set userRole = 'admin' where employeeName like 'c%';
update systemUsers set status = 'disabled' where username like '%n';
update systemUsers set city = 'Cluj' where status = 'enabled';
update systemUsers set supervisorID = 5 where city = 'Cluj';
update systemUsers set city = 'Bucuresti', supervisorID = 9 where systemUserID in (5, 10);
update payGrades set minimumSalary = 384, maximumSalary = 100000000;
update payGrades set currency = 'RON' where payGradeID in (1, 6, 10);
update payGrades set currency = 'GBP' where payGradeID not in (1, 2, 6, 7, 9, 10);
update payGrades set minimumSalary = 1898, maximumSalary = 50000 where currency = 'RON';
update payGrades set maximumSalary = 500, maximumSalary = 10000 where currency = 'EUR';
update jobTitles set jobDescription = 'this job is for experts' where jobTitles like '%p%';
update jobTitles set experienceLevel = 'entry' where jobTitleID in (4, 5, 10);
update jobTitles set experienceLevel = 'middle' where jobTitleID in (1, 2, 3);
update jobTitles set experienceLevel = 'senior' where jobTitleID not in (1, 2, 3, 4, 5, 10);

-- creating SELECT instructions
	-- selecting all columns and entries
select * from systemUsers;
select * from payGrades;
select * from jobTitles;

	-- selecting multiple columns
select systemUserID, username, employeeName from systemUsers;
select employeeName, status from systemUsers;
select username, userRole from systemUsers;
select username, userRole, status from systemUsers;
select payGradeID, currency from payGrades;
select jobTitles, jobDescription from jobTitles;

	-- selecting one column
select username from systemUsers;
select currency from payGrades;
select jobTitles from jobTitles;
select userRole from systemUsers;

	-- selecting by different criteria with a simple filter
select * from systemUsers where employeeName in ('Petre Marian Dinu');
select * from systemUsers where userRole = 'admin';
select * from systemUsers where userRole = 'ESS';
select * from systemUsers where status = 'enabled';
select * from systemUsers where status = 'disabled';
select * from systemUsers where employeeName like 'c%';
select * from jobTitles where jobTitles like 'u%';
select * from jobTitles where jobDescription is null;
select * from payGrades where currency like 'GBP';
select * from payGrades where maximumSalary like '50000';

	-- selecting by different criteria with composed filters
select * from systemUsers where employeeName like 'r%' and city = 'Cluj';
select * from systemUsers where userRole = 'ESS' and city = 'Bucuresti';
select * from systemUsers where status = 'enabled' and userRole = 'ESS';
select * from systemUsers where userRole like 'ESS' or status like 'enabled' and city = 'Cluj'; 
select * from systemUsers where (userRole like 'ESS' or status like 'enabled') and city = 'Cluj';
select * from jobtitles where jobTitles like '%d%' and experienceLevel like '%i%';
select * from jobTitles where (jobTitles like 'o%' or experienceLevel like '%y') and jobDescription = 'this job is perfect';
select * from payGrades where currency = 'RON' and minimumSalary like 1898;
select * from payGrades where (minimumSalary = '384' or maximumSalary = '10000') and currency = 'EUR';

-- instructions with aggregate functions
select sum(maximumSalary) from payGrades;
select avg(minimumSalary) from payGrades;
select min(minimumSalary) from payGrades;
select max(maximumSalary) from payGrades;
select count(*) from systemUsers;
select count(city) from systemUsers;
select count(supervisorID) from systemUsers;

-- instructions with HAVING clause
	-- how many employees have a supervisor and how many supervisors each one has
select employeeName, systemUserID, count(supervisorID) from systemusers
group by employeeName having count(supervisorID);

	-- the number of employees in every city
select count(systemUserID), city from systemUsers
group by city having count(systemUserID) > 1;

	-- employees with salary higher than 50.000
select p.systemUserID, employeeName, avg(maximumSalary) as avg_salary
from payGrades p inner join systemUsers s on s.systemUserID=p.systemUserID
group by systemUserID, employeeName
having avg(maximumSalary)>50000;

	-- employees with minimum salary lower than 500
select p.systemUserID, employeeName, currency, min(minimumSalary) as min_salary
from payGrades p inner join systemUsers s on s.systemUserID=p.systemUserID
group by systemUserID, employeeName, currency
having min(minimumSalary)<500;

	-- the number of employees on every level of experience
select count(systemUserID), experienceLevel from jobTitles
group by experienceLevel having count(systemUserID);

	-- employees with the maximum salary equal to 100.000.000 and their job title
select j.systemUserID, jobTitles, experienceLevel, max(maximumSalary)
from jobTitles j inner join payGrades p on j.systemUserID = p.systemUserID
group by systemUserID, experienceLevel, maximumSalary
having max(maximumSalary)=100000000;

-- instructions with the GROUP BY clause & ORDER BY clause
select userRole, employeeName from systemUsers group by systemUserID limit 6;
select currency, minimumSalary from payGrades group by payGradeID, maximumSalary limit 5;
select experienceLevel, jobTitles from jobtitles group by jobTitleID;
select payGradeID from payGrades group by minimumSalary order by minimumSalary asc;
select payGradeID from payGrades order by maximumSalary asc;
select * from systemUsers order by status;
select * from systemUsers order by city;
select * from systemUsers order by employeeName desc;
select userRole, city, employeeName from systemUsers order by employeeName;

-- TRUNCATE instructions
truncate table paygrades;
truncate table jobTitles;

-- DELETE instructions
delete from jobTitles where experienceLevel = 'senior';
delete from jobTitles where jobTitles like '%er';
delete from jobTitles where jobDescription like 't%';
delete from systemUsers where city = 'Bucuresti';
delete from systemUsers where userRole like 'ESS';
delete from systemUsers where status = 'disabled';
delete from systemUsers where employeeName like 'r%';

-- checking the TRUNCATE and DELETE instructions
select * from systemUsers;
select * from jobTitles;
select * from paygrades;
