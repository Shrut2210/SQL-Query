--1
select max(Salary) as Maximum, min(Salary) as Minimum, sum(Salary) as Total_Sal, avg(Salary) as Average_Sal from Employee

--2
select count(EName) from Employee

--3
select max(Salary) from Employee
where Department = 'IT'

--4
select count(distinct City) from Employee