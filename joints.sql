--1
select Village.VillageName,City.CityName from Village
full outer join city
on Village.CityID = City.CityID
where city.CityName = 'Rajkot'

--2
select City.CityName , Village.VillageName, City.Pincode
from city
right outer join Village
on City.CityID = Village.CityID

--3
select city.CityName, count(village.CityID) as NumOfVillages
from city
full outer join Village
on City.CityID = Village.CityID
group by City.CityName
having count(village.CityID) > 1

--4
select city.CityName 
from city
left outer join Village
on City.CityID = Village.CityID
group by City.CityName
having count(village.CityID) = 0

--5
select city.CityName, count(village.CityID)
from city
full outer join Village
on City.CityID = Village.CityID
group by city.CityName

--6
select count(*) from
(
select City.CityName, count(Village.villagename) as total
from city
left join Village
on City.CityID = Village.CityID
group by city.CityName
) as temp
where total > 1