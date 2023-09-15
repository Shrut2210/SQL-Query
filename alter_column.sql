--1
alter table Student add City varchar(50), Backlog int not null

--2
alter table Student alter column Name varchar(35)

--3
alter table Student alter column CPI int

--4
sp_rename 'Student.Enrollment_No', 'ENO'

--5
alter table Student drop column City

--6
sp_rename 'Student', 'Student_Master'

--7
alter table Student_Master drop column Backlog

--8
alter table Student_Master alter column Name varchar(20) not null

--9
sp_rename 'Student_Master.BirthDate', 'BDate'

--10
alter table Student_Master alter column ENO varchar(12)