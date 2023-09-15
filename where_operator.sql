--1
Select * From DEPOSIT

--2
Select * From BORROW

--3
Select * From CUSTOMERS

--4
Select ActNo, CName,Amount From DEPOSIT

--5
Select LOANNO,AMOUNT From BORROW 

--6
Select * from BORROW
Where BNAME = 'Andheri'

--7
Select ActNo,Amount from deposit
where actno = 106

--8
select * from borrow
where amount > 5000

--9
select cname from deposit
where adate > '1996-12-01'

--10
select cname from deposit
where actno < 105

--11
select cname from CUSTOMERS
where city in('nagpur','delhi')

--12
select cname,bname from DEPOSIT
where amount > 4000 and actno <105

--13
select * from BORROW
where amount between 3000 and 8000

--14
select * from deposit
where bname != 'andheri'

--15
select cname from BORROW
where amount is null

--16
select actno,cname,amount from deposit
where bname in('ajni','karolbagh','m.g.road') 
and actno < 104

select actno,cname,amount from DEPOSIT
where bname = 'ajni'
or bname = 'karolbagh'
or bname = 'm.g.road'
and actno < 104

--17
select top 5 * from CUSTOMERS

--18
select top 3 * from deposit
where amount > 1000

--19
select top 5 loanno,cname from BORROW
where bname != 'andheri'

--20
select distinct city from CUSTOMERS

--21
select distinct bname from BRANCH

--22
select * from CUSTOMERS
order by city

--23
select * from deposit
order by amount

--24
select * from CUSTOMERS
order by city desc

--25
select distinct cname as UNI_Borrowers from BORROW
