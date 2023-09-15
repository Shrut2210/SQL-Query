--1 select person with their departmentname & code

select person.PersonName, Department.DepartmentCode , Department.DepartmentName
from Person
left outer join Department
on Person.DepartmentID = Department.DepartmentID


--2 retrive person name whose location in c-block

select Person.PersonName
from Person
left outer join Department
on Person.DepartmentID = Department.DepartmentID
where Department.Location = 'C-Block'

--3 display personname, salary, departmentname who belongs to jamnagar

select Person.PersonName, Person.Salary, Department.DepartmentName
from Person
inner join Department
on person.DepartmentID = Department.DepartmentID
where Person.City = 'Jamnagar'

--4 display personname, salary, departmentname who not belongs to rajkot

select Person.PersonName, Person.Salary, Department.DepartmentName
from Person
inner join Department
on person.DepartmentID = Department.DepartmentID
where Person.City != 'Rajkot'

--5 display all details of person who is in computer department

select Person.PersonID, Person.PersonName, Person.DepartmentID, Person.JoiningDate, Person.Salary, Person.City
from Person
left outer join Department
on Department.DepartmentID = Person.DepartmentID
where Department.DepartmentName = 'Computer'

--6 find all person who does not belongs to any department

select Person.PersonID, Person.PersonName, Person.DepartmentID, Person.JoiningDate, Person.Salary, Person.City
from Person
left outer join Department
on Department.DepartmentID = Person.DepartmentID
where Department.DepartmentName is null

--7 Retrieve person’s name who joined Civil department after 1-Aug-2001.

select Person.PersonName, Department.DepartmentName from Person
left outer join Department
on Person.DepartmentID = Department.DepartmentID
where Department.DepartmentName = 'Civil'
and Person.JoiningDate > '2001-08-01'

--8 Display all the person's name with department whose joining dates difference with current date is
--more than 365 days

select Person.PersonName , Department.DepartmentName from Person
inner join Department
on Person.DepartmentID = Department.DepartmentID
where DATEDIFF(year,person.joiningdate,getDate()) > 1

--9 Find department wise person counts.

select Department.DepartmentName, count(Person.DepartmentID) from Person
inner join Department
on Person.DepartmentID = Department.DepartmentID
group by Department.DepartmentName

--10 Give department wise maximum & minimum salary with department name.

select Department.DepartmentName , min(person.salary), max(person.salary) from person
inner join Department
on Person.DepartmentID = Department.DepartmentID
group by Department.DepartmentName

--11 Find city wise total, average, maximum and minimum salary.

select Person.City , sum(person.salary), AVG(person.salary) , min(person.salary), max(person.salary) from Person
inner join Department
on Department.DepartmentID = Person.DepartmentID
group by Person.City

--12 Find all departments whose total salary is exceeding 100000.

select Department.DepartmentName, sum(person.salary) from Person
inner join Department
on Person.DepartmentID = Department.DepartmentID
group by Department.DepartmentName
having sum(person.salary) > 100000

--13 Find average salary of person who belongs to Ahmedabad city.

select Person.City, avg(person.salary) from Person
left outer join Department
on Person.DepartmentID = Department.DepartmentID
group by Person.City
having Person.city = 'Ahmedabad'

--14 List all departments who have no person.

select Department.DepartmentName from Person
left outer join Department
on Department.DepartmentID = Person.DepartmentID
group by Department.DepartmentName
having count(person.departmentid) = 0

--15 List out department names in which more than two persons are working

select Department.DepartmentName , count(person.departmentID) from Person
left outer join Department
on Department.DepartmentID = Person.DepartmentID
group by Department.DepartmentName
having count(person.departmentID) > 2

--16 Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In
--single column)select Person.PersonName + ' lives in ' + Person.City + ' and works in ' + Department.DepartmentName from Personinner join Departmenton Person.DepartmentID = Department.DepartmentID--17 Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly.
--(In single column)

select Person.PersonName + ' earns ' + cast(Person.Salary as varchar)+ ' from department ' + Department.DepartmentName + ' monthly ' from person
inner join Department
on Department.DepartmentID = Person.DepartmentID

--18 Find city & department wise total, average & maximum salaries.

select Person.City , Department.DepartmentName, sum(person.salary), avg(person.salary), max(person.salary) from Person
inner join Department
on Department.DepartmentID = Person.DepartmentID
group by person.city , Department.DepartmentName

--19 Give 10% increment in Computer department employee’s salary. (Use Update)
update person set salary = Person.salary*10/100 + Person.Salary
where DepartmentID = 2
