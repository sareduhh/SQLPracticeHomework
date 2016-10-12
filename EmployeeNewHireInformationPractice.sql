USE [master]
GO

/****** Object:  Table [dbo].[Employee Information]    Script Date: 10/12/2016 10:56:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Employee Information](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[SocialSecurityNumber] [varchar](50) NOT NULL,
	[HomeAddress] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Employee Information] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

