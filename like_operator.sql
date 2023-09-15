--1
select Firstname from Students
where FirstName like 'K%'

--2
select Firstname from Students
where Firstname like'_____'

--3
select FirstName, LastName from Students
where City like '_____a'

--4
select * from Students
where Lastname like '%tel'

--5
select * from Students
where Firstname like 'ha%t'

--6
select * from Students
where Firstname like 'k_y%'

--7
select FirstName from Students 
where Website is null
and FirstName like '_____'

--8
select * from Students
where LastName like '%jer%'

--9
select * from Students
where City like 'R%'
or City like 'B%'

--10
select * From Students
where Website is not null

--11
select * from Students
where FirstName like '[A-H]%'

--12
select * from Students
where FirstName like '_[a,e,i,o,u]%'

--13
select FirstName from Students
where City like '%rod%'

--14
select FirstName, LastName from Students
where Website like 'bi%'

--15
select City from Students
where LastName like '______'

--16
select * from Students
where City like '_____'
and City not like 'ba%'

--17
select * from Students
where Division like 'II%'

--18
select FirstName from Students
where Division like '%BC%'

--19
select StuID, City from Students
where Division like '______' 
and Website is not null

--20
select * from Students
where Firstname not like '__[a,e,i,o,u]%'

--21
select StuID, FirstName from Students
where Division like '%[BCX,BCY,BCW,BCZ]'

--22
select top 3 FirstName from Students
where City like '%rat%'

--23
select * from Students
where LastName not like '%[a,e,i,o,u]'

--24
select StuID from Students
where FirstName is null 
or LastName is null

--25
select * from Students
where Website not like '%.com'

--26
select * from Students
where FirstName like '____'
and LastName like '____'

--27
select * from Students
where FirstName like 'k%r'