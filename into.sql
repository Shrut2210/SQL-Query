--1
select * into WorldCup from cricket

--2
select name,city into T20 from cricket
where 1 = 2

--3
select * into IPL from cricket
where 1 != 1

--4
insert into IPL 
select * from cricket
where name like '_a_____%'

--5
delete from ipl