USE [FinalProject]
GO
/****** Object:  Table [dbo].[BreakingNews]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BreakingNews](
	[BreakingNewsID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[ActivityUrl] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[Description] [ntext] NULL,
	[IndexDescription] [ntext] NULL,
 CONSTRAINT [PK_BreakingNews] PRIMARY KEY CLUSTERED 
(
	[BreakingNewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carousel]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carousel](
	[CarouselID] [int] IDENTITY(1,1) NOT NULL,
	[PictureName] [nvarchar](50) NULL,
	[Url] [nvarchar](50) NULL,
 CONSTRAINT [PK_輪播] PRIMARY KEY CLUSTERED 
(
	[CarouselID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commodity]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commodity](
	[CommodityID] [int] IDENTITY(1,1) NOT NULL,
	[TempStorageID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[CommodityName] [nvarchar](50) NOT NULL,
	[CommodityQuantity] [int] NOT NULL,
	[CommodityUnitPrice] [int] NOT NULL,
	[Deadline] [datetime] NULL,
	[OnShelves] [bit] NULL,
 CONSTRAINT [PK_Shelves] PRIMARY KEY CLUSTERED 
(
	[CommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customerservice]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customerservice](
	[CustomerserviceID] [int] IDENTITY(1,1) NOT NULL,
	[Class] [nvarchar](50) NULL,
	[QuestionTitle] [nvarchar](50) NULL,
	[AnswerTitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customerservice] PRIMARY KEY CLUSTERED 
(
	[CustomerserviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Draw_Record]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Draw_Record](
	[Draw_id] [int] IDENTITY(1,1) NOT NULL,
	[ShowRaward_id] [int] NOT NULL,
	[Factory_id] [int] NOT NULL,
	[Member_id] [int] NOT NULL,
	[DrawCount] [int] NOT NULL,
	[Point] [int] NOT NULL,
	[DrawTime] [datetime] NOT NULL,
	[Settlement] [bit] NOT NULL,
	[SettlementTime] [datetime] NULL,
 CONSTRAINT [PK_Draw_Record] PRIMARY KEY CLUSTERED 
(
	[Draw_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Permission] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factory]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factory](
	[Factory_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[ContactPerson] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Factory] PRIMARY KEY CLUSTERED 
(
	[Factory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image_Store]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image_Store](
	[Image_id] [int] IDENTITY(1,1) NOT NULL,
	[Series] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ImageName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Image_Store_1] PRIMARY KEY CLUSTERED 
(
	[Image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineBot]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineBot](
	[LineBot_id] [int] IDENTITY(1,1) NOT NULL,
	[SendTime] [datetime] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[MessageType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LineBot] PRIMARY KEY CLUSTERED 
(
	[LineBot_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberInfo]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberInfo](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[MemberName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[encryptedResetCode] [nvarchar](200) NULL,
	[newPassword] [nvarchar](50) NULL,
	[RegisterDate] [date] NOT NULL,
	[ResetDateTime] [datetime] NULL,
	[Address] [nvarchar](200) NULL,
	[Birthday] [date] NULL,
	[Point] [int] NOT NULL,
 CONSTRAINT [PK_MemberInfo] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[MerchantOrderNo] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Amt] [nvarchar](50) NOT NULL,
	[TradeNo] [nvarchar](50) NOT NULL,
	[IP] [nvarchar](50) NULL,
	[ItemDesc] [nvarchar](200) NULL,
	[PaymentType] [nvarchar](50) NOT NULL,
	[ExpireDate] [nvarchar](50) NULL,
	[BankCode] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[PayTime] [nvarchar](50) NULL,
	[Card6No] [nvarchar](50) NULL,
	[Card4No] [nvarchar](50) NULL,
	[Exp] [nvarchar](50) NULL,
	[MemberId] [int] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[MerchantOrderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionHistory]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionHistory](
	[QuestionHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionReportID] [int] NULL,
	[Message] [nvarchar](max) NULL,
	[WhoAnswer] [int] NULL,
	[DateTimeSecond] [datetime] NULL,
 CONSTRAINT [PK_QuestionHistory] PRIMARY KEY CLUSTERED 
(
	[QuestionHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionReport]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionReport](
	[QuestionReportID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[MemberID] [int] NOT NULL,
	[QuestionTitle] [nvarchar](50) NULL,
	[QuestionType] [nvarchar](50) NULL,
	[DateTime] [datetime] NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProblemReport] PRIMARY KEY CLUSTERED 
(
	[QuestionReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raward_items]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raward_items](
	[Raward_id] [int] NOT NULL,
	[Raward_item_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Raward_level] [nvarchar](50) NOT NULL,
	[IsJackpot] [bit] NOT NULL,
	[Num] [int] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Raward_items] PRIMARY KEY CLUSTERED 
(
	[Raward_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raward_lib]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raward_lib](
	[Raward_id] [int] IDENTITY(1,1) NOT NULL,
	[Series] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Raward_lib] PRIMARY KEY CLUSTERED 
(
	[Raward_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShowRaward]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShowRaward](
	[ShowRaward_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Series] [nvarchar](50) NOT NULL,
	[Factory_id] [int] NOT NULL,
	[AddProbability] [int] NOT NULL,
	[NowProbability] [int] NOT NULL,
	[AllowStoreDay] [int] NOT NULL,
	[Fare] [int] NOT NULL,
	[OneDrawMoney] [int] NOT NULL,
	[IsOpen] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Introduction] [nvarchar](100) NULL,
	[Image] [nvarchar](50) NOT NULL,
	[HasSelectNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShowRaward] PRIMARY KEY CLUSTERED 
(
	[ShowRaward_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShowRaward_items]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShowRaward_items](
	[ShowRaward_item_id] [int] IDENTITY(1,1) NOT NULL,
	[ShowRaward_id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Raward_level] [nvarchar](50) NOT NULL,
	[IsJackpot] [bit] NOT NULL,
	[Num] [int] NOT NULL,
	[LaveNum] [int] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ShowRaward_items] PRIMARY KEY CLUSTERED 
(
	[ShowRaward_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempStorage]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempStorage](
	[TempStorageID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[PrizePool_ID] [int] NOT NULL,
	[Prize_ID] [int] NOT NULL,
	[PrizeName] [nvarchar](50) NOT NULL,
	[PrizeQuantity] [int] NOT NULL,
	[PrizePicture] [nvarchar](50) NOT NULL,
	[AwardDate] [datetime] NOT NULL,
	[Deadline] [datetime] NOT NULL,
	[Receive] [bit] NOT NULL,
	[Created] [bit] NOT NULL,
 CONSTRAINT [PK_TempStorage] PRIMARY KEY CLUSTERED 
(
	[TempStorageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TradeHistory]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TradeHistory](
	[TradeHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[Seller] [int] NOT NULL,
	[Buyer] [int] NOT NULL,
	[CommodityId] [int] NOT NULL,
	[CommodityQuantity] [int] NOT NULL,
	[CommodityUnitPrice] [int] NOT NULL,
	[TradeTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TradeHistory] PRIMARY KEY CLUSTERED 
(
	[TradeHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wishlist]    Script Date: 2023/5/29 下午 10:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wishlist](
	[itemID] [int] IDENTITY(1,1) NOT NULL,
	[PraductID] [int] NOT NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_wishlist] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BreakingNews] ON 

INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (1, N'本週新品推薦《海賊王》+《JOJO》', N'melvin-chavez-uCqpNqdA-5U-unsplash.jpg', CAST(N'2022-11-09T18:34:41.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'本週新品推薦《海賊王》難以攻陷的心腹+《JOJO的奇妙冒險》石之海STAND’S ASSEMBLE 《海賊王》難以攻陷的心腹 4月14日(六)凌晨00:00與日本同步開...')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (2, N'【新玩法】超級福袋! 公仔加量! 加倍爽!', N'tim-mossholder-tq8Cuap8_wY-unsplash.jpg', CAST(N'2022-11-02T16:38:10.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'斜角巷《超級福袋》：第一彈 https://www.oneone.com.tw/product/7323 地方爸爸《超級福袋》爽撈熊 https://www.oneone.com.t...')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (3, N'《七龍珠》基紐特戰隊!!來襲即刻開抽!', N'melanie-these-rz3eCYGgGSc-unsplash.jpg', CAST(N'2022-11-18T14:17:46.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'【日本金證】《七龍珠》基紐特戰隊!!00:00來襲 https://www.oneone.com.tw/category/37 集結弗利沙麾下、由宇宙精銳戰是中挑選出來的超級特種部隊「...')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (4, N'春日限定！消費滿額再送公仔', N'ryan-yao-hhBvtVxDV_I-unsplash.jpg', CAST(N'2022-10-13T19:38:51.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'❤4月春節回饋~限時開跑~消費滿額再送公仔 ❤好康一、連續假期-低價不斷 ★活動時間：即日起~4月底 ★活動內容： 活動期間內，春日限定 低價優惠!! 立即前往[...')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (5, N'秒數大進化，抽賞有保障', N'guillermo-diaz-fs6zYhHyzvI-unsplash.jpg', CAST(N'2022-09-28T13:07:12.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'秒數大進化，抽賞有保障 3/29(三) 12:00~15:00 oneone商城將進行線上優化作業，為讓用戶有更舒服的抽賞體驗，以下調整介紹: 進化一、商品剩餘30抽(含)以上，保...')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (6, N'本月可愛推薦《布丁狗》(全開箱)', N'doug-maloney-B63UmuDkznY-unsplash.jpg', CAST(N'2023-05-08T17:57:59.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'本月可愛推薦三麗鷗賞《布丁狗》(全開箱)點擊連結購買：
https://www.oneone.com.tw/category/120
&nbsp;
..')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (7, N'BLUE LOCK 藍色監獄，唯一套搶抽', N'maha-khairy-3uuLWb6aQXc-unsplash.jpg', CAST(N'2023-05-07T09:47:31.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'本週新品：BLUE LOCK 藍色監獄
202/03/25 00:00 凌晨與日本同步開抽!!

A賞 潔世一 角色立牌 約19cm


B賞 蜂樂迴 角色立牌 約16cm

...')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (8, N'
塔比樂 輕拼樂 5/2 & 5/3 中獎號碼 大公開', N'aaron-cass-GJuhDRbMj7g-unsplash.jpg', CAST(N'2023-05-04T16:49:44.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'「輕拼樂」首次開獎，[最後]才來[對] ★新系列商品「輕拼樂」以“低價拚大賞+最後機會人人有”為特色 開獎啦!!!   《塔比樂》輕拼樂： 美音...')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (9, N'
四月感謝大回饋!! 花小錢，抽大獎！', N'jezael-melgoza-layMbSJ3YOE-unsplash.jpg', CAST(N'2023-03-27T12:43:57.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'好康一、四月感謝大回饋 ★活動時間：即日起~5/2 ★活動內容： 多套一番賞 降價回饋! 活動期間內，春日特價 特別優惠!! 立即前往 [ 春日特價 ]...')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (10, N'尼爾:自動人形【最終套】即將完抽', N'anton-maksimov-5642-su-3jDZM3rgpz8-unsplash.jpg', CAST(N'2023-04-21T16:15:06.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'尼爾:自動人形 Ver1.1a3/21 00:00限量開抽 https://www.oneone.com.tw/category/131 最後賞 2B模型公仔 Goggles OF...')
INSERT [dbo].[BreakingNews] ([BreakingNewsID], [Title], [ActivityUrl], [Date], [Description], [IndexDescription]) VALUES (11, N'LINEPAY服務暫停，請改用其他金流', N'kadyn-pierce-49X42qrgUmQ-unsplash.jpg', CAST(N'2023-04-09T05:23:00.000' AS DateTime), N'獎項內容：

《海賊王》難以攻陷的心腹模型公仔
   A賞 羅羅亞﹒索隆(2名)
   B賞 班·貝克曼(1名)
   C賞 馬爾科(1名)
   D賞 夏洛特·卡塔克利(2名)
   E賞 KING(1名)
※A*1賞&D賞*1為拆封過之展示品

《海賊王》難以攻陷的心腹禮包(11名)
   G賞 造型毛巾/H賞 A4資料夾貼紙與口罩夾套組/I賞 圓形小盤
    隨機搭配共6樣商品為一個禮包

《海賊王》難以攻陷的心腹之最後賞馬爾科模型公仔(1名)
※此最後賞公仔為拆封過之展示品
', N'
LINEPAY服務暫停，請改用其他金流
2023-03-16 17:22:00

即日起，暫停LINEPay服務付款方式，請用戶改用信用卡、APPLEPAY、超商代碼付款。 造成用戶們的不便還請見諒。 oneone商城營運團隊 敬上...')
SET IDENTITY_INSERT [dbo].[BreakingNews] OFF
GO
SET IDENTITY_INSERT [dbo].[Carousel] ON 

INSERT [dbo].[Carousel] ([CarouselID], [PictureName], [Url]) VALUES (1, N'貓', N'https://picsum.photos/1296/150?random=1')
INSERT [dbo].[Carousel] ([CarouselID], [PictureName], [Url]) VALUES (2, N'狗', N'https://picsum.photos/1296/150?random=2')
INSERT [dbo].[Carousel] ([CarouselID], [PictureName], [Url]) VALUES (3, N'貓2', N'https://picsum.photos/1296/150?random=3')
INSERT [dbo].[Carousel] ([CarouselID], [PictureName], [Url]) VALUES (4, N'狗2', N'https://picsum.photos/1296/150?random=4')
SET IDENTITY_INSERT [dbo].[Carousel] OFF
GO
SET IDENTITY_INSERT [dbo].[Commodity] ON 

INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (1, 1, 1, N'角色壓克力立牌', 2, 50, CAST(N'2023-06-07T14:30:17.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (2, 2, 1, N'美耐皿盤子(全4種隨機)', 3, 500, CAST(N'2023-06-07T14:30:17.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (3, 3, 1, N'橡膠吊飾(全11種隨機)', 1, 50, CAST(N'2023-06-07T14:30:17.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (4, 4, 1, N'美耐皿盤子(全4種隨機)', 0, 1, CAST(N'2023-06-07T14:56:01.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (5, 5, 1, N'角色壓克力立牌(全10種隨機)', 1, 1, CAST(N'2023-06-07T14:57:41.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (6, 6, 1, N'橡膠吊飾(全11種隨機)', 1, 999, CAST(N'2023-06-07T15:03:38.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (7, 11, 5, N'美耐皿盤子(全4種隨機)', 1, 500, CAST(N'2023-06-07T14:30:17.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (8, 13, 5, N'美耐皿盤子(全4種隨機)', 1, 999, CAST(N'2023-06-07T14:30:17.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (9, 12, 5, N'美耐皿盤子(全4種隨機)', 0, 777, CAST(N'2023-06-07T14:30:17.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (10, 18, 1, N'羅羅亞﹒索隆 模型公仔', 1, 799, CAST(N'2023-06-11T14:28:56.000' AS DateTime), 1)
INSERT [dbo].[Commodity] ([CommodityID], [TempStorageID], [MemberID], [CommodityName], [CommodityQuantity], [CommodityUnitPrice], [Deadline], [OnShelves]) VALUES (11, 22, 1, N' KING 模型公仔', 1, 2000, CAST(N'2023-06-11T14:35:49.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Commodity] OFF
GO
SET IDENTITY_INSERT [dbo].[Customerservice] ON 

INSERT [dbo].[Customerservice] ([CustomerserviceID], [Class], [QuestionTitle], [AnswerTitle]) VALUES (1, N'Account', N'如何成為會員?', N'需註冊成為會員才可以購買商品')
INSERT [dbo].[Customerservice] ([CustomerserviceID], [Class], [QuestionTitle], [AnswerTitle]) VALUES (2, N'Account', N'個人資料保密?', N'我們將善盡保管職責，會員資訊僅作為記錄與寄送紀錄。
')
INSERT [dbo].[Customerservice] ([CustomerserviceID], [Class], [QuestionTitle], [AnswerTitle]) VALUES (3, N'Account', N'註冊成會員有甚麼好處?', N'每次消費可以獲得紅利，用於重抽、續購扭蛋或折抵訂單金額。')
INSERT [dbo].[Customerservice] ([CustomerserviceID], [Class], [QuestionTitle], [AnswerTitle]) VALUES (4, N'Consumption', N'如何購買?', N'商品加入購物車後完成訂單付款。')
INSERT [dbo].[Customerservice] ([CustomerserviceID], [Class], [QuestionTitle], [AnswerTitle]) VALUES (5, N'Consumption', N'有哪些付款方式?', N'可使用代幣付款、LINE Pay、信用卡、WebATM、ATM轉帳、超商代碼繳費、超商貨到付款。')
INSERT [dbo].[Customerservice] ([CustomerserviceID], [Class], [QuestionTitle], [AnswerTitle]) VALUES (6, N'Freight', N'運費如何計算?', N'運費計算請參考下列各家收件方式。2.免運不包含促銷、直購商品與一番賞。3.
其餘免運活動以官網&粉絲專頁發佈為準。')
INSERT [dbo].[Customerservice] ([CustomerserviceID], [Class], [QuestionTitle], [AnswerTitle]) VALUES (7, N'Commodity', N'商品可退換貨標準?', N'玩具商品皆為工廠大量製造，盒損、溢色、掉漆、分模線…等皆非歸屬於瑕疵之列，無提供退換貨服務。
若因斷裂、缺件或商品有誤，請於到貨後七日內聯繫客服，逾期恕不予以處理。
不接受超取或親取逾期遭退回或未收到簡訊為由而退貨，需負起遲延責任，將向買家請求損害賠償，需賠償運費或其他損失。
退貨商品必須整筆訂單為全新狀態且完整包裝並附發票，除非雙方有共識可以針對某特定商品作處理。
退貨商品如已拆封、缺件、活動贈品或發票不齊全等情形，恕不可辦理退貨。（包含環保扭蛋封膜未拆、盒玩未拆、贈品...等）。')
INSERT [dbo].[Customerservice] ([CustomerserviceID], [Class], [QuestionTitle], [AnswerTitle]) VALUES (8, N'Commodity', N'有商品疑慮嗎?', N'選者的東西皆為日貨全新正版。')
SET IDENTITY_INSERT [dbo].[Customerservice] OFF
GO
SET IDENTITY_INSERT [dbo].[Draw_Record] ON 

INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (14, 1003, 2, 1, 1, 450, CAST(N'2023-05-24T15:10:25.520' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (15, 1003, 2, 1, 1, 350, CAST(N'2023-05-24T15:11:18.880' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (16, 1003, 2, 5, 0, 100, CAST(N'2023-05-25T02:57:39.817' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (17, 1003, 2, 5, 0, 100, CAST(N'2023-05-25T03:41:07.403' AS DateTime), 1, CAST(N'2023-05-25T03:47:58.723' AS DateTime))
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (18, 1003, 2, 5, 2, 700, CAST(N'2023-05-27T15:17:37.370' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (19, 1005, 3, 5, 3, 1150, CAST(N'2023-05-27T19:40:06.833' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (20, 1005, 3, 1, 2, 800, CAST(N'2023-05-28T14:28:56.577' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (21, 1005, 3, 1, 18, 6300, CAST(N'2023-05-28T14:35:49.080' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (22, 1005, 3, 1, 4, 1400, CAST(N'2023-05-28T14:40:47.303' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (23, 1005, 3, 1, 1, 350, CAST(N'2023-05-28T14:43:09.083' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (24, 1005, 3, 1, 4, 1400, CAST(N'2023-05-28T14:50:37.827' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (25, 1005, 3, 1, 1, 350, CAST(N'2023-05-28T14:52:02.470' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (26, 1005, 3, 1, 1, 350, CAST(N'2023-05-28T14:54:41.117' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (27, 1005, 3, 1, 1, 350, CAST(N'2023-05-28T14:54:51.957' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (28, 1005, 3, 1, 1, 350, CAST(N'2023-05-28T14:55:20.123' AS DateTime), 0, NULL)
INSERT [dbo].[Draw_Record] ([Draw_id], [ShowRaward_id], [Factory_id], [Member_id], [DrawCount], [Point], [DrawTime], [Settlement], [SettlementTime]) VALUES (29, 1005, 3, 1, 1, 350, CAST(N'2023-05-28T14:56:08.170' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[Draw_Record] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Password], [Permission]) VALUES (1, N'yoyo', N'yoyo', 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Factory] ON 

INSERT [dbo].[Factory] ([Factory_id], [Name], [Phone], [ContactPerson]) VALUES (2, N'公司自營', N'0988888888', N'天選先生')
INSERT [dbo].[Factory] ([Factory_id], [Name], [Phone], [ContactPerson]) VALUES (3, N'摩多摩多', N'0987888888', N'林先生')
SET IDENTITY_INSERT [dbo].[Factory] OFF
GO
SET IDENTITY_INSERT [dbo].[Image_Store] ON 

INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (2, N'間諜家家酒', N'MISSION START!', N'20230516211450安妮亞萬年曆公仔.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (3, N'間諜家家酒', N'MISSION START!', N'20230516211518安妮亞娃娃.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (4, N'間諜家家酒', N'MISSION START!', N'20230516211554造型浴巾.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (5, N'間諜家家酒', N'MISSION START!', N'20230516211626安妮亞造型浴巾.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (6, N'間諜家家酒', N'MISSION START!', N'20230516211644家庭插畫版.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (7, N'間諜家家酒', N'MISSION START!', N'20230516211657家庭插畫版2.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (8, N'間諜家家酒', N'MISSION START!', N'20230516211715立牌.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (9, N'間諜家家酒', N'MISSION START!', N'20230516211733吊飾.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (10, N'間諜家家酒', N'MISSION START!', N'20230516211745盤子.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (11, N'間諜家家酒', N'MISSION START!', N'20230517092142間諜家家酒banner.png')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (12, N'海賊王', N'難以攻陷的心腹', N'20230517094008海賊王banner.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (13, N'海賊王', N'難以攻陷的心腹', N'20230517102100索隆公仔.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (14, N'海賊王', N'難以攻陷的心腹', N'20230517102125貝克曼公仔.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (15, N'海賊王', N'難以攻陷的心腹', N'20230517102148馬爾科公仔.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (16, N'海賊王', N'難以攻陷的心腹', N'20230517102204夏洛特·卡塔克利.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (17, N'海賊王', N'難以攻陷的心腹', N'20230517102217KING模型公仔.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (18, N'海賊王', N'難以攻陷的心腹', N'20230517102234120cm大毛巾.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (19, N'海賊王', N'難以攻陷的心腹', N'20230517102248造型毛巾(全8種隨機).jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (20, N'海賊王', N'難以攻陷的心腹', N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (21, N'海賊王', N'難以攻陷的心腹', N'20230517102329圓形小盤(全9種隨機).jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (22, N'轉生史萊姆', N'關於我轉生成史萊姆這檔事 霸氣~', N'20230528221528史萊姆banner.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (23, N'轉生史萊姆', N'關於我轉生成史萊姆這檔事 霸氣~', N'20230528221547拉法葉.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (24, N'轉生史萊姆', N'關於我轉生成史萊姆這檔事 霸氣~', N'20230528221602利路姆.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (25, N'轉生史萊姆', N'關於我轉生成史萊姆這檔事 霸氣~', N'20230528221613利路姆版畫.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (26, N'轉生史萊姆', N'關於我轉生成史萊姆這檔事 霸氣~', N'20230528221629迪亞布羅.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (27, N'轉生史萊姆', N'關於我轉生成史萊姆這檔事 霸氣~', N'20230528221645史萊姆方巾.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (28, N'轉生史萊姆', N'關於我轉生成史萊姆這檔事 霸氣~', N'20230528221655史萊姆立牌.jpg')
INSERT [dbo].[Image_Store] ([Image_id], [Series], [Name], [ImageName]) VALUES (29, N'轉生史萊姆', N'關於我轉生成史萊姆這檔事 霸氣~', N'20230528221704史萊姆吊飾.jpg')
SET IDENTITY_INSERT [dbo].[Image_Store] OFF
GO
SET IDENTITY_INSERT [dbo].[LineBot] ON 

INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (14, CAST(N'2023-05-28T10:36:30.193' AS DateTime), N'大放送', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (15, CAST(N'2023-05-28T18:41:18.217' AS DateTime), N'dsadasdasd(Love)(Cool)', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (16, CAST(N'2023-05-28T18:44:14.457' AS DateTime), N'大放送(Love)', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (17, CAST(N'2023-05-28T18:45:26.473' AS DateTime), N'發送', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (18, CAST(N'2023-05-28T18:48:36.343' AS DateTime), N'123(Love)', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (19, CAST(N'2023-05-28T18:49:00.903' AS DateTime), N'(Laugh)123', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (20, CAST(N'2023-05-28T18:54:16.690' AS DateTime), N'123(Abash)', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (21, CAST(N'2023-05-28T18:58:05.987' AS DateTime), N'1235(Laugh)', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (22, CAST(N'2023-05-28T19:01:52.593' AS DateTime), N'你好(Laugh)', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (23, CAST(N'2023-05-28T19:07:41.063' AS DateTime), N'(Angry)', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (24, CAST(N'2023-05-28T19:11:48.110' AS DateTime), N'13 (Laugh)', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (25, CAST(N'2023-05-28T19:12:32.790' AS DateTime), N'屋 (Love)', N'text')
INSERT [dbo].[LineBot] ([LineBot_id], [SendTime], [Message], [MessageType]) VALUES (26, CAST(N'2023-05-28T19:32:13.177' AS DateTime), N'5dsa5d6asd$dasd$', N'text')
SET IDENTITY_INSERT [dbo].[LineBot] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberInfo] ON 

INSERT [dbo].[MemberInfo] ([MemberId], [Email], [MemberName], [Phone], [Password], [encryptedResetCode], [newPassword], [RegisterDate], [ResetDateTime], [Address], [Birthday], [Point]) VALUES (1, N'j42036910@gmail.com', N'j42036910@gmail.com', N'0123456789', N'D291D91C1FC6A231F4F251E3C102DB8251DD7E4331940496DF52C13D535EADEA', NULL, NULL, CAST(N'2023-05-18' AS Date), NULL, NULL, NULL, 8023)
INSERT [dbo].[MemberInfo] ([MemberId], [Email], [MemberName], [Phone], [Password], [encryptedResetCode], [newPassword], [RegisterDate], [ResetDateTime], [Address], [Birthday], [Point]) VALUES (2, N'test02@gmail.com', N'test02@gmail.com', N'0123456789', N'D291D91C1FC6A231F4F251E3C102DB8251DD7E4331940496DF52C13D535EADEA', NULL, NULL, CAST(N'2023-05-18' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[MemberInfo] ([MemberId], [Email], [MemberName], [Phone], [Password], [encryptedResetCode], [newPassword], [RegisterDate], [ResetDateTime], [Address], [Birthday], [Point]) VALUES (3, N'test03@gmail.com', N'test03@gmail.com', N'0123456789', N'D291D91C1FC6A231F4F251E3C102DB8251DD7E4331940496DF52C13D535EADEA', NULL, NULL, CAST(N'2023-05-18' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[MemberInfo] ([MemberId], [Email], [MemberName], [Phone], [Password], [encryptedResetCode], [newPassword], [RegisterDate], [ResetDateTime], [Address], [Birthday], [Point]) VALUES (4, N't44@gmail.com', N't44@gmail.com', N'0123456789', N'D291D91C1FC6A231F4F251E3C102DB8251DD7E4331940496DF52C13D535EADEA', NULL, NULL, CAST(N'2023-05-18' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[MemberInfo] ([MemberId], [Email], [MemberName], [Phone], [Password], [encryptedResetCode], [newPassword], [RegisterDate], [ResetDateTime], [Address], [Birthday], [Point]) VALUES (5, N'uiojilk777@gmail.com', N'test', N'0912345678', N'B9E5DB57F1499C59B6B8DC0E3E440DFB61E6C4D67B3DD4E430878AEBEB16AA4F', NULL, NULL, CAST(N'2023-05-22' AS Date), NULL, NULL, NULL, 7827)
INSERT [dbo].[MemberInfo] ([MemberId], [Email], [MemberName], [Phone], [Password], [encryptedResetCode], [newPassword], [RegisterDate], [ResetDateTime], [Address], [Birthday], [Point]) VALUES (6, N'q821011@gmail.com', N'測試人員', N'0989977272', N'AE77DA308ABAF01EE51C1DE8C7560DDB2E6B498C0BFB23A7248148540F973535', NULL, NULL, CAST(N'2023-05-24' AS Date), NULL, NULL, NULL, 8850)
SET IDENTITY_INSERT [dbo].[MemberInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionHistory] ON 

INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (1, 15, N'我無法登入我的一番賞帳號，每次嘗試都顯示錯誤訊息。請問該如何解決這個問題？', 1, CAST(N'2023-05-16T04:03:41.220' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (2, 15, N'親愛的顧客，非常抱歉聽到您無法登入您的一番賞帳號。請嘗試重設您的密碼，您可以點擊「忘記密碼」連結，然後按照步驟進行密碼重設。如果問題仍然存在，請聯繫我們的客服團隊，他們將竭誠為您提供協助。', 2, CAST(N'2023-05-17T04:03:41.220' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (3, 16, N'我在最近一次的購物中發現消費紀錄與實際購買的商品不符。請問該如何處理這個問題並獲得正確的消費紀錄？', 1, CAST(N'2023-05-16T05:56:01.290' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (4, 16, N'親愛的顧客，對於消費紀錄不符的情況，我們非常抱歉給您帶來困擾。請您提供訂單號碼和相關資訊，我們的客服團隊將盡快調查並核實您的消費紀錄。如果確定有誤，我們將協助您獲得正確的消費紀錄並解決相關問題。', 2, CAST(N'2023-05-17T05:56:01.290' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (5, 17, N'在結帳時，系統計算的運費金額與實際收取的金額不符。請問如何處理這個運費計算錯誤的問題？', 1, CAST(N'2023-05-16T06:54:19.677' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (6, 17, N'都過多久了，你們有要回答嗎?', 1, CAST(N'2023-05-18T06:54:19.677' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (7, 17, N'親愛的顧客，對於運費計算錯誤，我們深感抱歉。請您提供訂單號碼和具體的運費金額差異，我們將仔細檢查並修正錯誤。如果確認運費計算有誤，我們將退還您多收的金額或提供適當的補償方式。', 2, CAST(N'2023-05-17T06:54:19.677' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (8, 18, N'親愛的顧客，非常抱歉收到損壞的商品。為了解決這個問題，請您提供訂單號碼、商品照片和損壞的具體描述。我們將盡快處理您的申請並提供退換貨的服務，確保您能獲得完好的商品或適當的補償。', 1, CAST(N'2023-05-16T06:54:25.020' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (9, 18, N'我的帳號被鎖定了，無法登入或進行任何操作。請問該如何解鎖我的帳號？', 2, CAST(N'2023-05-17T06:54:25.020' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (13, 33, N'我收到的商品在運送過程中遭到損壞。請問該如何處理這個問題並獲得退換貨的服務？', 1, CAST(N'2023-05-19T16:06:14.240' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (71, 65, N'我在購物過程中進行了付款，但卻未成功扣款，訂單顯示為未完成。請問該如何處理這個問題並確認付款？', 1, CAST(N'2023-05-27T21:20:33.717' AS DateTime))
INSERT [dbo].[QuestionHistory] ([QuestionHistoryID], [QuestionReportID], [Message], [WhoAnswer], [DateTimeSecond]) VALUES (72, 66, N'請客服人員聯繫我', 1, CAST(N'2023-05-28T12:46:52.117' AS DateTime))
SET IDENTITY_INSERT [dbo].[QuestionHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionReport] ON 

INSERT [dbo].[QuestionReport] ([QuestionReportID], [MemberID], [QuestionTitle], [QuestionType], [DateTime], [State]) VALUES (15, 1, N'帳號無法登入', N'帳號問題', CAST(N'2023-05-16T04:03:41.220' AS DateTime), N'已回覆')
INSERT [dbo].[QuestionReport] ([QuestionReportID], [MemberID], [QuestionTitle], [QuestionType], [DateTime], [State]) VALUES (16, 1, N'消費紀錄不符', N'消費問題', CAST(N'2023-05-16T05:56:01.290' AS DateTime), N'已回覆')
INSERT [dbo].[QuestionReport] ([QuestionReportID], [MemberID], [QuestionTitle], [QuestionType], [DateTime], [State]) VALUES (17, 2, N'運費計算錯誤', N'運費問題', CAST(N'2023-05-16T06:54:19.677' AS DateTime), N'已回覆')
INSERT [dbo].[QuestionReport] ([QuestionReportID], [MemberID], [QuestionTitle], [QuestionType], [DateTime], [State]) VALUES (18, 3, N'帳號被鎖定', N'帳號問題', CAST(N'2023-05-16T06:54:25.020' AS DateTime), N'已回覆')
INSERT [dbo].[QuestionReport] ([QuestionReportID], [MemberID], [QuestionTitle], [QuestionType], [DateTime], [State]) VALUES (33, 1, N'收到損壞的商品', N'商品問題', CAST(N'2023-05-19T16:06:14.240' AS DateTime), N'未回覆')
INSERT [dbo].[QuestionReport] ([QuestionReportID], [MemberID], [QuestionTitle], [QuestionType], [DateTime], [State]) VALUES (65, 1, N'付款未成功扣款', N'消費問題', CAST(N'2023-05-27T21:20:33.710' AS DateTime), N'未回覆')
INSERT [dbo].[QuestionReport] ([QuestionReportID], [MemberID], [QuestionTitle], [QuestionType], [DateTime], [State]) VALUES (66, 1, N'我有其他問題', N'其他問題', CAST(N'2023-05-28T12:46:51.933' AS DateTime), N'未回覆')
SET IDENTITY_INSERT [dbo].[QuestionReport] OFF
GO
SET IDENTITY_INSERT [dbo].[Raward_items] ON 

INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9030, 11004, N'安妮亞‧佛傑 萬年曆', N'A賞', 1, 2, N'20230516211450安妮亞萬年曆公仔.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9030, 11005, N'安妮亞‧佛傑 絨毛玩偶', N'B賞', 1, 2, N'20230516211518安妮亞娃娃.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9030, 11006, N'SPY×FAMILY120cm大浴巾', N'C賞', 1, 2, N'20230516211554造型浴巾.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9030, 11007, N'安妮亞×同學款 120cm大浴巾', N'D賞', 1, 2, N'20230516211626安妮亞造型浴巾.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9030, 11008, N'新繪製插畫板-Misson Start!', N'E賞', 1, 3, N'20230516211644家庭插畫版.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9030, 11009, N'新繪製插畫板-安妮亞的廚房- A3size', N'F賞', 1, 3, N'20230516211657家庭插畫版2.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9030, 11010, N'角色壓克力立牌(全10種隨機) ', N'G賞', 0, 25, N'20230516211715立牌.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9030, 11011, N'橡膠吊飾(全11種隨機)', N'H賞', 0, 25, N'20230516211733吊飾.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9030, 11012, N'美耐皿盤子(全4種隨機)', N'I賞', 0, 16, N'20230516211745盤子.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9031, 11013, N'羅羅亞﹒索隆 模型公仔', N'A賞', 1, 2, N'20230517102100索隆公仔.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9031, 11014, N'班﹒貝克曼 模型公仔', N'B賞', 1, 1, N'20230517102125貝克曼公仔.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9031, 11015, N'馬爾科 模型公仔', N'C賞', 1, 1, N'20230517102148馬爾科公仔.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9031, 11016, N'夏洛特·卡塔克利 模型公仔', N'D賞', 1, 2, N'20230517102204夏洛特·卡塔克利.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9031, 11017, N'KING 模型公仔', N'E賞', 1, 1, N'20230517102217KING模型公仔.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9031, 11018, N'120cm 大毛巾', N'F賞', 1, 1, N'20230517102234120cm大毛巾.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9031, 11019, N'造型毛巾(全8種隨機)', N'G賞', 0, 24, N'20230517102248造型毛巾(全8種隨機).jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9031, 11020, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', N'H賞', 0, 24, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9031, 11021, N'圓形小盤(全9種隨機)', N'I賞', 0, 24, N'20230517102329圓形小盤(全9種隨機).jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9032, 11022, N'智慧之王 模型公仔', N'A賞', 1, 3, N'20230528221547拉法葉.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9032, 11023, N'利姆路 坦派斯特 模型公仔', N'B賞', 1, 3, N'20230528221602利路姆.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9032, 11024, N'A3智慧之王 金屬質感插畫', N'C賞', 1, 2, N'20230528221613利路姆版畫.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9032, 11025, N'A3迪亞布羅 金屬質感插畫', N'D賞', 1, 2, N'20230528221629迪亞布羅.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9032, 11026, N'手帕(全8種隨機)', N'E賞', 0, 24, N'20230528221645史萊姆方巾.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9032, 11027, N'壓克力展台(全10種隨機)', N'F賞', 0, 20, N'20230528221655史萊姆立牌.jpg')
INSERT [dbo].[Raward_items] ([Raward_id], [Raward_item_id], [Name], [Raward_level], [IsJackpot], [Num], [Image]) VALUES (9032, 11028, N'壓克力吊飾(全12種隨機)', N'G賞', 0, 26, N'20230528221704史萊姆吊飾.jpg')
SET IDENTITY_INSERT [dbo].[Raward_items] OFF
GO
SET IDENTITY_INSERT [dbo].[Raward_lib] ON 

INSERT [dbo].[Raward_lib] ([Raward_id], [Series], [Name]) VALUES (9030, N'間諜家家酒', N'MISSION START!')
INSERT [dbo].[Raward_lib] ([Raward_id], [Series], [Name]) VALUES (9031, N'海賊王', N'難以攻陷的心腹')
INSERT [dbo].[Raward_lib] ([Raward_id], [Series], [Name]) VALUES (9032, N'轉生史萊姆', N'關於我轉生成史萊姆這檔事 霸氣~')
SET IDENTITY_INSERT [dbo].[Raward_lib] OFF
GO
SET IDENTITY_INSERT [dbo].[ShowRaward] ON 

INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1003, N'MISSION START!', N'間諜家家酒', 2, 0, 0, 14, 100, 350, 1, CAST(N'2023-05-17T10:01:31.427' AS DateTime), N'間諜家家酒最新系列', N'20230517092142間諜家家酒banner.png', N'9,28,')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1005, N'難以攻略的心腹', N'海賊王', 2, 0, 0, 14, 100, 350, 1, CAST(N'2023-05-23T11:15:24.927' AS DateTime), N'抽到爽', N'20230517094008海賊王banner.jpg', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1006, N'【大爆抽】關於我轉生成史萊姆這檔事 霸氣~', N'轉生史萊姆', 3, 0, 0, 14, 120, 330, 1, CAST(N'2023-05-28T22:21:35.267' AS DateTime), N'超霸氣，快來抽', N'20230528221528史萊姆banner.jpg', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1007, N'關於我轉生成史萊姆這檔事 霸氣~', N'轉生史萊姆', 2, 0, 0, 0, 120, 330, 1, CAST(N'2023-05-28T22:22:50.727' AS DateTime), N'公司自營，僅此一套!', N'20230528221528史萊姆banner.jpg', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1008, N'【路邊攤】間諜家家酒 MISSION START!', N'間諜家家酒', 4, 0, 0, 7, 100, 340, 1, CAST(N'2023-05-28T22:25:35.780' AS DateTime), N'路邊攤，全場最低價!', N'20230517092142間諜家家酒banner.png', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1009, N'【摩天大聖】難以攻略的心腹', N'海賊王', 5, 0, 0, 5, 120, 350, 1, CAST(N'2023-05-28T22:28:31.610' AS DateTime), N'抽給他勇', N'20230517094008海賊王banner.jpg', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1010, N'【摩天大聖】間諜家家酒 MISSION START!', N'間諜家家酒', 5, 0, 0, 5, 120, 360, 1, CAST(N'2023-05-28T22:29:37.723' AS DateTime), N'抽給他爽', N'20230517092142間諜家家酒banner.png', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1011, N'【路邊攤】難以攻略的心腹', N'海賊王', 4, 0, 0, 7, 120, 350, 1, CAST(N'2023-05-28T22:31:08.550' AS DateTime), N'路邊就可以抽', N'20230517094008海賊王banner.jpg', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1012, N'【路邊攤】關於我轉生成史萊姆這檔事 霸氣~', N'轉生史萊姆', 4, 0, 0, 7, 100, 330, 1, CAST(N'2023-05-28T22:32:50.440' AS DateTime), N'超級好抽', N'20230528221528史萊姆banner.jpg', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1013, N'【挖哭挖哭】間諜家家酒 MISSION START!', N'間諜家家酒', 3, 0, 0, 14, 100, 350, 1, CAST(N'2023-05-28T22:33:58.963' AS DateTime), N'挖哭挖哭', N'20230517092142間諜家家酒banner.png', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1014, N'【橡膠橡膠】難以攻略的心腹', N'海賊王', 3, 0, 0, 0, 100, 330, 1, CAST(N'2023-05-28T22:36:42.533' AS DateTime), N'橡膠', N'20230517094008海賊王banner.jpg', N'')
INSERT [dbo].[ShowRaward] ([ShowRaward_id], [Name], [Series], [Factory_id], [AddProbability], [NowProbability], [AllowStoreDay], [Fare], [OneDrawMoney], [IsOpen], [CreateTime], [Introduction], [Image], [HasSelectNumber]) VALUES (1015, N'【摩天大聖】關於我轉生成史萊姆這檔事 霸氣~', N'轉生史萊姆', 5, 0, 0, 5, 120, 300, 1, CAST(N'2023-05-28T22:37:48.190' AS DateTime), N'極致便宜', N'20230528221528史萊姆banner.jpg', N'')
SET IDENTITY_INSERT [dbo].[ShowRaward] OFF
GO
SET IDENTITY_INSERT [dbo].[ShowRaward_items] ON 

INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3010, 1003, N'安妮亞‧佛傑 萬年曆', N'A賞', 1, 2, 1, N'20230516211450安妮亞萬年曆公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3011, 1003, N'安妮亞‧佛傑 絨毛玩偶', N'B賞', 1, 2, 2, N'20230516211518安妮亞娃娃.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3012, 1003, N'SPY×FAMILY120cm大浴巾', N'C賞', 1, 2, 2, N'20230516211554造型浴巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3013, 1003, N'安妮亞×同學款 120cm大浴巾', N'D賞', 1, 2, 2, N'20230516211626安妮亞造型浴巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3014, 1003, N'新繪製插畫板-Misson Start!', N'E賞', 1, 3, 3, N'20230516211644家庭插畫版.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3015, 1003, N'新繪製插畫板-安妮亞的廚房- A3size', N'F賞', 1, 3, 3, N'20230516211657家庭插畫版2.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3016, 1003, N'角色壓克力立牌(全10種隨機) ', N'G賞', 0, 25, 25, N'20230516211715立牌.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3017, 1003, N'橡膠吊飾(全11種隨機)', N'H賞', 0, 25, 25, N'20230516211733吊飾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3018, 1003, N'美耐皿盤子(全4種隨機)', N'I賞', 0, 16, 15, N'20230516211745盤子.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3020, 1005, N'羅羅亞﹒索隆 模型公仔', N'A賞', 1, 2, 2, N'20230517102100索隆公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3021, 1005, N'班﹒貝克曼 模型公仔', N'B賞', 1, 1, 1, N'20230517102125貝克曼公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3022, 1005, N'馬爾科 模型公仔', N'C賞', 1, 1, 1, N'20230517102148馬爾科公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3023, 1005, N'夏洛特·卡塔克利 模型公仔', N'D賞', 1, 2, 2, N'20230517102204夏洛特·卡塔克利.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3024, 1005, N'KING 模型公仔', N'E賞', 1, 1, 1, N'20230517102217KING模型公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3025, 1005, N'120cm 大毛巾', N'F賞', 1, 1, 1, N'20230517102234120cm大毛巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3026, 1005, N'造型毛巾(全8種隨機)', N'G賞', 0, 24, 24, N'20230517102248造型毛巾(全8種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3027, 1005, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', N'H賞', 0, 24, 24, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3028, 1005, N'圓形小盤(全9種隨機)', N'I賞', 0, 24, 24, N'20230517102329圓形小盤(全9種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3029, 1006, N'智慧之王 模型公仔', N'A賞', 1, 3, 3, N'20230528221547拉法葉.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3030, 1006, N'利姆路 坦派斯特 模型公仔', N'B賞', 1, 3, 3, N'20230528221602利路姆.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3031, 1006, N'A3智慧之王 金屬質感插畫', N'C賞', 1, 2, 2, N'20230528221613利路姆版畫.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3032, 1006, N'A3迪亞布羅 金屬質感插畫', N'D賞', 1, 2, 2, N'20230528221629迪亞布羅.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3033, 1006, N'手帕(全8種隨機)', N'E賞', 0, 24, 24, N'20230528221645史萊姆方巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3034, 1006, N'壓克力展台(全10種隨機)', N'F賞', 0, 20, 20, N'20230528221655史萊姆立牌.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3035, 1006, N'壓克力吊飾(全12種隨機)', N'G賞', 0, 26, 26, N'20230528221704史萊姆吊飾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3036, 1007, N'智慧之王 模型公仔', N'A賞', 1, 3, 3, N'20230528221547拉法葉.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3037, 1007, N'利姆路 坦派斯特 模型公仔', N'B賞', 1, 3, 3, N'20230528221602利路姆.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3038, 1007, N'A3智慧之王 金屬質感插畫', N'C賞', 1, 2, 2, N'20230528221613利路姆版畫.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3039, 1007, N'A3迪亞布羅 金屬質感插畫', N'D賞', 1, 2, 2, N'20230528221629迪亞布羅.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3040, 1007, N'手帕(全8種隨機)', N'E賞', 0, 24, 24, N'20230528221645史萊姆方巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3041, 1007, N'壓克力展台(全10種隨機)', N'F賞', 0, 20, 20, N'20230528221655史萊姆立牌.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3042, 1007, N'壓克力吊飾(全12種隨機)', N'G賞', 0, 26, 26, N'20230528221704史萊姆吊飾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3043, 1008, N'安妮亞‧佛傑 萬年曆', N'A賞', 1, 2, 2, N'20230516211450安妮亞萬年曆公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3044, 1008, N'安妮亞‧佛傑 絨毛玩偶', N'B賞', 1, 2, 2, N'20230516211518安妮亞娃娃.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3045, 1008, N'SPY×FAMILY120cm大浴巾', N'C賞', 1, 2, 2, N'20230516211554造型浴巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3046, 1008, N'安妮亞×同學款 120cm大浴巾', N'D賞', 1, 2, 2, N'20230516211626安妮亞造型浴巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3047, 1008, N'新繪製插畫板-Misson Start!', N'E賞', 1, 3, 3, N'20230516211644家庭插畫版.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3048, 1008, N'新繪製插畫板-安妮亞的廚房- A3size', N'F賞', 1, 3, 3, N'20230516211657家庭插畫版2.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3049, 1008, N'角色壓克力立牌(全10種隨機) ', N'G賞', 0, 25, 25, N'20230516211715立牌.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3050, 1008, N'橡膠吊飾(全11種隨機)', N'H賞', 0, 25, 25, N'20230516211733吊飾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3051, 1008, N'美耐皿盤子(全4種隨機)', N'I賞', 0, 16, 16, N'20230516211745盤子.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3052, 1009, N'羅羅亞﹒索隆 模型公仔', N'A賞', 1, 2, 2, N'20230517102100索隆公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3053, 1009, N'班﹒貝克曼 模型公仔', N'B賞', 1, 1, 1, N'20230517102125貝克曼公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3054, 1009, N'馬爾科 模型公仔', N'C賞', 1, 1, 1, N'20230517102148馬爾科公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3055, 1009, N'夏洛特·卡塔克利 模型公仔', N'D賞', 1, 2, 2, N'20230517102204夏洛特·卡塔克利.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3056, 1009, N'KING 模型公仔', N'E賞', 1, 1, 1, N'20230517102217KING模型公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3057, 1009, N'120cm 大毛巾', N'F賞', 1, 1, 1, N'20230517102234120cm大毛巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3058, 1009, N'造型毛巾(全8種隨機)', N'G賞', 0, 24, 24, N'20230517102248造型毛巾(全8種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3059, 1009, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', N'H賞', 0, 24, 24, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3060, 1009, N'圓形小盤(全9種隨機)', N'I賞', 0, 24, 24, N'20230517102329圓形小盤(全9種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3061, 1010, N'安妮亞‧佛傑 萬年曆', N'A賞', 1, 2, 2, N'20230516211450安妮亞萬年曆公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3062, 1010, N'安妮亞‧佛傑 絨毛玩偶', N'B賞', 1, 2, 2, N'20230516211518安妮亞娃娃.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3063, 1010, N'SPY×FAMILY120cm大浴巾', N'C賞', 1, 2, 2, N'20230516211554造型浴巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3064, 1010, N'安妮亞×同學款 120cm大浴巾', N'D賞', 1, 2, 2, N'20230516211626安妮亞造型浴巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3065, 1010, N'新繪製插畫板-Misson Start!', N'E賞', 1, 3, 3, N'20230516211644家庭插畫版.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3066, 1010, N'新繪製插畫板-安妮亞的廚房- A3size', N'F賞', 1, 3, 3, N'20230516211657家庭插畫版2.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3067, 1010, N'角色壓克力立牌(全10種隨機) ', N'G賞', 0, 25, 25, N'20230516211715立牌.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3068, 1010, N'橡膠吊飾(全11種隨機)', N'H賞', 0, 25, 25, N'20230516211733吊飾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3069, 1010, N'美耐皿盤子(全4種隨機)', N'I賞', 0, 16, 16, N'20230516211745盤子.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3070, 1011, N'羅羅亞﹒索隆 模型公仔', N'A賞', 1, 2, 2, N'20230517102100索隆公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3071, 1011, N'班﹒貝克曼 模型公仔', N'B賞', 1, 1, 1, N'20230517102125貝克曼公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3072, 1011, N'馬爾科 模型公仔', N'C賞', 1, 1, 1, N'20230517102148馬爾科公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3073, 1011, N'夏洛特·卡塔克利 模型公仔', N'D賞', 1, 2, 2, N'20230517102204夏洛特·卡塔克利.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3074, 1011, N'KING 模型公仔', N'E賞', 1, 1, 1, N'20230517102217KING模型公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3075, 1011, N'120cm 大毛巾', N'F賞', 1, 1, 1, N'20230517102234120cm大毛巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3076, 1011, N'造型毛巾(全8種隨機)', N'G賞', 0, 24, 24, N'20230517102248造型毛巾(全8種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3077, 1011, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', N'H賞', 0, 24, 24, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3078, 1011, N'圓形小盤(全9種隨機)', N'I賞', 0, 24, 24, N'20230517102329圓形小盤(全9種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3079, 1012, N'智慧之王 模型公仔', N'A賞', 1, 3, 3, N'20230528221547拉法葉.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3080, 1012, N'利姆路 坦派斯特 模型公仔', N'B賞', 1, 3, 3, N'20230528221602利路姆.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3081, 1012, N'A3智慧之王 金屬質感插畫', N'C賞', 1, 2, 2, N'20230528221613利路姆版畫.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3082, 1012, N'A3迪亞布羅 金屬質感插畫', N'D賞', 1, 2, 2, N'20230528221629迪亞布羅.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3083, 1012, N'手帕(全8種隨機)', N'E賞', 0, 24, 24, N'20230528221645史萊姆方巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3084, 1012, N'壓克力展台(全10種隨機)', N'F賞', 0, 20, 20, N'20230528221655史萊姆立牌.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3085, 1012, N'壓克力吊飾(全12種隨機)', N'G賞', 0, 26, 26, N'20230528221704史萊姆吊飾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3086, 1013, N'安妮亞‧佛傑 萬年曆', N'A賞', 1, 2, 2, N'20230516211450安妮亞萬年曆公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3087, 1013, N'安妮亞‧佛傑 絨毛玩偶', N'B賞', 1, 2, 2, N'20230516211518安妮亞娃娃.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3088, 1013, N'SPY×FAMILY120cm大浴巾', N'C賞', 1, 2, 2, N'20230516211554造型浴巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3089, 1013, N'安妮亞×同學款 120cm大浴巾', N'D賞', 1, 2, 2, N'20230516211626安妮亞造型浴巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3090, 1013, N'新繪製插畫板-Misson Start!', N'E賞', 1, 3, 3, N'20230516211644家庭插畫版.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3091, 1013, N'新繪製插畫板-安妮亞的廚房- A3size', N'F賞', 1, 3, 3, N'20230516211657家庭插畫版2.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3092, 1013, N'角色壓克力立牌(全10種隨機) ', N'G賞', 0, 25, 25, N'20230516211715立牌.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3093, 1013, N'橡膠吊飾(全11種隨機)', N'H賞', 0, 25, 25, N'20230516211733吊飾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3094, 1013, N'美耐皿盤子(全4種隨機)', N'I賞', 0, 16, 16, N'20230516211745盤子.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3095, 1014, N'羅羅亞﹒索隆 模型公仔', N'A賞', 1, 2, 2, N'20230517102100索隆公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3096, 1014, N'班﹒貝克曼 模型公仔', N'B賞', 1, 1, 1, N'20230517102125貝克曼公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3097, 1014, N'馬爾科 模型公仔', N'C賞', 1, 1, 1, N'20230517102148馬爾科公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3098, 1014, N'夏洛特·卡塔克利 模型公仔', N'D賞', 1, 2, 2, N'20230517102204夏洛特·卡塔克利.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3099, 1014, N'KING 模型公仔', N'E賞', 1, 1, 1, N'20230517102217KING模型公仔.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3100, 1014, N'120cm 大毛巾', N'F賞', 1, 1, 1, N'20230517102234120cm大毛巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3101, 1014, N'造型毛巾(全8種隨機)', N'G賞', 0, 24, 24, N'20230517102248造型毛巾(全8種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3102, 1014, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', N'H賞', 0, 24, 24, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3103, 1014, N'圓形小盤(全9種隨機)', N'I賞', 0, 24, 24, N'20230517102329圓形小盤(全9種隨機).jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3104, 1015, N'智慧之王 模型公仔', N'A賞', 1, 3, 3, N'20230528221547拉法葉.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3105, 1015, N'利姆路 坦派斯特 模型公仔', N'B賞', 1, 3, 3, N'20230528221602利路姆.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3106, 1015, N'A3智慧之王 金屬質感插畫', N'C賞', 1, 2, 2, N'20230528221613利路姆版畫.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3107, 1015, N'A3迪亞布羅 金屬質感插畫', N'D賞', 1, 2, 2, N'20230528221629迪亞布羅.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3108, 1015, N'手帕(全8種隨機)', N'E賞', 0, 24, 24, N'20230528221645史萊姆方巾.jpg')
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3109, 1015, N'壓克力展台(全10種隨機)', N'F賞', 0, 20, 20, N'20230528221655史萊姆立牌.jpg')
GO
INSERT [dbo].[ShowRaward_items] ([ShowRaward_item_id], [ShowRaward_id], [Name], [Raward_level], [IsJackpot], [Num], [LaveNum], [Image]) VALUES (3110, 1015, N'壓克力吊飾(全12種隨機)', N'G賞', 0, 26, 26, N'20230528221704史萊姆吊飾.jpg')
SET IDENTITY_INSERT [dbo].[ShowRaward_items] OFF
GO
SET IDENTITY_INSERT [dbo].[TempStorage] ON 

INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (1, 1, 1003, 3016, N'角色壓克力立牌(全10種隨機) ', 0, N'20230516211715立牌.jpg', CAST(N'2023-05-24T14:30:17.997' AS DateTime), CAST(N'2023-06-07T14:30:17.997' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (2, 1, 1003, 3018, N'美耐皿盤子(全4種隨機)', 1, N'20230516211745盤子.jpg', CAST(N'2023-05-24T14:30:17.997' AS DateTime), CAST(N'2023-06-07T14:30:17.997' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (3, 1, 1003, 3017, N'橡膠吊飾(全11種隨機)', 1, N'20230516211733吊飾.jpg', CAST(N'2023-05-24T14:30:17.997' AS DateTime), CAST(N'2023-06-07T14:30:17.997' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (4, 1, 1003, 3018, N'美耐皿盤子(全4種隨機)', 1, N'20230516211745盤子.jpg', CAST(N'2023-05-24T14:56:01.427' AS DateTime), CAST(N'2023-06-07T14:56:01.427' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (5, 1, 1003, 3016, N'角色壓克力立牌(全10種隨機) ', 0, N'20230516211715立牌.jpg', CAST(N'2023-05-24T14:57:41.680' AS DateTime), CAST(N'2023-06-07T14:57:41.680' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (6, 1, 1003, 3017, N'橡膠吊飾(全11種隨機)', 0, N'20230516211733吊飾.jpg', CAST(N'2023-05-24T15:03:38.220' AS DateTime), CAST(N'2023-06-07T15:03:38.220' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (7, 1, 1003, 3018, N'美耐皿盤子(全4種隨機)', 1, N'20230516211745盤子.jpg', CAST(N'2023-05-24T15:04:57.563' AS DateTime), CAST(N'2023-06-07T15:04:57.563' AS DateTime), 1, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (8, 5, 1003, 3018, N'美耐皿盤子(全4種隨機)', 1, N'20230516211745盤子.jpg', CAST(N'2023-05-24T15:08:26.253' AS DateTime), CAST(N'2023-06-07T15:08:26.253' AS DateTime), 1, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (9, 6, 1003, 3018, N'美耐皿盤子(全4種隨機)', 1, N'20230516211745盤子.jpg', CAST(N'2023-05-24T15:10:25.520' AS DateTime), CAST(N'2023-06-07T15:10:25.520' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (10, 6, 1003, 3010, N'安妮亞‧佛傑 萬年曆', 1, N'20230516211450安妮亞萬年曆公仔.jpg', CAST(N'2023-05-24T15:11:18.880' AS DateTime), CAST(N'2023-06-07T15:11:18.880' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (11, 5, 1003, 3018, N'美耐皿盤子(全4種隨機)', 0, N'20230516211745盤子.jpg', CAST(N'2023-05-24T14:30:17.997' AS DateTime), CAST(N'2023-06-07T14:30:17.997' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (12, 5, 1003, 3018, N'美耐皿盤子(全4種隨機)', 0, N'20230516211745盤子.jpg', CAST(N'2023-05-24T14:30:17.997' AS DateTime), CAST(N'2023-06-07T14:30:17.997' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (13, 5, 1003, 3018, N'美耐皿盤子(全4種隨機)', 0, N'20230516211745盤子.jpg', CAST(N'2023-05-24T14:30:17.997' AS DateTime), CAST(N'2023-06-07T14:30:17.997' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (14, 5, 1003, 3018, N'美耐皿盤子(全4種隨機)', 1, N'20230516211745盤子.jpg', CAST(N'2023-05-27T15:17:37.370' AS DateTime), CAST(N'2023-06-10T15:17:37.370' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (15, 5, 1003, 3017, N'橡膠吊飾(全11種隨機)', 1, N'20230516211733吊飾.jpg', CAST(N'2023-05-27T15:17:37.370' AS DateTime), CAST(N'2023-06-10T15:17:37.370' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (16, 5, 1005, 3026, N'造型毛巾(全8種隨機)', 2, N'20230517102248造型毛巾(全8種隨機).jpg', CAST(N'2023-05-27T19:40:06.833' AS DateTime), CAST(N'2023-06-10T19:40:06.833' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (17, 5, 1005, 3027, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', 1, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg', CAST(N'2023-05-27T19:40:06.833' AS DateTime), CAST(N'2023-06-10T19:40:06.833' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (18, 1, 1005, 3020, N'羅羅亞﹒索隆 模型公仔', 0, N'20230517102100索隆公仔.jpg', CAST(N'2023-05-28T14:28:56.577' AS DateTime), CAST(N'2023-06-11T14:28:56.577' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (19, 1, 1005, 3028, N'圓形小盤(全9種隨機)', 1, N'20230517102329圓形小盤(全9種隨機).jpg', CAST(N'2023-05-28T14:28:56.577' AS DateTime), CAST(N'2023-06-11T14:28:56.577' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (20, 1, 1005, 3027, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', 7, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg', CAST(N'2023-05-28T14:35:49.080' AS DateTime), CAST(N'2023-06-11T14:35:49.080' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (21, 1, 1005, 3028, N'圓形小盤(全9種隨機)', 4, N'20230517102329圓形小盤(全9種隨機).jpg', CAST(N'2023-05-28T14:35:49.080' AS DateTime), CAST(N'2023-06-11T14:35:49.080' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (22, 1, 1005, 3024, N'KING 模型公仔', 0, N'20230517102217KING模型公仔.jpg', CAST(N'2023-05-28T14:35:49.080' AS DateTime), CAST(N'2023-06-11T14:35:49.080' AS DateTime), 0, 1)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (23, 1, 1005, 3026, N'造型毛巾(全8種隨機)', 6, N'20230517102248造型毛巾(全8種隨機).jpg', CAST(N'2023-05-28T14:35:49.080' AS DateTime), CAST(N'2023-06-11T14:35:49.080' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (24, 1, 1005, 3020, N'羅羅亞﹒索隆 模型公仔', 1, N'20230517102100索隆公仔.jpg', CAST(N'2023-05-28T14:40:47.303' AS DateTime), CAST(N'2023-06-11T14:40:47.303' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (25, 1, 1005, 3028, N'圓形小盤(全9種隨機)', 1, N'20230517102329圓形小盤(全9種隨機).jpg', CAST(N'2023-05-28T14:40:47.303' AS DateTime), CAST(N'2023-06-11T14:40:47.303' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (26, 1, 1005, 3027, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', 2, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg', CAST(N'2023-05-28T14:40:47.303' AS DateTime), CAST(N'2023-06-11T14:40:47.303' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (27, 1, 1005, 3028, N'圓形小盤(全9種隨機)', 1, N'20230517102329圓形小盤(全9種隨機).jpg', CAST(N'2023-05-28T14:43:09.083' AS DateTime), CAST(N'2023-06-11T14:43:09.083' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (28, 1, 1005, 3027, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', 2, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg', CAST(N'2023-05-28T14:50:37.827' AS DateTime), CAST(N'2023-06-11T14:50:37.827' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (29, 1, 1005, 3026, N'造型毛巾(全8種隨機)', 1, N'20230517102248造型毛巾(全8種隨機).jpg', CAST(N'2023-05-28T14:50:37.827' AS DateTime), CAST(N'2023-06-11T14:50:37.827' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (30, 1, 1005, 3023, N'夏洛特·卡塔克利 模型公仔', 1, N'20230517102204夏洛特·卡塔克利.jpg', CAST(N'2023-05-28T14:50:37.827' AS DateTime), CAST(N'2023-06-11T14:50:37.827' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (31, 1, 1005, 3028, N'圓形小盤(全9種隨機)', 1, N'20230517102329圓形小盤(全9種隨機).jpg', CAST(N'2023-05-28T14:52:02.470' AS DateTime), CAST(N'2023-06-11T14:52:02.470' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (32, 1, 1005, 3028, N'圓形小盤(全9種隨機)', 1, N'20230517102329圓形小盤(全9種隨機).jpg', CAST(N'2023-05-28T14:54:41.117' AS DateTime), CAST(N'2023-06-11T14:54:41.117' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (33, 1, 1005, 3027, N'A4資料夾貼紙與口罩夾套組(全8種隨機)', 1, N'20230517102312A4資料夾貼紙與口罩夾套組(全8種隨機).jpg', CAST(N'2023-05-28T14:54:51.957' AS DateTime), CAST(N'2023-06-11T14:54:51.957' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (34, 1, 1005, 3026, N'造型毛巾(全8種隨機)', 1, N'20230517102248造型毛巾(全8種隨機).jpg', CAST(N'2023-05-28T14:55:20.123' AS DateTime), CAST(N'2023-06-11T14:55:20.123' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (35, 1, 1005, 3028, N'圓形小盤(全9種隨機)', 1, N'20230517102329圓形小盤(全9種隨機).jpg', CAST(N'2023-05-28T14:56:08.170' AS DateTime), CAST(N'2023-06-11T14:56:08.170' AS DateTime), 0, 0)
INSERT [dbo].[TempStorage] ([TempStorageID], [MemberID], [PrizePool_ID], [Prize_ID], [PrizeName], [PrizeQuantity], [PrizePicture], [AwardDate], [Deadline], [Receive], [Created]) VALUES (36, 1, 1003, 3018, N'美耐皿盤子(全4種隨機)', 1, N'20230516211745盤子.jpg', CAST(N'2023-05-24T14:30:17.997' AS DateTime), CAST(N'2023-06-07T14:30:17.997' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[TempStorage] OFF
GO
SET IDENTITY_INSERT [dbo].[TradeHistory] ON 

INSERT [dbo].[TradeHistory] ([TradeHistoryId], [Seller], [Buyer], [CommodityId], [CommodityQuantity], [CommodityUnitPrice], [TradeTime]) VALUES (1, 1, 5, 2, 1, 500, CAST(N'2023-05-25T02:57:39.797' AS DateTime))
INSERT [dbo].[TradeHistory] ([TradeHistoryId], [Seller], [Buyer], [CommodityId], [CommodityQuantity], [CommodityUnitPrice], [TradeTime]) VALUES (2, 1, 5, 2, 1, 500, CAST(N'2023-05-25T03:40:56.313' AS DateTime))
INSERT [dbo].[TradeHistory] ([TradeHistoryId], [Seller], [Buyer], [CommodityId], [CommodityQuantity], [CommodityUnitPrice], [TradeTime]) VALUES (3, 1, 5, 2, 1, 500, CAST(N'2023-05-25T03:42:30.203' AS DateTime))
INSERT [dbo].[TradeHistory] ([TradeHistoryId], [Seller], [Buyer], [CommodityId], [CommodityQuantity], [CommodityUnitPrice], [TradeTime]) VALUES (4, 5, 1, 9, 1, 777, CAST(N'2023-05-28T14:58:39.463' AS DateTime))
SET IDENTITY_INSERT [dbo].[TradeHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[wishlist] ON 

INSERT [dbo].[wishlist] ([itemID], [PraductID], [CustomerID]) VALUES (2, 1003, 1)
SET IDENTITY_INSERT [dbo].[wishlist] OFF
GO
ALTER TABLE [dbo].[MemberInfo] ADD  CONSTRAINT [DEFAULT_MemberInfo_ResetDateTime]  DEFAULT (NULL) FOR [ResetDateTime]
GO
ALTER TABLE [dbo].[MemberInfo] ADD  CONSTRAINT [DEFAULT_MemberInfo_Point]  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[Commodity]  WITH CHECK ADD  CONSTRAINT [FK_Commodity_MemberInfo] FOREIGN KEY([MemberID])
REFERENCES [dbo].[MemberInfo] ([MemberId])
GO
ALTER TABLE [dbo].[Commodity] CHECK CONSTRAINT [FK_Commodity_MemberInfo]
GO
ALTER TABLE [dbo].[Commodity]  WITH CHECK ADD  CONSTRAINT [FK_Commodity_TempStorage] FOREIGN KEY([TempStorageID])
REFERENCES [dbo].[TempStorage] ([TempStorageID])
GO
ALTER TABLE [dbo].[Commodity] CHECK CONSTRAINT [FK_Commodity_TempStorage]
GO
ALTER TABLE [dbo].[Draw_Record]  WITH CHECK ADD  CONSTRAINT [FK_Draw_Record_Factory] FOREIGN KEY([Factory_id])
REFERENCES [dbo].[Factory] ([Factory_id])
GO
ALTER TABLE [dbo].[Draw_Record] CHECK CONSTRAINT [FK_Draw_Record_Factory]
GO
ALTER TABLE [dbo].[Draw_Record]  WITH CHECK ADD  CONSTRAINT [FK_Draw_Record_MemberInfo] FOREIGN KEY([Member_id])
REFERENCES [dbo].[MemberInfo] ([MemberId])
GO
ALTER TABLE [dbo].[Draw_Record] CHECK CONSTRAINT [FK_Draw_Record_MemberInfo]
GO
ALTER TABLE [dbo].[Draw_Record]  WITH CHECK ADD  CONSTRAINT [FK_Draw_Record_ShowRaward] FOREIGN KEY([ShowRaward_id])
REFERENCES [dbo].[ShowRaward] ([ShowRaward_id])
GO
ALTER TABLE [dbo].[Draw_Record] CHECK CONSTRAINT [FK_Draw_Record_ShowRaward]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberInfo] ([MemberId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_MemberId]
GO
ALTER TABLE [dbo].[QuestionHistory]  WITH CHECK ADD  CONSTRAINT [FK_QuestionHistory_QuestionReport] FOREIGN KEY([QuestionReportID])
REFERENCES [dbo].[QuestionReport] ([QuestionReportID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuestionHistory] CHECK CONSTRAINT [FK_QuestionHistory_QuestionReport]
GO
ALTER TABLE [dbo].[Raward_items]  WITH CHECK ADD  CONSTRAINT [FK_Raward_items_Raward_items] FOREIGN KEY([Raward_id])
REFERENCES [dbo].[Raward_lib] ([Raward_id])
GO
ALTER TABLE [dbo].[Raward_items] CHECK CONSTRAINT [FK_Raward_items_Raward_items]
GO
ALTER TABLE [dbo].[ShowRaward_items]  WITH CHECK ADD  CONSTRAINT [FK_ShowRaward_items_ShowRaward] FOREIGN KEY([ShowRaward_id])
REFERENCES [dbo].[ShowRaward] ([ShowRaward_id])
GO
ALTER TABLE [dbo].[ShowRaward_items] CHECK CONSTRAINT [FK_ShowRaward_items_ShowRaward]
GO
ALTER TABLE [dbo].[TempStorage]  WITH CHECK ADD  CONSTRAINT [FK_TempStorage_MemberInfo] FOREIGN KEY([MemberID])
REFERENCES [dbo].[MemberInfo] ([MemberId])
GO
ALTER TABLE [dbo].[TempStorage] CHECK CONSTRAINT [FK_TempStorage_MemberInfo]
GO
ALTER TABLE [dbo].[TempStorage]  WITH CHECK ADD  CONSTRAINT [FK_TempStorage_ShowRaward] FOREIGN KEY([PrizePool_ID])
REFERENCES [dbo].[ShowRaward] ([ShowRaward_id])
GO
ALTER TABLE [dbo].[TempStorage] CHECK CONSTRAINT [FK_TempStorage_ShowRaward]
GO
ALTER TABLE [dbo].[TempStorage]  WITH CHECK ADD  CONSTRAINT [FK_TempStorage_ShowRaward_items] FOREIGN KEY([Prize_ID])
REFERENCES [dbo].[ShowRaward_items] ([ShowRaward_item_id])
GO
ALTER TABLE [dbo].[TempStorage] CHECK CONSTRAINT [FK_TempStorage_ShowRaward_items]
GO
ALTER TABLE [dbo].[TradeHistory]  WITH CHECK ADD  CONSTRAINT [FK_TradeHistory_Commodity] FOREIGN KEY([CommodityId])
REFERENCES [dbo].[Commodity] ([CommodityID])
GO
ALTER TABLE [dbo].[TradeHistory] CHECK CONSTRAINT [FK_TradeHistory_Commodity]
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD  CONSTRAINT [FK_wishlist_MemberInfo] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[MemberInfo] ([MemberId])
GO
ALTER TABLE [dbo].[wishlist] CHECK CONSTRAINT [FK_wishlist_MemberInfo]
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD  CONSTRAINT [FK_wishlist_ShowRaward] FOREIGN KEY([PraductID])
REFERENCES [dbo].[ShowRaward] ([ShowRaward_id])
GO
ALTER TABLE [dbo].[wishlist] CHECK CONSTRAINT [FK_wishlist_ShowRaward]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foreign key from registerinfo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payment', @level2type=N'COLUMN',@level2name=N'Status'
GO
