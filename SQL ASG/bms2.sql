USE [bms]
GO
/****** Object:  UserDefinedTableType [dbo].[bookinseatType]    Script Date: 03-08-2023 17:46:50 ******/
CREATE TYPE [dbo].[bookinseatType] AS TABLE(
	[Id] [int] NULL,
	[price] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[entity]    Script Date: 03-08-2023 17:46:50 ******/
CREATE TYPE [dbo].[entity] AS TABLE(
	[Id] [int] NULL
)
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[bookingid] [int] IDENTITY(1,1) NOT NULL,
	[theatreid] [int] NOT NULL,
	[movieid] [int] NOT NULL,
	[date] [datetime] NULL,
	[formatid] [int] NOT NULL,
 CONSTRAINT [pk_bookingid] PRIMARY KEY CLUSTERED 
(
	[bookingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookingDetails]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookingDetails](
	[detailid] [int] IDENTITY(1,1) NOT NULL,
	[bookingid] [int] NOT NULL,
	[movieid] [int] NOT NULL,
	[seatid] [int] NOT NULL,
	[price] [int] NULL,
 CONSTRAINT [pk_detailid] PRIMARY KEY CLUSTERED 
(
	[detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookingSeat]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookingSeat](
	[detailid] [int] IDENTITY(1,1) NOT NULL,
	[bookingid] [int] NOT NULL,
	[seatid] [int] NOT NULL,
	[price] [int] NULL,
 CONSTRAINT [pk_detailid1] PRIMARY KEY CLUSTERED 
(
	[detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[format]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[format](
	[formatID] [int] IDENTITY(1,1) NOT NULL,
	[fotmatType] [varchar](100) NULL,
 CONSTRAINT [pk_format] PRIMARY KEY CLUSTERED 
(
	[formatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreId] [int] IDENTITY(100,1) NOT NULL,
	[GenreType] [varchar](20) NOT NULL,
 CONSTRAINT [pk_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [varchar](100) NOT NULL,
 CONSTRAINT [pk_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LanguageMovieDetails]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageMovieDetails](
	[LanguageMovieDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[LanguageId] [int] NULL,
 CONSTRAINT [pk_LanguageMovieDetails] PRIMARY KEY CLUSTERED 
(
	[LanguageMovieDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[locationID] [int] IDENTITY(1,1) NOT NULL,
	[locationName] [varchar](100) NULL,
 CONSTRAINT [pk_locationID] PRIMARY KEY CLUSTERED 
(
	[locationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](100) NOT NULL,
 CONSTRAINT [pk_MovieDetails] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenre](
	[MovieGenreID] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[GenreId] [int] NULL,
 CONSTRAINT [pk_MovieGenreID] PRIMARY KEY CLUSTERED 
(
	[MovieGenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](100) NULL,
 CONSTRAINT [pk_PaymentID] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seat]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seat](
	[seatid] [int] IDENTITY(1,1) NOT NULL,
	[seatname] [varchar](100) NULL,
	[theatreid] [int] NOT NULL,
	[price] [int] NULL,
 CONSTRAINT [pk_seatid] PRIMARY KEY CLUSTERED 
(
	[seatid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[theatre]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theatre](
	[theatreid] [int] IDENTITY(1,1) NOT NULL,
	[theatrename] [varchar](100) NOT NULL,
	[totalseat] [int] NOT NULL,
	[formatid] [int] NULL,
	[locationid] [int] NULL,
 CONSTRAINT [pk_theatre] PRIMARY KEY CLUSTERED 
(
	[theatreid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](100) NULL,
	[Mob] [varchar](100) NOT NULL,
	[email] [varchar](300) NULL,
 CONSTRAINT [pk_userID] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Mob] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_formatid] FOREIGN KEY([formatid])
REFERENCES [dbo].[format] ([formatID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_formatid]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_movieid1] FOREIGN KEY([movieid])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_movieid1]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_theatreid] FOREIGN KEY([theatreid])
REFERENCES [dbo].[theatre] ([theatreid])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_theatreid]
GO
ALTER TABLE [dbo].[bookingDetails]  WITH CHECK ADD  CONSTRAINT [fk_bookingid] FOREIGN KEY([bookingid])
REFERENCES [dbo].[Booking] ([bookingid])
GO
ALTER TABLE [dbo].[bookingDetails] CHECK CONSTRAINT [fk_bookingid]
GO
ALTER TABLE [dbo].[bookingDetails]  WITH CHECK ADD  CONSTRAINT [fk_movieid3] FOREIGN KEY([movieid])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[bookingDetails] CHECK CONSTRAINT [fk_movieid3]
GO
ALTER TABLE [dbo].[bookingDetails]  WITH CHECK ADD  CONSTRAINT [fk_seatid] FOREIGN KEY([seatid])
REFERENCES [dbo].[seat] ([seatid])
GO
ALTER TABLE [dbo].[bookingDetails] CHECK CONSTRAINT [fk_seatid]
GO
ALTER TABLE [dbo].[bookingSeat]  WITH CHECK ADD  CONSTRAINT [fk_bookingid1] FOREIGN KEY([bookingid])
REFERENCES [dbo].[Booking] ([bookingid])
GO
ALTER TABLE [dbo].[bookingSeat] CHECK CONSTRAINT [fk_bookingid1]
GO
ALTER TABLE [dbo].[bookingSeat]  WITH CHECK ADD  CONSTRAINT [fk_seatid1] FOREIGN KEY([seatid])
REFERENCES [dbo].[seat] ([seatid])
GO
ALTER TABLE [dbo].[bookingSeat] CHECK CONSTRAINT [fk_seatid1]
GO
ALTER TABLE [dbo].[LanguageMovieDetails]  WITH CHECK ADD  CONSTRAINT [fk_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([LanguageId])
GO
ALTER TABLE [dbo].[LanguageMovieDetails] CHECK CONSTRAINT [fk_LanguageId]
GO
ALTER TABLE [dbo].[LanguageMovieDetails]  WITH CHECK ADD  CONSTRAINT [fk_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[LanguageMovieDetails] CHECK CONSTRAINT [fk_MovieId]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [fk_GenreId] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([GenreId])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [fk_GenreId]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [fk_MovieId2] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [fk_MovieId2]
GO
ALTER TABLE [dbo].[seat]  WITH CHECK ADD  CONSTRAINT [fk_theatreid2] FOREIGN KEY([theatreid])
REFERENCES [dbo].[theatre] ([theatreid])
GO
ALTER TABLE [dbo].[seat] CHECK CONSTRAINT [fk_theatreid2]
GO
ALTER TABLE [dbo].[theatre]  WITH CHECK ADD  CONSTRAINT [fk_format] FOREIGN KEY([formatid])
REFERENCES [dbo].[format] ([formatID])
GO
ALTER TABLE [dbo].[theatre] CHECK CONSTRAINT [fk_format]
GO
ALTER TABLE [dbo].[theatre]  WITH CHECK ADD  CONSTRAINT [fk_location] FOREIGN KEY([locationid])
REFERENCES [dbo].[Location] ([locationID])
GO
ALTER TABLE [dbo].[theatre] CHECK CONSTRAINT [fk_location]
GO
/****** Object:  StoredProcedure [dbo].[addbooking]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[addbooking]  
@theatreid int ,@movieid int,@date datetime,@formatid int,  
@seatid bookinseatType readonly
as  
begin  
insert into Booking values(@theatreid,@movieid,@date,@formatid)  
declare @i int =@@identity
insert into bookingSeat(bookingid,seatid,price)
select @i,Id,price from @seatid

end
GO
/****** Object:  StoredProcedure [dbo].[addFormat]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addFormat]
@FormatName Varchar(100)
as begin
insert into format values(@FormatName)
end
GO
/****** Object:  StoredProcedure [dbo].[addgenre]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addgenre]
@genre varchar(100)
as
begin
insert into Genre values(@genre)
end
GO
/****** Object:  StoredProcedure [dbo].[addlanguage]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addlanguage]
@language varchar(100)
as 
begin
insert into Language values(@language)
end
GO
/****** Object:  StoredProcedure [dbo].[addLocation]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addLocation]
@LocationName varchar(100)
as
begin
insert into Location values(@LocationName) 
end
GO
/****** Object:  StoredProcedure [dbo].[addmovie]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addmovie]
@moviename varchar(100)
as 
begin
insert into Movie values(@moviename)
end
GO
/****** Object:  StoredProcedure [dbo].[addMovieLanguage]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addMovieLanguage]
@movieid int,@lanid entity readonly
as
begin
insert into LanguageMovieDetails(MovieId,LanguageId)
select @movieid,Id from @lanid
end
GO
/****** Object:  StoredProcedure [dbo].[addPayment]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addPayment]
 @paymentType varchar(100)
as 
begin
insert into Payment values(@paymentType)
end
GO
/****** Object:  StoredProcedure [dbo].[addseat]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addseat]
@saetname varchar(100),@theatreid int,@price int
as
begin
insert into seat values(@saetname,@theatreid,@price)
end
GO
/****** Object:  StoredProcedure [dbo].[addTheatre]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addTheatre]
@name varchar(100),@totalSeat int,
@formatid int,
@locationid int
as
begin
insert into theatre values(@name,@totalSeat,@formatid,@locationid)
--declare @i int =@@identity

--insert into theatre values(@formatid)
--select @i,formatID from format

--insert into theatre values(@locationid)
--select @i,locationID from Location
end
GO
/****** Object:  StoredProcedure [dbo].[adduser]    Script Date: 03-08-2023 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[adduser]
@name varchar(100),@mob varchar(100),@email varchar(300)
as
begin
insert into [user] values(@name,@mob,@email)
end

GO
