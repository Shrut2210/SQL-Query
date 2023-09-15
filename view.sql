--1
create view Personal as select * from student

--2
create view Student_Details as select Name, Branch, SPI from student

--3
create view Academic as select RNO, Name, Branch from student

--4
create view Student_Data as select * from student
where bklog > 2

--5
create view Student_Pattern as select RNo, Name, Branch from student
where Name like '____'

--6
insert into Academic select 107, 'Meet', 'ME'

--7
update student_details
set Branch = 'ME'
where name = 'Amit'
and branch = 'ce'

--8
delete from Academic 
where Rno = 104

--9
create view SPI as select * from student
where spi > 9.5

--10
create view BKLOG as select * from Student
where Bklog = 0