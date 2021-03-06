
USE [TestDB]
GO


/****** Object:  Table [dbo].[device]    Script Date: 12/13/2021 9:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[device](
	[eui] [nchar](16) NOT NULL,
	[location] [nvarchar](30) NULL,
	[min_temperature] [int] NULL,
	[max_temperature] [int] NULL,
	[min_humidity] [int] NULL,
	[max_humidity] [int] NULL,
	[min_light] [int] NULL,
	[max_light] [int] NULL,
	[minco2] [int] NULL,
	[maxco2] [int] NULL,
	[target_temperature] [int] NULL,
	[target_humidity] [int] NULL,
	[target_light] [int] NULL,
	[targetco2] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sensor_data]    Script Date: 12/13/2021 9:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sensor_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[humidity] [int] NULL,
	[temperature] [int] NULL,
	[light] [int] NULL,
	[co2] [int] NULL,
	[date] [datetime] NOT NULL,
	[eui] [nchar](16) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [GreenHouseDB] SET  READ_WRITE 
GO
