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


create procedure getLanguage
(@lanName varchar(100))
as
begin
insert into [language] values(@lanName)
end

exec getLanguage @lanName='Malayalam'


create procedure getMovie
(@movieName varchar(100)
)
as
begin
insert into movie values(@movieName)
end

exec getMovie @movieName='bhahubali'

create procedure getGenre
(@genreName varchar(100))
as
begin
insert into genre values(@genreName)
end

exec getGenre @genreName = 'thriller'

create procedure movieLanguage
(@movieId int ,@lanId int)
as
begin
insert into

end