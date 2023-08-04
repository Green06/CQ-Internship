CREATE TABLE Movie(
MovieId int NOT NULL IDENTITY,
MovieName varchar(100) not null
CONSTRAINT pk_MovieDetails PRIMARY KEY(MovieId)
)

CREATE TABLE Language(
LanguageId int NOT NULL IDENTITY,
LanguageName varchar(100) not null
CONSTRAINT pk_Language PRIMARY KEY(LanguageId)
)

CREATE TABLE Genre(
GenreId int NOT NULL IDENTITY(100,1),
GenreType varchar(20) not null
CONSTRAINT pk_Genre PRIMARY KEY(GenreId)
)

CREATE TABLE LanguageMovieDetails(
LanguageMovieDetailsID int NOT NULL IDENTITY,
MovieId int,
LanguageId int,
CONSTRAINT pk_LanguageMovieDetails PRIMARY KEY(LanguageMovieDetailsID),
constraint fk_MovieId foreign key(MovieId) references Movie(MovieId),
constraint fk_LanguageId foreign key(LanguageId) references Language(LanguageId)
)

CREATE TABLE MovieGenre(
MovieGenreID int NOT NULL IDENTITY,
MovieId int,
GenreId int,
CONSTRAINT pk_MovieGenreID PRIMARY KEY(MovieGenreID),
constraint fk_MovieId2 foreign key(MovieId) references Movie(MovieId),
constraint fk_GenreId foreign key(GenreId) references Genre(GenreID)
)

CREATE TABLE Customer(
CustomerID int NOT NULL IDENTITY,
CustomerName varchar(100),
CustomerMob varchar(100)
CONSTRAINT pk_CustomerID PRIMARY KEY(CustomerID),
)

CREATE TABLE Payment(
PaymentID int NOT NULL IDENTITY,
PaymentType varchar,
CONSTRAINT pk_PaymentID PRIMARY KEY(PaymentID)

)

alter table payment
alter column PaymentType varchar(100)

CREATE TABLE format(
formatID int NOT NULL IDENTITY,
fotmatType varchar,
CONSTRAINT pk_format PRIMARY KEY(formatID)
)
alter table format
alter column fotmatType varchar(100)

CREATE TABLE Location(
locationID int NOT NULL IDENTITY,
locationName varchar(100),
CONSTRAINT pk_locationID PRIMARY KEY(locationID)

)

CREATE TABLE [user](
userID int NOT NULL IDENTITY,
userName varchar(100),
Mob varchar(100) unique not null,
email varchar(300) 
CONSTRAINT pk_userID PRIMARY KEY(userID)
)


CREATE TABLE theatre(
theatreid int not null identity,
theatrename varchar(100) not null,
totalseat int not null,
formatid int ,
locationid int
CONSTRAINT pk_theatre PRIMARY KEY(theatreid)
constraint fk_format foreign key(formatid) references format(formatID),
constraint fk_location foreign key(locationid) references location(locationID)

)


CREATE TABLE Booking(
bookingid int not null identity,
theatreid int not null,
movieid int not null,
date datetime,
formatid int not null,
CONSTRAINT pk_bookingid PRIMARY KEY(bookingid),
constraint fk_theatreid foreign key(theatreid) references theatre(theatreid),
constraint fk_movieid1 foreign key(movieid) references movie(movieid),
constraint fk_formatid foreign key(formatid) references format(formatid)
)


create table seat(
seatid int not null identity,
seatname varchar(100),
theatreid int not null,
price int,
CONSTRAINT pk_seatid PRIMARY KEY(seatid),
constraint fk_theatreid2 foreign key(theatreid) references theatre(theatreid),
)



create table bookingSeat(
detailid int not null identity,
bookingid int  not null,
--movieid int  not null,
seatid int not null,
price int,
CONSTRAINT pk_detailid1 PRIMARY KEY(detailid),
constraint fk_bookingid1 foreign key(bookingid) references booking(bookingid),
--constraint fk_movieid3 foreign key(movieid) references movie(movieid),
constraint fk_seatid1 foreign key(seatid) references seat(seatid)
)



create procedure addPayment
 @paymentType varchar(100)
as 
begin
insert into Payment values(@paymentType)
end

exec addPayment @paymentType='debit'
exec addPayment @paymentType='credit'
exec addPayment @paymentType='cash'

select * from Payment


create procedure addLocation
@LocationName varchar(100)
as
begin
insert into Location values(@LocationName) 
end
exec addLocation @LocationName='kottayam'
exec addLocation @LocationName='idukki'
exec addLocation @LocationName='tvm'

select * from Location

create procedure addFormat
@FormatName Varchar(100)
as begin
insert into format values(@FormatName)
end


exec addFormat @FormatName='2D'

exec addFormat @FormatName='3D'

exec addFormat @FormatName='imax'


select * from format


create procedure addgenre
@genre varchar(100)
as
begin
insert into Genre values(@genre)
end

exec addgenre @genre ='comedy'
exec addgenre @genre ='horror'
exec addgenre @genre ='thriller'

create procedure addlanguage
@language varchar(100)
as 
begin
insert into Language values(@language)
end

exec addlanguage @language ='malayalam'
exec addlanguage @language ='korean'
exec addlanguage @language ='tamil'

create procedure addmovie
@moviename varchar(100)
as 
begin
insert into Movie values(@moviename)
end


exec addmovie @moviename ='bhahubali'
exec addmovie @moviename ='c u soon'
exec addmovie @moviename ='witch'


create procedure adduser
@name varchar(100),@mob varchar(100),@email varchar(300)
as
begin
insert into [user] values(@name,@mob,@email)
end


exec adduser @name ='anu',@mob='987654321',@email='anu@ymail'
exec adduser @name ='ann',@mob='876543219',@email='ann@xmail'
exec adduser @name ='annie',@mob='887654321',@email='annie@zmail'



CREATE TYPE entity AS TABLE(
    [Id] int 
);

CREATE TYPE bookinseatType AS TABLE(
    [Id] int ,
    price int
);


create procedure addTheatre
@name varchar(100),@totalSeat int,
@formatid int,
@locationid int
as
begin
insert into theatre values(@name,@totalSeat,@formatid,@locationid)
end

exec addTheatre @name ='pvr',@totalSeat=100,@formatid=1,@locationid=1

select * from theatre
select * from format
select * from booking
select * from LanguageMovieDetails

theatreid	theatrename	totalseat	formatid	locationid


create procedure addbooking
@theatreid int ,@movieid int,@date datetime,@formatid int
as
begin
insert into Booking values(@theatreid,@movieid,@date,@formatid)
end

exec addbooking @theatreid=1,@movieid=1,@date='2023-10-29 14:56:59',@formatid=1

create procedure addseat
@saetname varchar(100),@theatreid int,@price int
as
begin
insert into seat values(@saetname,@theatreid,@price)
end

exec addseat
@saetname='1A' ,@theatreid =1,@price =300

create procedure addMovieLanguage
@movieid int,@lanid entity readonly
@genreid entity readonly
as
begin
insert into LanguageMovieDetails values(@movieid)


insert into [Language] values(MovieId,LanguageId)
select @i,[ID] from @lanid
end


select * from LanguageMovieDetails
LanguageMovieDetailsID	MovieId	LanguageId

create procedure addMovieLanguage
@movieid int,@lanid entity readonly
as
begin
insert into LanguageMovieDetails(MovieId,LanguageId)
select @movieid,Id from @lanid
end


CREATE PROCEDURE dbo.AddMovieGenre
(
	@MovieID INT,
	@GenreIds entity READONLY
)
AS
BEGIN
	INSERT dbo.MovieGenre (MovieId, MovieGenreID)
	SELECT @MovieID, Id
	FROM @GenreIds
END
GO

create or alter procedure addbooking
@
as
begin

go

sp_helptext addbooking

select * from bookingSeat
alter table bookingDetails add price int

go
create or alter procedure addbooking  
@theatreid int ,@movieid int,@date datetime,@formatid int,  
@seatid bookinseatType readonly
as  
begin  
insert into Booking values(@theatreid,@movieid,@date,@formatid)  
declare @i int =@@identity
insert into bookingSeat(bookingid,seatid,price)
select @i,Id,price from @seatid
end

select * from booking 

select * from bookingSeat 

declare @i bookinseatType
insert into @i select 1,100

exec addbooking @theatreid=1,@movieid=2,@date='2023-10-29 14:56:59.000',@formatid=2,@seatid = @i