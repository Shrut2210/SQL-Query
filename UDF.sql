--1. Write a function to print "hello world".

create function fn_hello()
returns varchar(50)
as
begin
	Declare @str as varchar(50)
	set @str = 'Hello World'
	return @str
end

--2. Write a function which returns addition of two numbers.

create function fn_Add(@num1 int, @num2 int)
returns int
as
begin 
	return @num1 + @num2
end

--3. Write a function to print cube of given number.

create function fn_cube(@num int)
returns int
begin 
	return @num*@num*@num
end

--4. Write a function to check where given number is ODD or EVEN.

create function fn_oddeven(@num int)
returns varchar(10)
as
begin 
	Declare @str as varchar(10)
	if(@num%2=0)
	set @str = 'Even'
	else
	set @str = 'Odd'

	return @str
end 

--5. Write a function to compare two integers and returns the comparison result. (Using Case statement)

create function fn_compare(@num1 int, @num2 int)
returns varchar(50)
as
begin
	Declare @str as varchar(50)

	return
		case
			when @num1>@num2 then 'num1>num2'
			when @num2>@num1 then 'num2>num1'
			else 'num1=num2'
		end
end
--6. Write a function to print number from 1 to N. (Using while loop)

alter function fn_loop(@num int)
returns varchar(100)
as
begin
	Declare @str as varchar(100)
	set @str = '1'
	Declare @i as int
	set @i = 2

	while(@i<=@num)
		begin
		set @str = @str + cast(@i as varchar(5))
		set @i = @i+1
		end

	return @str
end
--7. Write a function to print sum of even numbers between 1 to 20.

create function fn_sum()
returns int
as
begin
	Declare @sum as int
	set @sum = 0
	Declare @num as int
	set @num = 1

	while(@num<=20)
		begin
			if(@num%2=0)
			begin
				set @sum = @sum + @num
			end
			set @num = @num + 1
		end

	return @sum
end
--8. Write a function to check weather given number is prime or not.

create function fn_prime(@num int)
returns varchar(100)
as
begin
	Declare @c as int
	set @c = 0
	Declare @i as int
	set @i = 2
	Declare @str as varchar(100)

	while(@i<@num)
	begin
		if(@num%@i = 0)
		begin
			set @c = @c + 1
		end
		set @i = @i+1
	end

	if(@c=0)
		begin
			set @str = 'Prime'
		end
	else
		begin
			set @str = 'Not Prime'
		end

	return @str
end

--select dbo.fn_prime(5)
--9. Write a function which accepts two parameters start date & end date, and returns a difference in days.


--10. Write a function which accepts year & month in integer and returns total days in given month & year