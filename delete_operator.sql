--1
delete from customers 
where city = 'bombay'

--2
delete from deposit
where amount <= 1000

--3
delete from borrow
where bname = 'ajni'

--4
delete from borrow 
where loano between 201 and 210

--5
delete from deposit 
where adate > '1996-12-01'

--6
truncate table customers

--7
delete from deposit
where cname = 'anil'
and actno = 101

--8
delete from deposit
where bname != 'andheri'

--9
delete from borrow
where amount < 2000
and bname != 'vrce'

--10
drop table branch