USE master;
GO
CREATE DATABASE db_oltp
GO
ALTER DATABASE db_oltp SET ONLINE
GO
USE [db_oltp]
GO

/****** Object:  Table [dbo].[Bill To]    Script Date: 28/12/2024 09:24:14 ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill To](
	[Direction_ID] [varchar](5) NOT NULL,
	[Customer_ID] [char](11) NOT NULL,
	[Business_name] [varchar](100) NULL,
	[Location] [varchar](100) NOT NULL,
	[PO_box] [char](4) NOT NULL,
	[City] [char](2) NOT NULL,
	[State] [char](2) NOT NULL,
 CONSTRAINT [PK_Bill To] PRIMARY KEY CLUSTERED 
(
	[Direction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City] [char](2) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [char](11) NOT NULL,
	[Credit] [money] NULL,
	[Mail] [varchar](100) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_Customer] UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Det_invoice]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Det_invoice](
	[Invoice_NO] [char](5) NOT NULL,
	[Product_ID] [char](5) NOT NULL,
	[Quantity] [numeric](8, 2) NOT NULL,
	[UP] [numeric](8, 2) NOT NULL,
	[Descount] [numeric](3, 2) NOT NULL,
 CONSTRAINT [PK_Det_invoice] PRIMARY KEY CLUSTERED 
(
	[Invoice_NO] ASC,
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hb_invoice]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hb_invoice](
	[Invoice_NO] [char](5) NOT NULL,
	[Cod_sales] [int] NOT NULL,
	[Customer_ID] [char](11) NOT NULL,
	[Delivery_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Tax] [numeric](8, 2) NULL,
	[ShipTo] [varchar](5) NOT NULL,
 CONSTRAINT [PK_hb_invoice_1] PRIMARY KEY CLUSTERED 
(
	[Invoice_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Nro_identity] [int] NOT NULL,
	[Names] [nvarchar](50) NOT NULL,
	[First_surname] [nvarchar](50) NOT NULL,
	[Second_surname] [nvarchar](50) NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Birthdate] [date] NOT NULL,
	[City] [char](2) NOT NULL,
	[State] [char](2) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Nro_identity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_Names_First_Second] UNIQUE NONCLUSTERED 
(
	[Names] ASC,
	[First_surname] ASC,
	[Second_surname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_ID] [char](5) NOT NULL,
	[SubCategory_ID] [int] NOT NULL,
	[description] [varchar](100) NOT NULL,
	[Quantity] [numeric](8, 2) NOT NULL,
	[UP] [numeric](8, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Product_1] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesPerson]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerson](
	[Cod_sales] [int] NOT NULL,
	[Salary] [money] NULL,
	[State] [bit] NULL,
 CONSTRAINT [PK_SalesPerson] PRIMARY KEY CLUSTERED 
(
	[Cod_sales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship To]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship To](
	[Delivery_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Ship To_1] PRIMARY KEY CLUSTERED 
(
	[Delivery_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[State] [char](2) NOT NULL,
	[City] [char](2) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[State] ASC,
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 28/12/2024 09:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCategory_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
	[description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCategory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[SalesPerson] ADD  CONSTRAINT [DF_SalesPerson_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[Bill To]  WITH CHECK ADD  CONSTRAINT [FK_Bill To_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Bill To] CHECK CONSTRAINT [FK_Bill To_Customer]
GO
ALTER TABLE [dbo].[Det_invoice]  WITH CHECK ADD  CONSTRAINT [FK_Det_invoice_hb_invoice] FOREIGN KEY([Invoice_NO])
REFERENCES [dbo].[hb_invoice] ([Invoice_NO])
GO
ALTER TABLE [dbo].[Det_invoice] CHECK CONSTRAINT [FK_Det_invoice_hb_invoice]
GO
ALTER TABLE [dbo].[Det_invoice]  WITH CHECK ADD  CONSTRAINT [FK_Det_invoice_Product1] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Det_invoice] CHECK CONSTRAINT [FK_Det_invoice_Product1]
GO
ALTER TABLE [dbo].[hb_invoice]  WITH CHECK ADD  CONSTRAINT [FK_hb_invoice_Bill To] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Bill To] ([Customer_ID])
GO
ALTER TABLE [dbo].[hb_invoice] CHECK CONSTRAINT [FK_hb_invoice_Bill To]
GO
ALTER TABLE [dbo].[hb_invoice]  WITH CHECK ADD  CONSTRAINT [FK_hb_invoice_Bill To1] FOREIGN KEY([ShipTo])
REFERENCES [dbo].[Bill To] ([Direction_ID])
GO
ALTER TABLE [dbo].[hb_invoice] CHECK CONSTRAINT [FK_hb_invoice_Bill To1]
GO
ALTER TABLE [dbo].[hb_invoice]  WITH CHECK ADD  CONSTRAINT [FK_hb_invoice_SalesPerson] FOREIGN KEY([Cod_sales])
REFERENCES [dbo].[SalesPerson] ([Cod_sales])
GO
ALTER TABLE [dbo].[hb_invoice] CHECK CONSTRAINT [FK_hb_invoice_SalesPerson]
GO
ALTER TABLE [dbo].[hb_invoice]  WITH CHECK ADD  CONSTRAINT [FK_hb_invoice_Ship To] FOREIGN KEY([Delivery_ID])
REFERENCES [dbo].[Ship To] ([Delivery_ID])
GO
ALTER TABLE [dbo].[hb_invoice] CHECK CONSTRAINT [FK_hb_invoice_Ship To]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_State] FOREIGN KEY([State], [City])
REFERENCES [dbo].[State] ([State], [City])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_State]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SubCategory] FOREIGN KEY([SubCategory_ID])
REFERENCES [dbo].[SubCategory] ([SubCategory_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_SubCategory]
GO
ALTER TABLE [dbo].[SalesPerson]  WITH CHECK ADD  CONSTRAINT [FK_SalesPerson_Person] FOREIGN KEY([Cod_sales])
REFERENCES [dbo].[Person] ([Nro_identity])
GO
ALTER TABLE [dbo].[SalesPerson] CHECK CONSTRAINT [FK_SalesPerson_Person]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_City] FOREIGN KEY([City])
REFERENCES [dbo].[City] ([City])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_City]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([Category_ID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
ALTER TABLE [dbo].[Det_invoice]  WITH CHECK ADD  CONSTRAINT [CK_Det_invoice_descount] CHECK  (([Descount]=(1.00) OR [Descount]=(0.00)))
GO
ALTER TABLE [dbo].[Det_invoice] CHECK CONSTRAINT [CK_Det_invoice_descount]
GO
ALTER TABLE [dbo].[Det_invoice]  WITH CHECK ADD  CONSTRAINT [CK_Det_invoice_quantity] CHECK  (([quantity]>=(0)))
GO
ALTER TABLE [dbo].[Det_invoice] CHECK CONSTRAINT [CK_Det_invoice_quantity]
GO
ALTER TABLE [dbo].[Det_invoice]  WITH CHECK ADD  CONSTRAINT [CK_Det_invoice_UP] CHECK  (([UP]>=(0)))
GO
ALTER TABLE [dbo].[Det_invoice] CHECK CONSTRAINT [CK_Det_invoice_UP]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [CK_Person_Gender] CHECK  (([Gender]=(2) OR [Gender]=(1)))
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [CK_Person_Gender]
GO
