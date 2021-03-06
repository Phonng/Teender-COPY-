USE [TeenderExport ]
GO
/****** Object:  Table [dbo].[Ignore]    Script Date: 3/28/2018 8:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ignore](
	[ignorerID] [int] NOT NULL,
	[ignoredID] [int] NOT NULL,
 CONSTRAINT [PK_Ignore] PRIMARY KEY CLUSTERED 
(
	[ignorerID] ASC,
	[ignoredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Like]    Script Date: 3/28/2018 8:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Like](
	[likerID] [int] NOT NULL,
	[likedID] [int] NOT NULL,
 CONSTRAINT [PK_Like] PRIMARY KEY CLUSTERED 
(
	[likerID] ASC,
	[likedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 3/28/2018 8:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[messageID] [int] IDENTITY(1,1) NOT NULL,
	[senderID] [int] NOT NULL,
	[receiverID] [int] NOT NULL,
	[content] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[messageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/28/2018 8:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[password] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 3/28/2018 8:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[userID] [int] NOT NULL,
	[nickname] [nvarchar](150) NOT NULL,
	[aboutMe] [nvarchar](150) NOT NULL,
	[birthDate] [date] NOT NULL,
	[work] [nvarchar](150) NOT NULL,
	[address] [nchar](150) NOT NULL,
	[preferMale] [bit] NOT NULL,
	[online] [bit] NOT NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ignore] ([ignorerID], [ignoredID]) VALUES (1014, 1006)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1004)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1005)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1006)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1007)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1008)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1010)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1011)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1012)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1013)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1014)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1009, 1015)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1004)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1005)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1006)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1007)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1008)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1009)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1011)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1012)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1013)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1014)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1010, 1015)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1004)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1005)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1007)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1008)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1009)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1010)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1011)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1012)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1013)
INSERT [dbo].[Like] ([likerID], [likedID]) VALUES (1014, 1015)
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1, 1014, 1009, N'werwer')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (2, 1014, 1009, N'ch�o Cyka')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (3, 1014, 1009, N'dsf')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (4, 1010, 1009, N'chào Miên')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (5, 1014, 1009, N'nhắn tin mới')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1002, 1010, 1014, N'sadsad')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1003, 1010, 1014, N'sadas')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1004, 1010, 1014, N'sadas')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1005, 1010, 1014, N'sadas')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1006, 1010, 1014, N'asdasd')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1007, 1010, 1014, N'asdasd')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1008, 1010, 1014, N'asdasd')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1009, 1010, 1014, N'hi')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1010, 1014, 1009, N'hi')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1011, 1014, 1009, N'how are you')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1012, 1014, 1009, N'chào Miên')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1013, 1009, 1014, N'hi')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1014, 1009, 1014, N'')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1015, 1009, 1014, N'')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1016, 1009, 1014, N'')
INSERT [dbo].[Message] ([messageID], [senderID], [receiverID], [content]) VALUES (1017, 1009, 1014, N'')
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1004, N'Rm07@believe!', N'Rm07@believe!')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1005, N'Emsnguyen98!', N'Emsnguyen98!')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1006, N'Shinichikudo@12345', N'Shinichikudo@12345')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1007, N'1', N'Rm07@believe!')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1008, N'stupidpig303', N'Phongvhse05255')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1009, N'2', N'2')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1010, N'3', N'3')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1011, N'4', N'4')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1012, N'5', N'5')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1013, N'phongvhse05255', N'Phongvhse05255')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1014, N'1', N'Rm07@believe!')
INSERT [dbo].[User] ([userID], [username], [password]) VALUES (1015, N'phongvhse052555', N'Phongvhse05255')
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[UserInfo] ([userID], [nickname], [aboutMe], [birthDate], [work], [address], [preferMale], [online]) VALUES (1009, N'cyka', N'blytat', CAST(N'2018-03-16' AS Date), N'wer', N'dddd                                                                                                                                                  ', 0, 0)
INSERT [dbo].[UserInfo] ([userID], [nickname], [aboutMe], [birthDate], [work], [address], [preferMale], [online]) VALUES (1014, N'Hong Mien', N'Hello world', CAST(N'2018-03-30' AS Date), N'Hoc sinh ', N'Hanoi                                                                                                                                                 ', 1, 1)
ALTER TABLE [dbo].[Ignore]  WITH CHECK ADD  CONSTRAINT [FK_Ignore_User] FOREIGN KEY([ignorerID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Ignore] CHECK CONSTRAINT [FK_Ignore_User]
GO
ALTER TABLE [dbo].[Ignore]  WITH CHECK ADD  CONSTRAINT [FK_Ignore_User1] FOREIGN KEY([ignoredID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Ignore] CHECK CONSTRAINT [FK_Ignore_User1]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_User] FOREIGN KEY([likerID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_User]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_User1] FOREIGN KEY([likedID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_User1]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User] FOREIGN KEY([receiverID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User1] FOREIGN KEY([senderID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User1]
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_UserInfo_User]
GO
