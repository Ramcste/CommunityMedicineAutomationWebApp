
USE [DB]
GO
/****** Object:  Table [dbo].[Table_Center]    Script Date: 6/22/2015 1:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Center](
	[center_Id] [int] IDENTITY(1,1) NOT NULL,
	[center_Name] [varchar](50) NOT NULL,
	[center_Code] [varchar](50) NULL,
	[center_Password] [varchar](50) NULL,
	[center_DistrictId] [int] NOT NULL,
	[center_ThanaId] [int] NOT NULL,
 CONSTRAINT [PK_Table_Center] PRIMARY KEY CLUSTERED 
(
	[center_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Disease]    Script Date: 6/22/2015 1:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Disease](
	[diesease_Id] [int] IDENTITY(1,1) NOT NULL,
	[disease_Name] [varchar](50) NOT NULL,
	[disease_Description] [varchar](max) NOT NULL,
	[disease_TreatmentProcedure] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Table_Disease] PRIMARY KEY CLUSTERED 
(
	[diesease_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_District]    Script Date: 6/22/2015 1:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_District](
	[district_Id] [int] IDENTITY(1,1) NOT NULL,
	[district_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_District] PRIMARY KEY CLUSTERED 
(
	[district_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Doctor]    Script Date: 6/22/2015 1:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Doctor](
	[doctor_Id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_Name] [varchar](50) NOT NULL,
	[doctor_Degree] [varchar](150) NULL,
	[doctor_Specialization] [varchar](450) NULL,
	[doctor_CenterId] [int] NULL,
 CONSTRAINT [PK_Table_Doctor] PRIMARY KEY CLUSTERED 
(
	[doctor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Medicine]    Script Date: 6/22/2015 1:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Medicine](
	[medicine_Id] [int] IDENTITY(1,1) NOT NULL,
	[medicine_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Medicin] PRIMARY KEY CLUSTERED 
(
	[medicine_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Thana]    Script Date: 6/22/2015 1:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Thana](
	[thana_Id] [int] IDENTITY(1,1) NOT NULL,
	[thana_Name] [varchar](50) NOT NULL,
	[thana_DistrictId] [int] NOT NULL,
 CONSTRAINT [PK_Table_Thana] PRIMARY KEY CLUSTERED 
(
	[thana_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Center] ON 

INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (1, N'Sonatala', NULL, NULL, 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (3, N'Bitm', N'CoBu931', N'y14s18z19', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (4, N'Sonagazi', N'CoBu689', N'r19d4b7', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (5, N'Noakhali Sadar', N'CoBu827', N'v2c18t2', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (7, N'rana', N'CoBu938', N'y16s1y13', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (10, N'RR', N'CoBu509', N'n2b10q17', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (11, N'EE', N'CoBu902', N'x4j5v5', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (12, N' v', N'CoBu200', N'f2o1u11', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (13, N'c', N'CoBu949', N'y7q3e14', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (14, N'Rajabajar', N'CoBu141', N'd11p18e12', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (15, N'ER', N'CoBu930', N'y9i16h11', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (16, N'Sonapur', N'CoBu197', N'f3v6n4', 1, 1)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (17, N'Sonapur', N'KuKu386', N'k13h16f8', 5, 7)
SET IDENTITY_INSERT [dbo].[Table_Center] OFF
SET IDENTITY_INSERT [dbo].[Table_Disease] ON 

INSERT [dbo].[Table_Disease] ([diesease_Id], [disease_Name], [disease_Description], [disease_TreatmentProcedure]) VALUES (1, N'Fever', N'Headache,High Temperature', N'Napa twice a day')
INSERT [dbo].[Table_Disease] ([diesease_Id], [disease_Name], [disease_Description], [disease_TreatmentProcedure]) VALUES (2, N'Headache', N'Stream pain in head', N'Napa Extra twice a day')
SET IDENTITY_INSERT [dbo].[Table_Disease] OFF
SET IDENTITY_INSERT [dbo].[Table_District] ON 

INSERT [dbo].[Table_District] ([district_Id], [district_Name]) VALUES (1, N'Comilla')
INSERT [dbo].[Table_District] ([district_Id], [district_Name]) VALUES (2, N'Dhaka')
INSERT [dbo].[Table_District] ([district_Id], [district_Name]) VALUES (3, N'Noakhali')
INSERT [dbo].[Table_District] ([district_Id], [district_Name]) VALUES (4, N'BrahmanBaria')
INSERT [dbo].[Table_District] ([district_Id], [district_Name]) VALUES (5, N'Kushtia')
INSERT [dbo].[Table_District] ([district_Id], [district_Name]) VALUES (6, N'Bogra')
SET IDENTITY_INSERT [dbo].[Table_District] OFF
SET IDENTITY_INSERT [dbo].[Table_Doctor] ON 

INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (1, N'Monir Mahmud', N'MBBS, FCPS', N'Surgeaon', NULL)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (2, N'', N'', N'', NULL)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (3, N'Rakibul Hasan', N'CSTE', N'Programming', NULL)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (4, N'Rakibul Hasan', N'CSTE', N'Programming', NULL)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (5, N'Rambabu', N'CSTE', N'Computer Science', 3)
SET IDENTITY_INSERT [dbo].[Table_Doctor] OFF
SET IDENTITY_INSERT [dbo].[Table_Medicine] ON 

INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (1, N'Napa Extra 500mg')
INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (2, N'Napa Extended 500mg')
INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (3, N'Napa Extended 650mg')
SET IDENTITY_INSERT [dbo].[Table_Medicine] OFF
SET IDENTITY_INSERT [dbo].[Table_Thana] ON 

INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (1, N'Burichong', 1)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (2, N'Chandina', 1)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (3, N'NasirNagar', 4)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (4, N'Bansarampur', 4)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (5, N'Gabtoli', 6)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (6, N'Nepaltoli', 6)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (7, N'Kushtia', 5)
SET IDENTITY_INSERT [dbo].[Table_Thana] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Table_Center]    Script Date: 6/22/2015 1:57:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Table_Center] ON [dbo].[Table_Center]
(
	[center_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [MedicineAtumationDB] SET  READ_WRITE 
GO
