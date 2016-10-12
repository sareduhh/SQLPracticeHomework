USE [master]
GO

/****** Object:  Table [dbo].[Adoption]    Script Date: 10/12/2016 11:18:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Adoption](
	[RecordID] [int] NOT NULL,
	[AdoptionDate] [date] NULL,
	[FamilyID] [int] NOT NULL,
	[AnimalID] [int] NOT NULL,
	[AdoptionOutcome] [varchar](50) NULL,
 CONSTRAINT [PK_Adoption] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Adoption]  WITH CHECK ADD  CONSTRAINT [FK_Adoption_Animal] FOREIGN KEY([AnimalID])
REFERENCES [dbo].[Animal] ([AnimalID])
GO

ALTER TABLE [dbo].[Adoption] CHECK CONSTRAINT [FK_Adoption_Animal]
GO

ALTER TABLE [dbo].[Adoption]  WITH CHECK ADD  CONSTRAINT [FK_Adoption_Family] FOREIGN KEY([FamilyID])
REFERENCES [dbo].[Family] ([FamilyID])
GO

ALTER TABLE [dbo].[Adoption] CHECK CONSTRAINT [FK_Adoption_Family]
GO

