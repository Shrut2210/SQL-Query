 --1
 select getdate() as Today_Date

 --2
 select dateadd(day,365,getdate())

 --3
 select convert(varchar(50),getdate(),103)
 select convert(varchar(50),getdate(),104)
 select convert(varchar(50),getdate(),105)
 select convert(varchar(50),getdate(),106)
 select convert(varchar(50),getdate(),107)
 select convert(varchar(50),getdate(),108)
 select convert(varchar(50),getdate(),109)

 --4
 select convert(varchar(50),getdate(),106) 

 --5
  select convert(varchar(50),getdate(),107)

  --6
  select datediff(month,'2008-12-31','2009-03-31')

  --7
  select datediff(year,'2012-01-25','2010-09-14')

  --8
  select datediff(hour,'2012-01-25 07:00:00','2012-01-26 10:30:00')

  --9
  select day('2016-05-12'),month('2016-05-12'),year('2016-05-12')

  --10
  select dateadd(year,5,getdate())

  --11
  select dateadd(month,-2,getdate())

  --12
  select datename(month,getdate())
  select datepart(month,getdate())

  --13
  select eomonth(getdate())

  --14
  select dateadd(day,30,getdate())

  --15
  select datediff(year,'2004-10-22',getdate())
  select datediff(month,'2004-10-22',getdate())

