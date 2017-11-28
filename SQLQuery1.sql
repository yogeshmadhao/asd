Create Database PTSample

use PTSample
--Table for Storing Book Details
create table Books
(
	ID int primary key,
	Name varchar(100) not null,
	Price money not null,
	Description varchar(200) not null,
)
go

--Stored Procedure for inserting data
create proc usp_InsertBook(@id int,@name varchar(100),@price money,@desc varchar(200))
as
Begin 
insert into Books values(@id,@name,@price,@desc)
end
go

--Stored Procedure for updating data
create proc usp_UpdateBook(@id int,@name varchar(100),@price money,@desc varchar(200))
as
begin 
update Books
set Name=@name,Price=@price,Description=@desc
where ID=@id
end
go

--stored procedure for deleteing data
create proc usp_DeleteBook(@id int)
as
begin 
delete from Books
where ID=@id
end
go

--stored procedure for displaying all record
create proc usp_ShowBook
as
begin
select * from Books
end
go

--stored procedure for searching data
create proc usp_SearchBook(@id int)
as
begin 
select * from Books where ID=@id
end
go





