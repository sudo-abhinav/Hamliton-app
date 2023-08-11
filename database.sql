USE [insertDemoPrint]
GO
/****** Object:  Table [dbo].[emp]    Script Date: 8/11/2023 4:51:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NULL,
	[address] [nvarchar](50) NULL,
	[phonenNo] [nvarchar](10) NULL,
	[email] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salary]    Script Date: 8/11/2023 4:51:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salary](
	[Empid] [int] IDENTITY(1,1) NOT NULL,
	[empSalary] [money] NULL,
	[pf] [money] NULL,
	[hra] [money] NULL,
	[tds] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmploye]    Script Date: 8/11/2023 4:51:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmploye](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FisrtName] [varchar](10) NULL,
	[LastName] [varchar](10) NULL,
	[Address] [varchar](50) NULL,
	[salary] [int] NULL,
	[phoneNO] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[insertData]    Script Date: 8/11/2023 4:51:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertData]
@FisrtName varchar(10),
@LastName varchar(10),
@Address varchar(50),
@salary int,
@phoneNO varchar(10)
as
begin
insert into tblEmploye(FisrtName,LastName,Address,salary,phoneNO)
values(@FisrtName,@LastName,@Address,@salary,@phoneNO);
END

GO
/****** Object:  StoredProcedure [dbo].[insertdataONemp]    Script Date: 8/11/2023 4:51:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertdataONemp]

--@id int not null,
@name Nvarchar(30),
@address Nvarchar(50),
@phoneNo Nvarchar(10),
@email Nvarchar(20)
as
begin
insert into emp(name,address,phonenNo,email)
values(@name,@address,@phoneNo,@email);
end
GO
/****** Object:  StoredProcedure [dbo].[printOutput]    Script Date: 8/11/2023 4:51:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[printOutput]
as
begin
select * from tblEmploye;
end
GO
