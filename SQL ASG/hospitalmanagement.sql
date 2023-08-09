create table Hospital(
HospitalId int identity not null,
HospitalName varchar(100) not null,
LocationId int not null,
constraint pk_HospitalId primary key(HospitalId),
constraint fk_LocationId foreign key(LocationId) references [Location](LocationId)
)

create table Country(
CountryId  int identity not null,
CountryName varchar(100) not null,
constraint pk_countryId primary key(CountryId)
)

create table [State](
StateId int identity not null,
StateName varchar(100) not null,
CountryId int not null,
constraint pk_StateId primary key(StateId),
constraint fk_CountryId  foreign key(CountryId) references country(CountryId )
)

create table [Location](
LocationId int identity not null,
LocationName varchar(100) not null,
StateId int not null,
constraint pk_LocationId primary key(LocationId),
constraint fk_StateId  foreign key(StateId) references [State](StateId)
)


create or alter procedure addCountry
(
@name varchar(100)
)
as
begin
insert into Country values(@name)

end


exec addCountry @name = 'India'

create or alter procedure addState
(
@name varchar(100),@CountryId int
)
as
begin
insert into [State] values(@name,@CountryId)

end

exec addState @name = 'Kerala',@CountryId=1

create or alter procedure addLocation
(
@name varchar(100),@StateId int
)
as
begin
insert into [Location] values(@name,@StateId)

end

exec addLocation @name = 'Idukki',@StateId=1


create or alter procedure addhospital
(
@name varchar(100),@LocationId int
)
as
begin
insert into Hospital values(@name,@LocationId)

end


exec addhospital @name = 'GMCI',@LocationId=1




---------------------------
create or alter procedure addemployee
(
@empType varchar(100),@HospitalId int
)
as
begin
insert into emplo values(@empType,@HospitalId)

end

exec addemployee @empType = 'Doctor',@HospitalId=1

select * from [Location]

create table employee(
employeeId int identity not null,
employeeName varchar(100) not null,
hospitalId int not null,
constraint pk_employeeId primary key(employeeId),
constraint fk_hospitalId foreign key(hospitalId) references hospital(hospitalId )
)

exec addemployee @empType = 'Doctor',@HospitalId=1

create or alter procedure addemployee
(
@empType varchar(100),@HospitalId int
)
as
begin
insert into employee values(@empType,@HospitalId)
end

exec addemployee @empType = 'Doctor',@HospitalId=1

select * from employee

create table Department(
DepartmentId  int identity not null,
DepartmentName varchar(100) not null,
constraint pk_DepartmentId primary key(DepartmentId)
)
