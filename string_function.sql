--1
select len(NULL)
select len('  hello   ')
select len('')

--2
select upper('shruti')
select lower('shruti')

--3
select SUBSTRING('shruti',1,3)

--4
select SUBSTRING('shruti vadgama',3,8)

--5
select replace('abc123efg','123','XYZ')
select replace('abcabcabc','c','5')

--6
select ascii('a')
select ascii('A')
select ascii('z')
select ascii('Z')
select ascii('0')
select ascii('9')

--7
select char(97),char(65),char(122),char(90),char(48),char(57)

--8
select ltrim('hello world          ')

--9
--     hello world
select rtrim('     hello world          ')

--10
select concat(substring('SQL Server',1,4),substring('SQL Server',len('SQL Server')-4,5))

--11
select cast(1234.56 as int)

--12
select convert(int,10.58)

--13
--          shruti
select space(10) + 'shruti'

--14
select concat('shruti',' vadgama')

--15
select REVERSE('Darshan')

--16
select REPLICATE('Shruti ', 3)

--17
select stuff('shruti',1,3,'HTML')

--18
select coalesce(null,'shruti',null) 

--19
select ISNUMERIC(1234)

--20
select CHARINDEX('t','customers')