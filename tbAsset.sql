USE [InfinityExchange]
GO

/****** Object:  Table [dbo].[Assets]    Script Date: 01/04/2019 16:56:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Assets](
	[AssetID] [varchar](12) NOT NULL,
	[StoreID] [bigint] NOT NULL,
	[AssetStoreID] [varchar](50) NOT NULL,
	[DefaultLanguageID] [bigint] NULL,
	[Name] [varchar](100) NOT NULL,
	[Status] [tinyint] NOT NULL,
	[Version] [varchar](50) NOT NULL,
	[PrimaryCategory] [varchar](50) NOT NULL,
	[SecondaryCategory] [varchar](50) NOT NULL,
	[Rating] [numeric](18, 2) NULL,
	[ListingDate] [date] NULL,
	[ReleaseDate] [date] NULL,
	[CompanyName] [varchar](80) NOT NULL,
	[ImageUrl] [varchar](200) NULL,
	[WebstoreLink] [varchar](100) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Assets] PRIMARY KEY CLUSTERED 
(
	[AssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Assets] ADD  CONSTRAINT [DF_Assets_CreationDate]  DEFAULT (getutcdate()) FOR [CreationDate]
GO

ALTER TABLE [dbo].[Assets]  WITH CHECK ADD  CONSTRAINT [FK_Assets_Stores] FOREIGN KEY([StoreID])
REFERENCES [dbo].[Stores] ([StoreID])
GO

ALTER TABLE [dbo].[Assets] CHECK CONSTRAINT [FK_Assets_Stores]
GO


