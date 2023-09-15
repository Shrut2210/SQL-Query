--1.  Handle Divide by Zero Error and Print message like: Error occurs that is - Divide by zero error.

begin try
	select 1/0
end try
begin catch
	print 'Error occurs that is -' + error_message()
end catch

--2.  Try to convert string to integer and handle the error using try…catch block.begin try	select '10' - 19end trybegin catch	print error_message()end catch--3. Create a procedure that prints the sum of two numbers: take both numbers as integer & handle 
--exception with all error functions if any one enters string value in numbers otherwise print result.

create proc Sum
@val1 int,
@val2 varchar(10)
as
begin
	begin try
		select @val1 + cast(@val2 as int)
	end try
	begin catch
		print error_message()
	end catch
end

exec Sum 10, 'shruti'

--4. Handle a Primary Key Violation while inserting data into customers table and print the error details 
--such as the error message, error number, severity, and state

insert into Customers 
values(4, 'Yagna', 'Ygana@gmail.com')

begin try
	insert into Customers values(6, 'Yagnag', 'Yagna@gmail.com')
end try
begin catch
	print error_message() + error_number() + error_severity() + error_state()
end catch

--5. Throw custom exception using stored procedure which accepts Customer_id as input & that throws 
--Error like no Customer_id is available in database.create proc ThrowExce@id intasbegin 	begin try		if not exists(select * from Customers where Customer_id = @id)		begin 			throw 50001, 'Id not found', 1		end	end try	begin catch		print error_message()	end catchendexec ThrowExce 2

--6. Handle a Foreign Key Violation while inserting data into Orders table and print appropriate error message.begin try	insert into Orders values(104, 3, '2020-12-19')end trybegin catch	print error_message()end catch--7. Throw custom exception that throws error if the data is invalid.declare @salary intbegin try	set @salary = -2000	if(@salary < 0)	begin		throw 50001, 'Salary may not negative', 1	endend trybegin catch	print error_message()end catch--8. Create a procedure which prints the error message that “The Customer_id is already taken. Try another one”.create proc InsertVal@Id int,@name varchar(250),@mail varchar(50)asbeginbegin try	if exists(select * from Customers where Customer_id = @Id)	begin		throw 50001, 'Id is already taken', 1	end	else	begin		insert into Customers values(@Id, @name, @mail)	endend trybegin catch	print error_message()end catchendexec InsertVal 1, 'shruti', 'shr@gmail.com'