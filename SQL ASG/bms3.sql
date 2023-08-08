create table dbo.[language](
lanId int identity not null,
[lanName] int not null,
constraint pk_lanId primary key(lanId)
)

alter table dbo.[language] alter column
lanName varchar(100) not null


create table dbo.movie(
movieId int identity not null,
movieName varchar(100),
constraint pk_movieId primary key(movieId)
)

create table dbo.genre(
genreId int identity not null,
genreName varchar(100) not null,
constraint pk_genreId primary key(genreId)
)

create table MovieLanguage(
mlId int identity not null,
movieId int not null,
lanId int not null,
constraint pk_mlId primary key(mlId),
constraint fk_movieId foreign key(movieId) references movie(movieId),
constraint fk_lanId foreign key(lanId) references language(lanId)
)

create table MovieGenre(
mgId int identity not null,
movieId int,
genreId int
constraint pk_mgId primary key(mgId),
constraint fk_movieId1 foreign key(movieId) references movie(movieId),
constraint fk_genreId foreign key (genreId) references genre(genreId)
)


create or alter  procedure addLanguage
(@lanName varchar(100))
as
begin
insert into [language] values(@lanName)
end

exec getLanguage @lanName='Malayalam'


create or alter procedure AddMovie
(@movieName varchar(100)
)
as
begin
insert into movie values(@movieName)
end

exec getMovie @movieName='bhahubali'

create or alter procedure AddGenre
(@genreName varchar(100))
as
begin
insert into genre values(@genreName)
end

exec getGenre @genreName = 'thriller'

create procedure AddMovieLanguage
(@movieId int ,@lanId int)
as
begin
insert into  MovieLanguage values(@movieId,@lanId)
end

create procedure AddMovieGenre
(@genreId int ,@movieId int)
as
begin
insert into  MovieGenre values(@genreId,@movieId)
end



--------------------------



create table theatre(
theatreId int identity not null,
theatreName varchar(100),
constraint pk_thatreId primary key(theatreId)

)

create table [format](
formatId int identity not null,
formatName varchar(100),
constraint pk_formatId primary key(formatId)
)

create table payment(
paymentId int identity not null,
paymentType varchar(100),
constraint pk_paymentId primary key(paymentId)
)

create table customer(
customerId int identity not null,
customerName varchar(100),
customerMob varchar(100)
constraint pk_customerId primary key(customerId)
)

create table seat(
seatId int identity not null,
seatName varchar(100),
constraint pk_seatId primary key(seatId)
)

create procedure addformat
(@formatName varchar(100))
as
begin
insert into [format] values(@formatName)

end

exec addformat @formatName='2d'


create procedure addtheatre
(@theatreName varchar(100))
as
begin
insert into [dbo].[theatre] values(@theatreName)

end

exec addtheatre @theatreName='pvr'


create procedure addpayment
(@paymentType varchar(100))
as
begin
insert into Payment values(@paymentType)

end

exec addpayment @paymentType='debit card'

create procedure addcustomer
(@customerName varchar(100),@customermob varchar(100))
as
begin
insert into customer values(@customerName,@customermob)

end

exec addcustomer @customerName='ann',@customermob = '987654321'

create procedure addseat
(@seatName varchar(100))
as
begin
insert into seat values(@seatName)

end


exec addseat @seatName='1A'

create table [location](
locationId int identity not null,
locationName varchar(100),
theatreId int
constraint pk_locationId primary key(locationId),
constraint fk_theatreId foreign key (theatreId) references theatre(theatreId)
)

create procedure 