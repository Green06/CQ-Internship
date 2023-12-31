USE [bookmyshow]
GO
/****** Object:  UserDefinedTableType [dbo].[LanguageMovieDetailsType]    Script Date: 24-07-2023 11:30:17 ******/
CREATE TYPE [dbo].[LanguageMovieDetailsType] AS TABLE(
	[id] [int] NULL
)
GO
/****** Object:  Table [dbo].[BookedSeat]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookedSeat](
	[BookedSeatId] [int] IDENTITY(900,1) NOT NULL,
	[TicketId] [int] NULL,
 CONSTRAINT [pk_BookedSeatId] PRIMARY KEY CLUSTERED 
(
	[BookedSeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(500,1) NOT NULL,
	[CustomerName] [varchar](20) NULL,
	[CustomerMob] [int] NULL,
 CONSTRAINT [pk_CustomerID] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Format]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Format](
	[FormatId] [int] IDENTITY(1000,1) NOT NULL,
	[FormatName] [int] NULL,
 CONSTRAINT [pk_FormatId] PRIMARY KEY CLUSTERED 
(
	[FormatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreId] [int] IDENTITY(100,1) NOT NULL,
	[GenreType] [varchar](20) NULL,
 CONSTRAINT [pk_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageId] [int] IDENTITY(50,1) NOT NULL,
	[LanguageName] [varchar](20) NULL,
 CONSTRAINT [pk_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LanguageMovieDetails]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageMovieDetails](
	[LanguageMovieDetailsID] [int] IDENTITY(200,1) NOT NULL,
	[MovieId] [int] NULL,
	[LanguageId] [int] NULL,
 CONSTRAINT [pk_LanguageMovieDetails] PRIMARY KEY CLUSTERED 
(
	[LanguageMovieDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(600,1) NOT NULL,
	[LocationName] [varchar](1) NULL,
	[TheatreId] [int] NULL,
 CONSTRAINT [pk_LocationId] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieDetails]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieDetails](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](20) NULL,
 CONSTRAINT [pk_MovieDetails] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenre](
	[MovieGenreID] [int] IDENTITY(300,1) NOT NULL,
	[MovieId] [int] NULL,
	[GenreId] [int] NULL,
 CONSTRAINT [pk_MovieGenreID] PRIMARY KEY CLUSTERED 
(
	[MovieGenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(600,1) NOT NULL,
	[PaymentType] [varchar](1) NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [pk_PaymentID] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[SeatId] [int] IDENTITY(700,1) NOT NULL,
	[SeatName] [varchar](1) NULL,
	[TheatreId] [int] NULL,
 CONSTRAINT [pk_SeatId] PRIMARY KEY CLUSTERED 
(
	[SeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatTicketBooking]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatTicketBooking](
	[BookingId] [int] IDENTITY(800,1) NOT NULL,
	[TicketId] [int] NULL,
	[SeatId] [int] NULL,
 CONSTRAINT [pk_BookingId] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theatre]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theatre](
	[TheatreId] [int] IDENTITY(700,1) NOT NULL,
	[TheatreName] [varchar](1) NULL,
 CONSTRAINT [pk_TheatreId] PRIMARY KEY CLUSTERED 
(
	[TheatreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketBooking]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketBooking](
	[TicketId] [int] IDENTITY(400,1) NOT NULL,
	[Date] [datetime] NULL,
	[MovieId] [int] NULL,
	[PaymentId] [int] NULL,
	[CustomerId] [int] NULL,
	[LocationId] [int] NULL,
	[TheatreId] [int] NULL,
 CONSTRAINT [pk_TicketId] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookedSeat]  WITH CHECK ADD  CONSTRAINT [fk_TicketId2] FOREIGN KEY([TicketId])
REFERENCES [dbo].[TicketBooking] ([TicketId])
GO
ALTER TABLE [dbo].[BookedSeat] CHECK CONSTRAINT [fk_TicketId2]
GO
ALTER TABLE [dbo].[LanguageMovieDetails]  WITH CHECK ADD  CONSTRAINT [fk_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([LanguageId])
GO
ALTER TABLE [dbo].[LanguageMovieDetails] CHECK CONSTRAINT [fk_LanguageId]
GO
ALTER TABLE [dbo].[LanguageMovieDetails]  WITH CHECK ADD  CONSTRAINT [fk_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[MovieDetails] ([MovieId])
GO
ALTER TABLE [dbo].[LanguageMovieDetails] CHECK CONSTRAINT [fk_MovieId]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [fk_TheatreId] FOREIGN KEY([TheatreId])
REFERENCES [dbo].[Theatre] ([TheatreId])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [fk_TheatreId]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [fk_GenreId] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([GenreId])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [fk_GenreId]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [fk_MovieId2] FOREIGN KEY([MovieId])
REFERENCES [dbo].[MovieDetails] ([MovieId])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [fk_MovieId2]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [fk_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [fk_CustomerId]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [fk_TheatreId3] FOREIGN KEY([TheatreId])
REFERENCES [dbo].[Theatre] ([TheatreId])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [fk_TheatreId3]
GO
ALTER TABLE [dbo].[SeatTicketBooking]  WITH CHECK ADD  CONSTRAINT [fk_SeatId] FOREIGN KEY([SeatId])
REFERENCES [dbo].[Seat] ([SeatId])
GO
ALTER TABLE [dbo].[SeatTicketBooking] CHECK CONSTRAINT [fk_SeatId]
GO
ALTER TABLE [dbo].[SeatTicketBooking]  WITH CHECK ADD  CONSTRAINT [fk_TicketId] FOREIGN KEY([TicketId])
REFERENCES [dbo].[TicketBooking] ([TicketId])
GO
ALTER TABLE [dbo].[SeatTicketBooking] CHECK CONSTRAINT [fk_TicketId]
GO
ALTER TABLE [dbo].[TicketBooking]  WITH CHECK ADD  CONSTRAINT [fk_CustomerId2] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[TicketBooking] CHECK CONSTRAINT [fk_CustomerId2]
GO
ALTER TABLE [dbo].[TicketBooking]  WITH CHECK ADD  CONSTRAINT [fk_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[TicketBooking] CHECK CONSTRAINT [fk_LocationId]
GO
ALTER TABLE [dbo].[TicketBooking]  WITH CHECK ADD  CONSTRAINT [fk_MovieId3] FOREIGN KEY([MovieId])
REFERENCES [dbo].[MovieDetails] ([MovieId])
GO
ALTER TABLE [dbo].[TicketBooking] CHECK CONSTRAINT [fk_MovieId3]
GO
ALTER TABLE [dbo].[TicketBooking]  WITH CHECK ADD  CONSTRAINT [fk_PaymentId] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[TicketBooking] CHECK CONSTRAINT [fk_PaymentId]
GO
ALTER TABLE [dbo].[TicketBooking]  WITH CHECK ADD  CONSTRAINT [fk_TheatreId2] FOREIGN KEY([TheatreId])
REFERENCES [dbo].[Theatre] ([TheatreId])
GO
ALTER TABLE [dbo].[TicketBooking] CHECK CONSTRAINT [fk_TheatreId2]
GO
/****** Object:  StoredProcedure [dbo].[spCustomer]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCustomer]
@CustomerName varchar(20),
@CustomerMob int
AS  
BEGIN  
	insert into Customer Values (@CustomerName,@CustomerMob)
    
END 
GO
/****** Object:  StoredProcedure [dbo].[SpGenre]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpGenre] 
@Genre varchar(20)  
AS  
BEGIN  
	insert into Genre Values (@Genre)
    
END 
GO
/****** Object:  StoredProcedure [dbo].[SpLanguage]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpLanguage]
@Language varchar(20)  
AS  
BEGIN  
	insert into Genre Values (@Language)
    
END 
GO
/****** Object:  StoredProcedure [dbo].[spMovieDetails]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spMovieDetails]
@MovieName varchar(20)  
AS  
BEGIN  
	insert into MovieDetails Values (@MovieName)
    
END 
GO
/****** Object:  StoredProcedure [dbo].[spTheatre]    Script Date: 24-07-2023 11:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTheatre]
@TheatreName varchar(20)  
AS  
BEGIN  
	insert into Theatre Values (@TheatreName)
    
END 
GO
