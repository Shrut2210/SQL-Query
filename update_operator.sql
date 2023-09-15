--1
select * from DEPOSIT
update deposit set amount = 5000
where amount = 3000

--2
update borrow set bname = 'c.g.road'
where cname = 'anil'
and bname = 'vace'

--3
update deposit set actno = 111, amount = 5000
where cname = 'sandip'

--4
update borrow set amount = (amount + (amount/10))

--5
update deposit set amount = 3000
where actno between 103 and 107

--6
update borrow set amount = null
where loano = 321

--7
update borrow set loano = 401, bname = 'ajni'
where loano = 201 
and bname = 'vrce'

--8
update deposit set cname = 'anil jain'
where cname = 'anil'

--9
update deposit set cname = 'ramesh', bname = 'vrce', amount = 5500
where actno = 102

--10
update borrow set bname = null, amount = null
where loano = 481
and cname = 'kranti'
