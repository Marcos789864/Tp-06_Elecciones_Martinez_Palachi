USE [Elecciones2023]
GO
/****** Object:  User [alumno]    Script Date: 11/7/2023 11:01:06 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[candidat]    Script Date: 11/7/2023 11:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candidat](
	[idCandidatos] [int] IDENTITY(1,1) NOT NULL,
	[idPartido] [int] NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[foto] [varchar](50) NOT NULL,
	[postulacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_candidat] PRIMARY KEY CLUSTERED 
(
	[idCandidatos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partidos]    Script Date: 11/7/2023 11:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partidos](
	[idPartido] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[logo] [varchar](50) NOT NULL,
	[sitioWeb] [varchar](50) NOT NULL,
	[fechaFundacion] [date] NOT NULL,
	[cantidadDiputados] [int] NOT NULL,
	[cantidadSenadores] [int] NOT NULL,
 CONSTRAINT [PK_Partidos] PRIMARY KEY CLUSTERED 
(
	[idPartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[candidat] ON 

INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (6, 1, N'Rodriguez', N'Larreta', CAST(N'1965-08-25' AS Date), N'larri.jpg', N'elpro')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (8, 1, N'Bullrich', N'Patricia', CAST(N'1965-04-25' AS Date), N'pato.jpg', N'elpro')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (12, 2, N'Lozano', N'Claudio', CAST(N'1956-08-18' AS Date), N'Claudio_Lozano.jpg', N'UP')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (13, 3, N'Grabois', N'Juan', CAST(N'1983-04-23' AS Date), N'Juan Grabois.jpg', N'Frente Patria Grande')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (14, 4, N'Scioli', N'Daniel', CAST(N'1957-01-13' AS Date), N'scioli.jpg', N'Partido Justicialista')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (15, 4, N'Rossi', N'Agustin', CAST(N'1959-08-18' AS Date), N'guistin rossi.jpg', N'Partido Justicialista')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (16, 4, N'Schiareti', N'Juan', CAST(N'1949-06-19' AS Date), N'juan schiaretti.jpg', N'Partido Justicialista')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (17, 4, N'Urutubey', N'Juan', CAST(N'1969-09-06' AS Date), N'Juan Manuel Urtubey.jpg', N'Partido Justicalista')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (18, 4, N'Mariotto', N'Gabriel', CAST(N'1964-11-09' AS Date), N'Gabriel Mariotto.jpg', N'Partido Justicialista')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (19, 5, N'Espert', N'Jose', CAST(N'1961-11-21' AS Date), N'Jose Luis Espert.jpg', N'Avanza La Libertad')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (20, 5, N'Milei', N'Javier', CAST(N'1970-10-22' AS Date), N'Javier Milei.jpg', N'Avaza la Libertad')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (21, 6, N'Pichetto', N'Miguel', CAST(N'1950-10-24' AS Date), N'Miguel angel pichetto.jpg', N'Encuentro Republicano Federal')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (22, 7, N'Carrio', N'Elisa', CAST(N'1956-12-26' AS Date), N'Elisia Carrio.jpg', N'Coalicion Civica')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (23, 8, N'Morales', N'Gerardo', CAST(N'1959-07-18' AS Date), N'Gerardo Morales.jpg', N'Union Civica Radical')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (25, 8, N'Manes', N'Facundo', CAST(N'1969-01-11' AS Date), N'Facundo Manes.jpg', N'Union Civica Radical')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (26, 9, N'Bregman', N'Myriam', CAST(N'1972-02-25' AS Date), N'Miryam Bregman.jpg', N'Frente de Izquierda')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (28, 10, N'Solano', N'Gabriel', CAST(N'1974-06-04' AS Date), N'Gabriel Solano.jpg', N'Partido Obrero')
INSERT [dbo].[candidat] ([idCandidatos], [idPartido], [apellido], [nombre], [fechaNacimiento], [foto], [postulacion]) VALUES (29, 11, N'Escobar ', N'Jesus', CAST(N'1971-02-10' AS Date), N'Jesus Escobar.jpg', N'Movimientos Libres del Sur')
SET IDENTITY_INSERT [dbo].[candidat] OFF
GO
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (1, N'elpro', N'Propuesta_Republicana.jpg', N'https://pro.com.ar/', CAST(N'2005-05-15' AS Date), 40, 8)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (2, N'UP', N'descarga.jpg', N'https://unidadpopular.org.ar/', CAST(N'2010-06-19' AS Date), 0, 0)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (3, N'Frente Patria Grande', N'Frente_patria_grande.jpg', N'https://www.patriagrande.org.ar/', CAST(N'2018-10-27' AS Date), 3, 0)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (4, N'Partido Justicialista', N'Bandera_del_Partido_Justicialista.jpg', N'https://www.pj.org.ar/', CAST(N'1946-11-21' AS Date), 91, 36)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (5, N'Avanza la Libertad', N'AvanzaLibertadLogo2022.jpg', N'https://avanzalibertad.com/', CAST(N'2021-06-14' AS Date), 3, 0)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (6, N'Encuentro Republicano', N'Logo_ERF_Argentina.jpg', N'https://www.encuentroargentina.org/', CAST(N'2021-03-11' AS Date), 1, 1)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (7, N'Colacion Civica', N'1200px-CCARI_Logo.jpg', N'https://www.ccaridiputados.com.ar/', CAST(N'2001-11-25' AS Date), 11, 0)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (8, N'Union Civica Radical', N'BanderadeaUni+¦nC+¡vicaRadical.jpg', N'https://www.ucr.org.ar/', CAST(N'1891-06-26' AS Date), 45, 20)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (9, N'Frente de Izquierda', N'FrentedeIzquierdaydelosTrabajadoresUnidad.jpg', N'https://po.org.ar/', CAST(N'2011-04-14' AS Date), 4, 0)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (10, N'Partido Obrero', N'Partido_Obrero_Logo.jpg', N'https://po.org.ar/', CAST(N'2011-04-14' AS Date), 4, 0)
INSERT [dbo].[Partidos] ([idPartido], [nombre], [logo], [sitioWeb], [fechaFundacion], [cantidadDiputados], [cantidadSenadores]) VALUES (11, N'Movimientos Libres del Sur', N'Libresdelsur_logo.jpg', N'https://libresdelsur.org.ar/', CAST(N'2006-04-27' AS Date), 0, 0)
GO
