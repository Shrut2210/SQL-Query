--1
select * from student, result
select * from student cross join result

--2
select student.RNO, Student.Name, Student.Branch, Result.SPI
from student
inner join result
on student.RNO = Result.RNO
where Branch = 'ce'

--3
select student.RNO, Student.Name, Student.Branch, Result.SPI
from student
inner join result
on student.RNO = Result.RNO
where Branch != 'ec'

--4
select Student.Branch , avg(result.spi) as avrage 
from Student
inner join result
on Student.RNO = Result.RNO
group by Student.Branch

--5
select Student.Branch , avg(result.spi) as Avrage 
from Student
inner join result
on Student.RNO = Result.RNO
group by Student.Branch
order by avg(result.spi)

--6
select Student.Branch, avg(result.spi) 
from Student
inner join Result
on Student.RNO = Result.RNO
where Branch IN('ce','me')
group by Student.Branch

--7
select * from student
left outer join result
on Student.RNO = Result.RNO

--8
select * from student
right outer join result
on Student.RNO = Result.RNO

--9
select * from Student
full outer join result
on Student.RNO = Result.RNO

--10
select e.name as EmployeeName, m.name as ManagerName 
from Employee e
left outer join Employee m
on e.EmployeeNo = m.MangerNo
