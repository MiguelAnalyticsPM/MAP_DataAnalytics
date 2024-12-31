USE [db_olap];
GO

-- INSERT -- DIM_CUSTOMER --
INSERT INTO [dbo].[DIM_CUSTOMER] ([RUC], [Nro_identity], [Business_name], [City_Name], [State_Name])
VALUES
('1041466911', '72481211', 'ABC CORP', 'New York City', 'New York'),
('1041466912', '72481212', 'XYZ Inc', 'Los Angeles', 'California'),
('1041466913', '72481213', 'Sample Business', 'Chicago', 'Illinois'),
('1041466914', '72481214', 'Tech Solution', 'Houston', 'Texas'),
('1041466915', '72481215', 'Retail Store', 'Phoenix', 'Arizona');
GO


-- INSERT -- DIM_PRODUCT --
INSERT INTO [dbo].[DIM_PRODUCT] ([No_Prod], [description], [UP], [Stock])
VALUES
('P0001', 'Popsicle', 2.5, 10),
('P0003', 'Levis Jeans', 50.0, 13),
('P0005', 'Nike Short', 45.0, 8),
('P0007', 'Sodimac Hammer', 7.0, 5),
('P0009', 'Plastic Car', 9.0, 31);
GO

-- INSERT -- DIM_SALESPERSON --
INSERT INTO [dbo].[DIM_SALESPERSON] ([Cod_sales], [Names], [Gender], [Birthdate])
VALUES
('72481211', 'Miguel Puerta', 'M', '2002-03-20'),
('72481212', 'Melany Alexandra', 'F', '2002-03-21'),
('72481213', 'Marco Antonio', 'M', '2002-03-22'),
('72481214', 'Mónica Puerta', 'F', '2002-03-23'),
('72481215', 'Manuela Lopez', 'F', '2002-03-24');
GO

-- INSERT -- DIM_TIME --
INSERT INTO [dbo].[DIM_TIME] ([Date], [Year], [Month], [Day], [Semester], [Trimester], [Name_Month], [Name_Day])
VALUES
('2024-07-01', 2024, '07', '01', '2', '3', 'Julio', 'Lunes'),
('2024-07-02', 2024, '07', '02', '2', '3', 'Julio', 'Martes'),
('2024-07-03', 2024, '07', '03', '2', '3', 'Julio', 'Miércoles'),
('2024-07-04', 2024, '07', '04', '2', '3', 'Julio', 'Jueves'),
('2024-07-05', 2024, '07', '05', '2', '3', 'Julio', 'Viernes');
GO

-- INSERT -- INVOICE_SALES --
INSERT INTO [dbo].[INVOICE_SALES] ([ID_Customer], [ID_Product], [ID_Salesperson], [ID_Fecha], [Quantity], [UP], [Descount], [Total])
VALUES
(4, 1, 1, 1, 2, 2.5, 0.0, 5.0), -- Cliente 1 compra Popsicle
(5, 2, 2, 2, 1, 50.0, 0.0, 50.0), -- Cliente 2 compra Levis Jeans
(6, 3, 3, 3, 3, 45.0, 0.1, 121.5), -- Cliente 3 compra Nike Short
(7, 4, 4, 4, 4, 7.0, 0.0, 28.0), -- Cliente 4 compra Sodimac Hammer
(8, 5, 5, 5, 9, 9.0, 0.0, 81.0); -- Cliente 5 compra Plastic Car
GO
