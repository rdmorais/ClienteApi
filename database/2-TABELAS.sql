USE [ThomasGreg]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 22/03/2020 18:00:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](30) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[Logotipo] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Logradouro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[Endereco] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Logradouro]  WITH CHECK ADD  CONSTRAINT [FK__Logradour__Clien__276EDEB3] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([Id])
GO

ALTER TABLE [dbo].[Logradouro] CHECK CONSTRAINT [FK__Logradour__Clien__276EDEB3]
GO

