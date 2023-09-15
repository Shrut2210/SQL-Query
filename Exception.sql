--1.  Handle Divide by Zero Error and Print message like: Error occurs that is - Divide by zero error.

begin try
	select 1/0
end try
begin catch
	print 'Error occurs that is -' + error_message()
end catch

--2.  Try to convert string to integer and handle the error using try�catch block.
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
--Error like no Customer_id is available in database.

--6. Handle a Foreign Key Violation while inserting data into Orders table and print appropriate error message.