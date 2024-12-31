-- DATA INSERT --
USE [db_oltp]
GO

-- CITY --
INSERT INTO [dbo].[City]
           ([City]
           ,[Name])
     VALUES
           ('01'
           ,'New York City'
		   );
GO

INSERT INTO [dbo].[City]
           ([City]
           ,[Name])
     VALUES
           ('02'
           ,'Los Angeles'
		   );
GO

INSERT INTO [dbo].[City]
           ([City]
           ,[Name])
     VALUES
           ('03'
           ,'Chicago'
		   );
GO

INSERT INTO [dbo].[City]
           ([City]
           ,[Name])
     VALUES
           ('04'
           ,'Houston'
		   );
GO

INSERT INTO [dbo].[City]
           ([City]
           ,[Name])
     VALUES
           ('05'
           ,'Phoenix'
		   );
GO

SELECT * FROM [dbo].[City]
GO


-- STATE --
USE [db_oltp]
GO

INSERT INTO [dbo].[State]
           ([State]
           ,[City]
           ,[Name])
     VALUES
           ('01'
           ,'01'
           ,'New York'
		   );
GO

INSERT INTO [dbo].[State]
           ([State]
           ,[City]
           ,[Name])
     VALUES
           ('01'
           ,'02'
           ,'California'
		   );
GO

INSERT INTO [dbo].[State]
           ([State]
           ,[City]
           ,[Name])
     VALUES
           ('01'
           ,'03'
           ,'Illinois'
		   );
GO

INSERT INTO [dbo].[State]
           ([State]
           ,[City]
           ,[Name])
     VALUES
           ('01'
           ,'04'
           ,'Texas'
		   );
GO

INSERT INTO [dbo].[State]
           ([State]
           ,[City]
           ,[Name])
     VALUES
           ('01'
           ,'05'
           ,'Arizona'
		   );
GO

SELECT * FROM [dbo].[State]
GO

-- PERSON --
USE [db_oltp]
GO

INSERT INTO [dbo].[Person]
           ([Nro_identity]
           ,[Names]
           ,[First_surname]
           ,[Second_surname]
           ,[Gender]
           ,[Birthdate]
           ,[City]
           ,[State])
     VALUES
           ('72481211'
           ,'Miguel'
           ,'Puerta'
           ,'Simarra'
           ,'2'
           ,'2002-03-20'
           ,'01'
           ,'01'
		   );
GO

INSERT INTO [dbo].[Person]
           ([Nro_identity]
           ,[Names]
           ,[First_surname]
           ,[Second_surname]
           ,[Gender]
           ,[Birthdate]
           ,[City]
           ,[State])
     VALUES
           ('72481212'
           ,'Melany Alexandra'
           ,'Puerta'
           ,'Simarra'
           ,'1'
           ,'2002-03-21'
           ,'02'
           ,'01'
		   );
GO

INSERT INTO [dbo].[Person]
           ([Nro_identity]
           ,[Names]
           ,[First_surname]
           ,[Second_surname]
           ,[Gender]
           ,[Birthdate]
           ,[City]
           ,[State])
     VALUES
           ('72481213'
           ,'Marco Antonio'
           ,'Puerta'
           ,'Magallanes'
           ,'2'
           ,'2002-03-22'
           ,'03'
           ,'01'
		   );
GO

INSERT INTO [dbo].[Person]
           ([Nro_identity]
           ,[Names]
           ,[First_surname]
           ,[Second_surname]
           ,[Gender]
           ,[Birthdate]
           ,[City]
           ,[State])
     VALUES
           ('72481214'
           ,'Mónica'
           ,'Puerta'
           ,'Simarra'
           ,'1'
           ,'2002-03-23'
           ,'04'
           ,'01'
		   );
GO

INSERT INTO [dbo].[Person]
           ([Nro_identity]
           ,[Names]
           ,[First_surname]
           ,[Second_surname]
           ,[Gender]
           ,[Birthdate]
           ,[City]
           ,[State])
     VALUES
           ('72481215'
           ,'Manuela'
           ,'Lopez'
           ,'Simarra'
           ,'1'
           ,'2002-03-24'
           ,'05'
           ,'01'
		   );
GO

SELECT * FROM [dbo].[Person]
GO

-- CUSTOMER --
USE [db_oltp]
GO

INSERT INTO [dbo].[Customer]
           ([Customer_ID]
           ,[Credit]
           ,[Mail])
     VALUES
           ('1041466911'
           ,'1000'
           ,'example1@example.com'
		   );
GO

INSERT INTO [dbo].[Customer]
           ([Customer_ID]
           ,[Credit]
           ,[Mail])
     VALUES
           ('1041466912'
           ,'1500'
           ,'example2@example.com'
		   );
GO

INSERT INTO [dbo].[Customer]
           ([Customer_ID]
           ,[Credit]
           ,[Mail])
     VALUES
           ('1041466913'
           ,'2000'
           ,'example3@example.com'
		   );
GO

INSERT INTO [dbo].[Customer]
           ([Customer_ID]
           ,[Credit]
           ,[Mail])
     VALUES
           ('1041466914'
           ,'2500'
           ,'example4@example.com'
		   );
GO

INSERT INTO [dbo].[Customer]
           ([Customer_ID]
           ,[Credit]
           ,[Mail])
     VALUES
           ('1041466915'
           ,'3000'
           ,'example5@example.com'
		   );
GO

SELECT * FROM [dbo].[Customer]
GO

-- SALESPERSON --
USE [db_oltp]
GO

INSERT INTO [dbo].[SalesPerson]
           ([Cod_sales]
           ,[Salary]
           ,[State])
     VALUES
           ('72481211'
           ,1000
           ,1
		   );
GO

INSERT INTO [dbo].[SalesPerson]
           ([Cod_sales]
           ,[Salary]
           ,[State])
     VALUES
           ('72481212'
           ,2000
           ,0
		   );
GO

INSERT INTO [dbo].[SalesPerson]
           ([Cod_sales]
           ,[Salary]
           ,[State])
     VALUES
           ('72481213'
           ,3000
           ,1
		   );
GO

INSERT INTO [dbo].[SalesPerson]
           ([Cod_sales]
           ,[Salary]
           ,[State])
     VALUES
           ('72481214'
           ,4000
           ,0
		   );
GO

INSERT INTO [dbo].[SalesPerson]
           ([Cod_sales]
           ,[Salary]
           ,[State])
     VALUES
           ('72481215'
           ,5000
           ,1
		   );
GO

SELECT * FROM [dbo].[SalesPerson]
GO


-- BILL TO --
USE [db_oltp]
GO

INSERT INTO [dbo].[Bill To]
           ([Direction_ID]
           ,[Customer_ID]
           ,[Business_name]
		   ,[Location]
           ,[PO_box]
           ,[City]
           ,[State])
     VALUES
           ('D001'
           ,'1041466911'
           ,'ABC CORP'
		   ,'123 Main St'
           ,'1234'
           ,'01'
           ,'01'
		   );
GO

INSERT INTO [dbo].[Bill To]
           ([Direction_ID]
           ,[Customer_ID]
           ,[Business_name]
		   ,[Location]
           ,[PO_box]
           ,[City]
           ,[State])
     VALUES
           ('D002'
           ,'1041466912'
           ,'XYZ Inc'
		   ,'456 Elm St'
           ,'5678'
           ,'02'
           ,'01'
		   );
GO

INSERT INTO [dbo].[Bill To]
           ([Direction_ID]
           ,[Customer_ID]
           ,[Business_name]
		   ,[Location]
           ,[PO_box]
           ,[City]
           ,[State])
     VALUES
           ('D003'
           ,'1041466913'
           ,'Sample Business'
		   ,'789 Oak St'
           ,'9101'
           ,'03'
           ,'01'
		   );
GO

INSERT INTO [dbo].[Bill To]
           ([Direction_ID]
           ,[Customer_ID]
           ,[Business_name]
		   ,[Location]
           ,[PO_box]
           ,[City]
           ,[State])
     VALUES
           ('D004'
           ,'1041466914'
           ,'Tech Solution'
		   ,'101 Pine St'
           ,'1121'
           ,'04'
           ,'01'
		   );
GO

INSERT INTO [dbo].[Bill To]
           ([Direction_ID]
           ,[Customer_ID]
           ,[Business_name]
		   ,[Location]
           ,[PO_box]
           ,[City]
           ,[State])
     VALUES
           ('D005'
           ,'1041466915'
           ,'Retail Store'
		   ,'202 Maple St'
           ,'3141'
           ,'05'
           ,'01'
		   );
GO

SELECT * FROM [dbo].[Bill To]
GO

-- SHIP TO --
USE [db_oltp]
GO

INSERT INTO [dbo].[Ship To]
           ([Name])
     VALUES
           ('Jhon Doe'
		   );
GO

INSERT INTO [dbo].[Ship To]
           ([Name])
     VALUES
           ('Jane Smith'
		   );
GO

INSERT INTO [dbo].[Ship To]
           ([Name])
     VALUES
           ('Acme Corporation'
		   );
GO

INSERT INTO [dbo].[Ship To]
           ([Name])
     VALUES
           ('Global Shipping'
		   );
GO

INSERT INTO [dbo].[Ship To]
           ([Name])
     VALUES
           ('Fast Delivery'
		   );
GO

SELECT * FROM [dbo].[Ship To]
GO

-- HB INVOICE --
USE [db_oltp]
GO

INSERT INTO [dbo].[hb_invoice]
           ([Invoice_NO]
           ,[Cod_sales]
           ,[Customer_ID]
           ,[Delivery_ID]
           ,[Date]
           ,[Tax]
           ,[ShipTo])
     VALUES
           ('69061'
           ,'72481211'
           ,'1041466911'
		   ,1
           ,'2024-07-01'
           ,NULL
           ,'D001'
		   );
GO
INSERT INTO [dbo].[hb_invoice]
           ([Invoice_NO]
           ,[Cod_sales]
           ,[Customer_ID]
           ,[Delivery_ID]
           ,[Date]
           ,[Tax]
           ,[ShipTo])
     VALUES
           ('69062'
           ,'72481212'
           ,'1041466912'
		   ,2
           ,'2024-07-02'
           ,NULL
           ,'D002'
		   );
GO

INSERT INTO [dbo].[hb_invoice]
           ([Invoice_NO]
           ,[Cod_sales]
           ,[Customer_ID]
           ,[Delivery_ID]
           ,[Date]
           ,[Tax]
           ,[ShipTo])
     VALUES
           ('69063'
           ,'72481213'
           ,'1041466913'
		   ,3
           ,'2024-07-03'
           ,NULL
           ,'D003'
		   );
GO

INSERT INTO [dbo].[hb_invoice]
           ([Invoice_NO]
           ,[Cod_sales]
           ,[Customer_ID]
           ,[Delivery_ID]
           ,[Date]
           ,[Tax]
           ,[ShipTo])
     VALUES
           ('69064'
           ,'72481214'
           ,'1041466914'
		   ,4
           ,'2024-07-04'
           ,NULL
           ,'D004'
		   );
GO

INSERT INTO [dbo].[hb_invoice]
           ([Invoice_NO]
           ,[Cod_sales]
           ,[Customer_ID]
           ,[Delivery_ID]
           ,[Date]
           ,[Tax]
           ,[ShipTo])
     VALUES
           ('69065'
           ,'72481215'
           ,'1041466915'
		   ,5
           ,'2024-07-05'
           ,NULL
           ,'D005'
		   );
GO

SELECT * FROM [dbo].[hb_invoice]
GO

-- Category --
USE [db_oltp]
GO

INSERT INTO [dbo].[Category]
           ([Description])
     VALUES
           ('Food')
GO

INSERT INTO [dbo].[Category]
           ([Description])
     VALUES
           ('Clothes')
GO

INSERT INTO [dbo].[Category]
           ([Description])
     VALUES
           ('Sport')
GO

INSERT INTO [dbo].[Category]
           ([Description])
     VALUES
           ('Tools')
GO

INSERT INTO [dbo].[Category]
           ([Description])
     VALUES
           ('Toys')
GO

SELECT * FROM [dbo].[Category]
GO

-- Subcategory --
USE [db_oltp]
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (1
           ,1
           ,'Candies')
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (2
           ,1
           ,'Drinks')
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (3
           ,2
           ,'Jeans')
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (4
           ,2
           ,'Shirts')
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (5
           ,3
           ,'shorts')
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (6
           ,3
           ,'Gym Gloves')
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (7
           ,4
           ,'Hammer')
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (8
           ,4
           ,'Plier')
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (9
           ,5
           ,'Child')
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategory_ID]
           ,[Category_ID]
           ,[description])
     VALUES
           (10
           ,5
           ,'Babies')
GO
SELECT * FROM [dbo].[SubCategory]
GO


-- Product--
USE [db_oltp]
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0001'
           ,1
           ,'Popsicle'
           ,1
           ,2.5
           ,10
           ,1
		   );
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0002'
           ,2
           ,'Coca Cola'
           ,2
           ,3.5
           ,20
           ,1
		   );
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0003'
           ,3
           ,'Levis Jeans'
           ,1
           ,50
           ,13
           ,1
		   );
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0004'
           ,4
           ,'Champions Shirt'
           ,1
           ,40
           ,6
           ,1
		   );
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0005'
           ,5
           ,'Nike Short'
           ,1
           ,45
           ,8
           ,1
		   );
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0006'
           ,6
           ,'Gym Shark Gloves'
           ,2
           ,30
           ,25
           ,1
		   );
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0007'
           ,7
           ,'Sodimac Hammer'
           ,1
           ,7
           ,5
           ,1
		   );
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0008'
           ,8
           ,'Sodimac Plier'
           ,1
           ,15
           ,2
           ,1
		   );
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0009'
           ,9
           ,'Plastic Car'
           ,2
           ,9
           ,31
           ,1
		   );
GO

INSERT INTO [dbo].[Product]
           ([Product_ID]
           ,[SubCategory_ID]
           ,[description]
           ,[Quantity]
           ,[UP]
           ,[Stock]
           ,[Active])
     VALUES
           ('P0010'
           ,10
           ,'Stuffed Animal'
           ,1
           ,18
           ,7
           ,1
		   );
GO


SELECT * FROM [dbo].[Product]
GO

-- Det_invoice --
USE [db_oltp]
GO

INSERT INTO [dbo].[Det_invoice]
           ([Invoice_NO]
           ,[Product_ID]
           ,[Quantity]
           ,[UP]
           ,[Descount])
     VALUES
           ('69061'
           ,'P0001'
           ,1
           ,2.5
           ,0
		   );
GO

INSERT INTO [dbo].[Det_invoice]
           ([Invoice_NO]
           ,[Product_ID]
           ,[Quantity]
           ,[UP]
           ,[Descount])
     VALUES
           ('69062'
           ,'P0003'
           ,1
           ,50
           ,0
		   );
GO

INSERT INTO [dbo].[Det_invoice]
           ([Invoice_NO]
           ,[Product_ID]
           ,[Quantity]
           ,[UP]
           ,[Descount])
     VALUES
           ('69063'
           ,'P0005'
           ,1
           ,45
           ,0
		   );
GO

INSERT INTO [dbo].[Det_invoice]
           ([Invoice_NO]
           ,[Product_ID]
           ,[Quantity]
           ,[UP]
           ,[Descount])
     VALUES
           ('69064'
           ,'P0007'
           ,1
           ,7
           ,0
		   );
GO

INSERT INTO [dbo].[Det_invoice]
           ([Invoice_NO]
           ,[Product_ID]
           ,[Quantity]
           ,[UP]
           ,[Descount])
     VALUES
           ('69065'
           ,'P0009'
           ,2
           ,9
           ,0
		   );
GO

SELECT * FROM [dbo].[Det_invoice]
GO