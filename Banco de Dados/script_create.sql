/****** Object:  Table [dbo].[Jogo]    Script Date: 25/02/2021 18:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jogo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[Descricao] [nvarchar](max) NULL,
	[Plataforma] [int] NOT NULL,
	[Observacao] [nvarchar](max) NULL,
	[FotoBase64] [nvarchar](max) NULL,
	[MiniaturaBase64] [nvarchar](max) NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
	[DataAlteracao] [datetime2](7) NULL,
	[Excluido] [bit] NOT NULL,
 CONSTRAINT [PK_Jogo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25/02/2021 18:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeRole] [nvarchar](max) NOT NULL,
	[Descricao] [nvarchar](max) NOT NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
	[DataAlteracao] [datetime2](7) NULL,
	[Excluido] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 25/02/2021 18:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCriadoUsuario] [int] NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Cpf] [nvarchar](max) NULL,
	[Senha] [nvarchar](max) NOT NULL,
	[Telefone] [nvarchar](max) NULL,
	[Observacao] [nvarchar](max) NULL,
	[FotoBase64] [nvarchar](max) NULL,
	[MiniaturaBase64] [nvarchar](max) NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
	[DataAlteracao] [datetime2](7) NULL,
	[Excluido] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VinculoUsuarioRole]    Script Date: 25/02/2021 18:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VinculoUsuarioRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRole] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
	[DataAlteracao] [datetime2](7) NULL,
	[Excluido] [bit] NOT NULL,
 CONSTRAINT [PK_VinculoUsuarioRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogErro]    Script Date: 25/02/2021 20:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogErro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StackTrace] [nvarchar](max) NULL,
	[Source] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[InnerException] [nvarchar](max) NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LogErro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Jogo]  WITH CHECK ADD  CONSTRAINT [FK_Jogo_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Jogo] CHECK CONSTRAINT [FK_Jogo_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Usuario] FOREIGN KEY([IdCriadoUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Usuario]
GO
ALTER TABLE [dbo].[VinculoUsuarioRole]  WITH CHECK ADD  CONSTRAINT [FK_VinculoUsuarioRole_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[VinculoUsuarioRole] CHECK CONSTRAINT [FK_VinculoUsuarioRole_Role]
GO
ALTER TABLE [dbo].[VinculoUsuarioRole]  WITH CHECK ADD  CONSTRAINT [FK_VinculoUsuarioRole_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[VinculoUsuarioRole] CHECK CONSTRAINT [FK_VinculoUsuarioRole_Usuario]
GO
