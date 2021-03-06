ALTER TABLE [dbo].[VinculoUsuarioRole] DROP CONSTRAINT [FK_VinculoUsuarioRole_Usuario]
GO
ALTER TABLE [dbo].[VinculoUsuarioRole] DROP CONSTRAINT [FK_VinculoUsuarioRole_Role]
GO
ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [FK_Usuario_Usuario]
GO
ALTER TABLE [dbo].[Jogo] DROP CONSTRAINT [FK_Jogo_Usuario]
GO
/****** Object:  Table [dbo].[VinculoUsuarioRole]    Script Date: 25/02/2021 18:27:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VinculoUsuarioRole]') AND type in (N'U'))
DROP TABLE [dbo].[VinculoUsuarioRole]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 25/02/2021 18:27:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25/02/2021 18:27:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Jogo]    Script Date: 25/02/2021 18:27:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jogo]') AND type in (N'U'))
DROP TABLE [dbo].[Jogo]
GO
/****** Object:  Table [dbo].[LogErro]    Script Date: 25/02/2021 18:27:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogErro]') AND type in (N'U'))
DROP TABLE [dbo].[LogErro]
GO
