GO
ALTER DATABASE [SalonKrasoti] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SalonKrasoti] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SalonKrasoti] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SalonKrasoti] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SalonKrasoti] SET ARITHABORT OFF 
GO
ALTER DATABASE [SalonKrasoti] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SalonKrasoti] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SalonKrasoti] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SalonKrasoti] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SalonKrasoti] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SalonKrasoti] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SalonKrasoti] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SalonKrasoti] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SalonKrasoti] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SalonKrasoti] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SalonKrasoti] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SalonKrasoti] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SalonKrasoti] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SalonKrasoti] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SalonKrasoti] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SalonKrasoti] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SalonKrasoti] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SalonKrasoti] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SalonKrasoti] SET  MULTI_USER 
GO
ALTER DATABASE [SalonKrasoti] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SalonKrasoti] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SalonKrasoti] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SalonKrasoti] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SalonKrasoti] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SalonKrasoti] SET QUERY_STORE = OFF
GO
USE [SalonKrasoti]
GO
/****** Object:  View [dbo].[bob]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[bob]
as select * from Sys.SysFileGroups
GO
/****** Object:  View [dbo].[bob1]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[bob1]
as select * from Sys.sysfiles
GO
/****** Object:  View [dbo].[View_1]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        dbo.bob.groupid, dbo.bob1.groupid AS Expr1
FROM            dbo.bob INNER JOIN
                         dbo.bob1 ON dbo.bob.groupid = dbo.bob1.groupid
GO
/****** Object:  View [dbo].[Dasha]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[Dasha]
AS SELECT growth as Ves
FROM Sys.SysFiles
GO
/****** Object:  View [dbo].[Sys]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Sys]
as select * from SysFileGroups
GO
/****** Object:  View [dbo].[Vika]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[Vika]
AS SELECT growth as Cat
FROM Sys.SysFiles
GO
/****** Object:  Table [dbo].[Категория услуги]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Категория услуги](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
	[Фото] [nvarchar](50) NULL,
 CONSTRAINT [PK_Категория услуги] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](30) NOT NULL,
	[Отчество] [nvarchar](30) NULL,
	[НомерТелефона] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Клиент] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Отчеты]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Отчеты](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
	[РасходныеМатериалы] [nvarchar](70) NULL,
	[ДенежныеРасходы] [decimal](10, 2) NOT NULL,
	[IDСотрудника] [int] NOT NULL,
 CONSTRAINT [PK_Отчеты] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пользователи]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователи](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Логин] [nvarchar](20) NOT NULL,
	[Пароль] [nvarchar](20) NOT NULL,
	[IDРоли] [int] NOT NULL,
 CONSTRAINT [PK_Пользователи] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Предстоящие записи]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Предстоящие записи](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Дата] [date] NOT NULL,
	[Время] [nvarchar](50) NOT NULL,
	[IDКлиента] [int] NOT NULL,
	[IDСотрудника] [int] NOT NULL,
	[IDУслуги] [int] NOT NULL,
 CONSTRAINT [PK_Предстоящие записи] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Роль]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Роль](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Роль] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](30) NOT NULL,
	[Имя] [nvarchar](30) NOT NULL,
	[Отчество] [nvarchar](30) NULL,
	[Должность] [nvarchar](30) NOT NULL,
	[НомерТелефона] [nvarchar](20) NOT NULL,
	[Фото] [nvarchar](50) NULL,
	[IDПользователя] [int] NOT NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги]    Script Date: 08.12.2022 15:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
	[Описание] [nvarchar](100) NOT NULL,
	[Цена] [decimal](10, 2) NOT NULL,
	[Фото] [nvarchar](50) NOT NULL,
	[IDКатегорииУслуги] [int] NOT NULL,
 CONSTRAINT [PK_Услуги] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Категория услуги] ON 

INSERT [dbo].[Категория услуги] ([ID], [Наименование], [Фото]) VALUES (1, N'Шугаринг', N'Отсутствует')
INSERT [dbo].[Категория услуги] ([ID], [Наименование], [Фото]) VALUES (2, N'Пилинг', N'Отсутствует')
INSERT [dbo].[Категория услуги] ([ID], [Наименование], [Фото]) VALUES (3, N'Стайлинг волос', N'Отсутствует')
INSERT [dbo].[Категория услуги] ([ID], [Наименование], [Фото]) VALUES (4, N'Рестайлинг', N'Отсутствует')
SET IDENTITY_INSERT [dbo].[Категория услуги] OFF
GO
SET IDENTITY_INSERT [dbo].[Клиент] ON 

INSERT [dbo].[Клиент] ([ID], [Фамилия], [Имя], [Отчество], [НомерТелефона]) VALUES (1, N'Иванов', N'Иван', N'Иванович', N'89035400000')
INSERT [dbo].[Клиент] ([ID], [Фамилия], [Имя], [Отчество], [НомерТелефона]) VALUES (2, N'Кириллов', N'Кирилл', N'Киррилович', N'89999999999')
INSERT [dbo].[Клиент] ([ID], [Фамилия], [Имя], [Отчество], [НомерТелефона]) VALUES (3, N'Геворгов', N'Геворг', N'Геворгович', N'89393939393')
INSERT [dbo].[Клиент] ([ID], [Фамилия], [Имя], [Отчество], [НомерТелефона]) VALUES (4, N'Хасанов', N'Хасан', N'Хасанович', N'89035443223')
SET IDENTITY_INSERT [dbo].[Клиент] OFF
GO
SET IDENTITY_INSERT [dbo].[Отчеты] ON 

INSERT [dbo].[Отчеты] ([ID], [Наименование], [РасходныеМатериалы], [ДенежныеРасходы], [IDСотрудника]) VALUES (1, N'Расходы на материалы', N'30', CAST(14000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Отчеты] ([ID], [Наименование], [РасходныеМатериалы], [ДенежныеРасходы], [IDСотрудника]) VALUES (2, N'Расходы на материалы', N'40', CAST(15000.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Отчеты] ([ID], [Наименование], [РасходныеМатериалы], [ДенежныеРасходы], [IDСотрудника]) VALUES (3, N'Расходы на материалы', N'31', CAST(14500.00 AS Decimal(10, 2)), 3)
SET IDENTITY_INSERT [dbo].[Отчеты] OFF
GO
SET IDENTITY_INSERT [dbo].[Пользователи] ON 

INSERT [dbo].[Пользователи] ([ID], [Логин], [Пароль], [IDРоли]) VALUES (1, N'Гев', N'Гев', 1)
INSERT [dbo].[Пользователи] ([ID], [Логин], [Пароль], [IDРоли]) VALUES (2, N'Гов', N'Гов', 2)
INSERT [dbo].[Пользователи] ([ID], [Логин], [Пароль], [IDРоли]) VALUES (3, N'Гав', N'Гав', 3)
SET IDENTITY_INSERT [dbo].[Пользователи] OFF
GO
SET IDENTITY_INSERT [dbo].[Предстоящие записи] ON 

INSERT [dbo].[Предстоящие записи] ([ID], [Дата], [Время], [IDКлиента], [IDСотрудника], [IDУслуги]) VALUES (1, CAST(N'2023-04-24' AS Date), N'12:00', 1, 1, 1)
INSERT [dbo].[Предстоящие записи] ([ID], [Дата], [Время], [IDКлиента], [IDСотрудника], [IDУслуги]) VALUES (2, CAST(N'2023-03-25' AS Date), N'14:00', 2, 2, 2)
INSERT [dbo].[Предстоящие записи] ([ID], [Дата], [Время], [IDКлиента], [IDСотрудника], [IDУслуги]) VALUES (3, CAST(N'2023-03-30' AS Date), N'13:00', 3, 3, 3)
SET IDENTITY_INSERT [dbo].[Предстоящие записи] OFF
GO
SET IDENTITY_INSERT [dbo].[Роль] ON 

INSERT [dbo].[Роль] ([ID], [Наименование]) VALUES (1, N'Администратор')
INSERT [dbo].[Роль] ([ID], [Наименование]) VALUES (2, N'Парикмахер')
INSERT [dbo].[Роль] ([ID], [Наименование]) VALUES (3, N'Рестайлер')
SET IDENTITY_INSERT [dbo].[Роль] OFF
GO
SET IDENTITY_INSERT [dbo].[Сотрудники] ON 

INSERT [dbo].[Сотрудники] ([ID], [Фамилия], [Имя], [Отчество], [Должность], [НомерТелефона], [Фото], [IDПользователя]) VALUES (1, N'Корчевнюк', N'Корин', N'Арсеньевич', N'Администратор', N'89035403232', N'Отсутствует', 1)
INSERT [dbo].[Сотрудники] ([ID], [Фамилия], [Имя], [Отчество], [Должность], [НомерТелефона], [Фото], [IDПользователя]) VALUES (2, N'Шахейн', N'Фит', N'Артурович', N'Рестайлер', N'89033544444', N'Отсутствует', 3)
INSERT [dbo].[Сотрудники] ([ID], [Фамилия], [Имя], [Отчество], [Должность], [НомерТелефона], [Фото], [IDПользователя]) VALUES (3, N'Николова', N'Инна', N'Николаевна', N'Парихмахер', N'89034344224', N'Отстутсвует', 2)
SET IDENTITY_INSERT [dbo].[Сотрудники] OFF
GO
SET IDENTITY_INSERT [dbo].[Услуги] ON 

INSERT [dbo].[Услуги] ([ID], [Наименование], [Описание], [Цена], [Фото], [IDКатегорииУслуги]) VALUES (1, N'Ноготочки', N'Маникюр проффесиональный', CAST(4000.00 AS Decimal(10, 2)), N'Отсутствует', 2)
INSERT [dbo].[Услуги] ([ID], [Наименование], [Описание], [Цена], [Фото], [IDКатегорииУслуги]) VALUES (2, N'Рестайлинг', N'Возвращение старых волос', CAST(5000.00 AS Decimal(10, 2)), N'Отсутствует', 3)
INSERT [dbo].[Услуги] ([ID], [Наименование], [Описание], [Цена], [Фото], [IDКатегорииУслуги]) VALUES (3, N'Стайлинг', N'Новые волосы', CAST(3000.00 AS Decimal(10, 2)), N'Отсутствует', 2)
SET IDENTITY_INSERT [dbo].[Услуги] OFF
GO
ALTER TABLE [dbo].[Отчеты]  WITH CHECK ADD  CONSTRAINT [FK_Отчеты_Сотрудники] FOREIGN KEY([IDСотрудника])
REFERENCES [dbo].[Сотрудники] ([ID])
GO
ALTER TABLE [dbo].[Отчеты] CHECK CONSTRAINT [FK_Отчеты_Сотрудники]
GO
ALTER TABLE [dbo].[Пользователи]  WITH CHECK ADD  CONSTRAINT [FK_Пользователи_Роль] FOREIGN KEY([IDРоли])
REFERENCES [dbo].[Роль] ([ID])
GO
ALTER TABLE [dbo].[Пользователи] CHECK CONSTRAINT [FK_Пользователи_Роль]
GO
ALTER TABLE [dbo].[Предстоящие записи]  WITH CHECK ADD  CONSTRAINT [FK_Предстоящие записи_Клиент] FOREIGN KEY([IDКлиента])
REFERENCES [dbo].[Клиент] ([ID])
GO
ALTER TABLE [dbo].[Предстоящие записи] CHECK CONSTRAINT [FK_Предстоящие записи_Клиент]
GO
ALTER TABLE [dbo].[Предстоящие записи]  WITH CHECK ADD  CONSTRAINT [FK_Предстоящие записи_Сотрудники] FOREIGN KEY([IDСотрудника])
REFERENCES [dbo].[Сотрудники] ([ID])
GO
ALTER TABLE [dbo].[Предстоящие записи] CHECK CONSTRAINT [FK_Предстоящие записи_Сотрудники]
GO
ALTER TABLE [dbo].[Предстоящие записи]  WITH CHECK ADD  CONSTRAINT [FK_Предстоящие записи_Услуги] FOREIGN KEY([IDУслуги])
REFERENCES [dbo].[Услуги] ([ID])
GO
ALTER TABLE [dbo].[Предстоящие записи] CHECK CONSTRAINT [FK_Предстоящие записи_Услуги]
GO
ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудники_Пользователи] FOREIGN KEY([IDПользователя])
REFERENCES [dbo].[Пользователи] ([ID])
GO
ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [FK_Сотрудники_Пользователи]
GO
ALTER TABLE [dbo].[Услуги]  WITH CHECK ADD  CONSTRAINT [FK_Услуги_Категория услуги] FOREIGN KEY([IDКатегорииУслуги])
REFERENCES [dbo].[Категория услуги] ([ID])
GO
ALTER TABLE [dbo].[Услуги] CHECK CONSTRAINT [FK_Услуги_Категория услуги]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "bob"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "bob1"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 136
               Right = 424
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
USE [master]
GO
ALTER DATABASE [SalonKrasoti] SET  READ_WRITE 
GO
