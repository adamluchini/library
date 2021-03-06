USE [library]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 7/20/2016 3:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[authors](
	[name] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[books]    Script Date: 7/20/2016 3:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[books](
	[title] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[books_authors]    Script Date: 7/20/2016 3:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books_authors](
	[book_id] [int] NULL,
	[author_id] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[checkouts]    Script Date: 7/20/2016 3:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[checkouts](
	[patron_id] [int] NULL,
	[copy_id] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[copies]    Script Date: 7/20/2016 3:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[copies](
	[book_id] [int] NULL,
	[due_date] [datetime] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[patrons]    Script Date: 7/20/2016 3:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[patrons](
	[name] [varchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[authors] ON 

INSERT [dbo].[authors] ([name], [id]) VALUES (N'Hunt, Andrew', 1)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Dylan, Bob', 2)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Marling, Laura', 3)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Dana, Richard', 4)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Lorain, Douglas', 5)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Ricker, Andy', 6)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Tigay, Chanan', 7)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Betrus, Michael', 8)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Pink, Daniel', 9)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Defoe, Gideon', 10)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Corey, James', 11)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Egan, Timothy', 12)
INSERT [dbo].[authors] ([name], [id]) VALUES (N'Waugh, Evelyn', 13)
SET IDENTITY_INSERT [dbo].[authors] OFF
SET IDENTITY_INSERT [dbo].[books] ON 

INSERT [dbo].[books] ([title], [id]) VALUES (N'The Pragmatic Programmer From Journeyman to Master', 1)
INSERT [dbo].[books] ([title], [id]) VALUES (N'The Tempest', 2)
INSERT [dbo].[books] ([title], [id]) VALUES (N'The Essential Highwaymen', 3)
INSERT [dbo].[books] ([title], [id]) VALUES (N'Love in the Time of Cholera', 4)
INSERT [dbo].[books] ([title], [id]) VALUES (N'The Girl With the Dragon Tattoo', 5)
INSERT [dbo].[books] ([title], [id]) VALUES (N'My Life on the Road', 6)
INSERT [dbo].[books] ([title], [id]) VALUES (N'C? in Depth', 7)
INSERT [dbo].[books] ([title], [id]) VALUES (N'If Not for You', 8)
INSERT [dbo].[books] ([title], [id]) VALUES (N'Two Years Before the Mast A Personal Narrative of Life at Sea', 9)
INSERT [dbo].[books] ([title], [id]) VALUES (N'The Pirates! In An Adventure With Scientists', 10)
SET IDENTITY_INSERT [dbo].[books] OFF
SET IDENTITY_INSERT [dbo].[books_authors] ON 

INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (1, 1, 1)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (1, 2, 2)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (2, 2, 3)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (3, 3, 4)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (4, 4, 5)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (4, 11, 6)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (4, 12, 7)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (4, 13, 8)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (5, 5, 9)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (6, 5, 10)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (7, 7, 11)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (8, 7, 12)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (9, 9, 13)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (9, 10, 14)
INSERT [dbo].[books_authors] ([book_id], [author_id], [id]) VALUES (10, 10, 15)
SET IDENTITY_INSERT [dbo].[books_authors] OFF
SET IDENTITY_INSERT [dbo].[checkouts] ON 

INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (1, 1, 1)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (1, 14, 2)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (1, 18, 3)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (1, 37, 4)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (1, 25, 5)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (1, 28, 6)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (1, 27, 7)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (1, 31, 8)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (1, 44, 9)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (2, 36, 10)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (2, 15, 11)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (2, 19, 12)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (2, 24, 13)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (2, 26, 14)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (2, 43, 15)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (2, 40, 16)
INSERT [dbo].[checkouts] ([patron_id], [copy_id], [id]) VALUES (2, 30, 17)
SET IDENTITY_INSERT [dbo].[checkouts] OFF
SET IDENTITY_INSERT [dbo].[copies] ON 

INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (1, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (1, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (2, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (4, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (5, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (6, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (7, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (8, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (8, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (10, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (1, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (2, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (2, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (2, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 17)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 21)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 22)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (5, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 24)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (6, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (6, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 26)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (8, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 27)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (7, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 28)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (9, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 29)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (9, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (9, CAST(N'2016-07-31T00:00:00.000' AS DateTime), 31)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (1, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 32)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (1, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 33)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 34)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (3, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 35)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (1, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 36)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (5, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 37)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (6, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 38)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (8, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 39)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (8, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (8, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 41)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (7, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 42)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (7, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 43)
INSERT [dbo].[copies] ([book_id], [due_date], [id]) VALUES (10, CAST(N'2016-07-07T00:00:00.000' AS DateTime), 44)
SET IDENTITY_INSERT [dbo].[copies] OFF
SET IDENTITY_INSERT [dbo].[patrons] ON 

INSERT [dbo].[patrons] ([name], [id]) VALUES (N'Adam', 1)
INSERT [dbo].[patrons] ([name], [id]) VALUES (N'Jim', 2)
SET IDENTITY_INSERT [dbo].[patrons] OFF
