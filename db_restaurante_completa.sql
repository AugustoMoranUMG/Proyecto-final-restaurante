/****** Object:  Database [db_restaurante]    Script Date: 5/31/2025 11:20:29 PM ******/
CREATE DATABASE [db_restaurante]  (EDITION = 'GeneralPurpose', SERVICE_OBJECTIVE = 'GP_S_Gen5_1', MAXSIZE = 32 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [db_restaurante] SET COMPATIBILITY_LEVEL = 170
GO
ALTER DATABASE [db_restaurante] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_restaurante] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_restaurante] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_restaurante] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_restaurante] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_restaurante] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_restaurante] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_restaurante] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_restaurante] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_restaurante] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_restaurante] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_restaurante] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_restaurante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_restaurante] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [db_restaurante] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_restaurante] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [db_restaurante] SET  MULTI_USER 
GO
ALTER DATABASE [db_restaurante] SET ENCRYPTION ON
GO
ALTER DATABASE [db_restaurante] SET QUERY_STORE = ON
GO
ALTER DATABASE [db_restaurante] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[tbl_clientes]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_clientes](
	[CodigoCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Nit] [varchar](20) NULL,
	[Telefono] [varchar](15) NULL,
	[Categoria] [varchar](50) NULL,
	[Estado] [varchar](20) NULL,
	[UsuarioSistema] [varchar](50) NULL,
	[FechaSistema] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoCliente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DetallesOrdenes]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DetallesOrdenes](
	[CodigoOrdenDet] [int] IDENTITY(1,1) NOT NULL,
	[CodigoMenu] [int] NULL,
	[Cantidad] [int] NULL,
	[PrecioUnitario] [decimal](10, 2) NULL,
	[PrecioTotal] [decimal](10, 2) NULL,
	[UsuarioSistema] [varchar](20) NULL,
	[FechaSistema] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoOrdenDet] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_empleados]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_empleados](
	[CodigoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Cargo] [varchar](50) NULL,
	[Salario] [decimal](10, 2) NULL,
	[FechaContratacion] [datetime] NULL,
	[Estado] [varchar](20) NULL,
	[UsuarioSistema] [varchar](50) NULL,
	[FechaSistema] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoEmpleado] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_EncabezadoOrdenes]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EncabezadoOrdenes](
	[CodigoOrdenEnc] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCliente] [int] NULL,
	[CodigoMesa] [int] NULL,
	[CodigoEmpleado] [int] NULL,
	[FechaOrden] [datetime] NULL,
	[MontoTotalOrd] [decimal](10, 2) NULL,
	[Estado] [varchar](20) NULL,
	[UsuarioSistema] [varchar](50) NULL,
	[FechaSistema] [datetime] NULL,
	[CodigoOrdenDet] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoOrdenEnc] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Inventarios]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Inventarios](
	[CodigoInventario] [int] IDENTITY(1,1) NOT NULL,
	[CodigoMenu] [int] NULL,
	[Categoria] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaVencimiento] [datetime] NULL,
	[DiasVigencia] [int] NULL,
	[UsuarioSistema] [varchar](50) NULL,
	[FechaSistema] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoInventario] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Menus]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Menus](
	[CodigoMenu] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Ingredientes] [varchar](255) NULL,
	[Categoria] [varchar](50) NULL,
	[Precio] [decimal](10, 2) NULL,
	[Estado] [varchar](20) NULL,
	[UsuarioSistema] [varchar](50) NULL,
	[FechaSistema] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoMenu] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_mesas]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_mesas](
	[CodigoMesa] [int] IDENTITY(1,1) NOT NULL,
	[NumeroMesa] [int] NULL,
	[CantidadSillas] [int] NULL,
	[Ubicacion] [varchar](50) NULL,
	[TipoMesa] [varchar](50) NULL,
	[Estado] [varchar](20) NULL,
	[UsuarioSistema] [varchar](50) NULL,
	[FechaSistema] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoMesa] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PagoOrdenes]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PagoOrdenes](
	[CodigoPago] [int] IDENTITY(1,1) NOT NULL,
	[CodigoOrdenEnc] [int] NULL,
	[MontoOrden] [decimal](10, 2) NULL,
	[Propina] [decimal](10, 2) NULL,
	[Impuesto] [decimal](10, 2) NULL,
	[Descuento] [decimal](10, 2) NULL,
	[TotalPago] [decimal](10, 2) NULL,
	[MetodoPago] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[FechaPago] [datetime] NULL,
	[UsuarioSistema] [varchar](50) NULL,
	[FechaSistema] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoPago] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PagoPlanillas]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PagoPlanillas](
	[CodigoPagoPlanilla] [int] IDENTITY(1,1) NOT NULL,
	[CodigoEmpleado] [int] NULL,
	[FechaPago] [datetime] NULL,
	[Salario] [decimal](10, 2) NULL,
	[Bono] [decimal](10, 2) NULL,
	[HorasExtras] [int] NULL,
	[MontoTotal] [decimal](10, 2) NULL,
	[Estado] [varchar](20) NULL,
	[UsuarioSistema] [varchar](50) NULL,
	[FechaSistema] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoPagoPlanilla] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_usuarios]    Script Date: 5/31/2025 11:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_usuarios](
	[CodigoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[CodigoEmpleado] [int] NULL,
	[NombreUsuario] [varchar](50) NULL,
	[Contrasenia] [varchar](50) NULL,
	[Rol] [varchar](50) NULL,
	[Estado] [varchar](20) NULL,
	[UsuarioSistema] [varchar](50) NULL,
	[FechaSistema] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoUsuario] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_clientes] ON 

INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (1, N'Juan Pérez', N'1234567-8', N'5551-1122', N'Nuevo', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (2, N'María López', N'8899001-2', N'5551-1122 ', N'Frecuente', N'Inactivo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (3, N'Yanet Sacarias', N'223344112', N'44556677', N'Ocasional', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (4, N'Maria lopez', N'8787656', N'55664433', N'Nuevo', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (5, N'Lorenza Colindres', N'667755332', N'09876567', N'Ocasional', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (6, N'Fernando Fuentes', N'9088776', N'33445566', N'Ocasional', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (7, N'Josefina Ramirez', N'90887765', N'33445522', N'Exclusivo', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (8, N'Joseline Martin', N'4455663', N'44556633', N'Nuevo', N'Inactivo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (9, N'Florenio Lol', N'33441132', N'33442211', N'Exclusivo', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_clientes] ([CodigoCliente], [Nombre], [Nit], [Telefono], [Categoria], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (10, N'Elmer Fuentes', N'98765443', N'33445566', N'Frecuente', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_DetallesOrdenes] ON 

INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (1, 1, 4, CAST(50.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (2, 3, 3, CAST(25.00 AS Decimal(10, 2)), CAST(75.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (3, 6, 6, CAST(50.00 AS Decimal(10, 2)), CAST(300.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (4, 10, 5, CAST(50.00 AS Decimal(10, 2)), CAST(250.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (5, 8, 1, CAST(25.00 AS Decimal(10, 2)), CAST(25.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (6, 10, 7, CAST(50.00 AS Decimal(10, 2)), CAST(350.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (7, 9, 2, CAST(35.00 AS Decimal(10, 2)), CAST(70.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (8, 7, 6, CAST(100.00 AS Decimal(10, 2)), CAST(600.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (9, 2, 4, CAST(35.00 AS Decimal(10, 2)), CAST(140.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet], [CodigoMenu], [Cantidad], [PrecioUnitario], [PrecioTotal], [UsuarioSistema], [FechaSistema]) VALUES (10, 5, 1, CAST(100.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_DetallesOrdenes] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_empleados] ON 

INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (1, N'Mario Lopez', N'Gerente', CAST(25000.00 AS Decimal(10, 2)), CAST(N'2024-04-15T00:00:00.000' AS DateTime), N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (2, N'Fernando Fajardo', N'Mesero', CAST(6000.00 AS Decimal(10, 2)), CAST(N'2025-05-05T00:00:00.000' AS DateTime), N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (3, N'Gerber Canahui', N'Gerente', CAST(25000.00 AS Decimal(10, 2)), CAST(N'2025-04-28T00:00:00.000' AS DateTime), N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (4, N'Augusto Morán', N'Gerente', CAST(25000.00 AS Decimal(10, 2)), CAST(N'2025-03-30T00:00:00.000' AS DateTime), N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (5, N'Elmer Fuentes', N'Cajero', CAST(7000.00 AS Decimal(10, 2)), CAST(N'2025-05-13T00:00:00.000' AS DateTime), N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (6, N'Augusto Elmer', N'Gerente', CAST(25000.00 AS Decimal(10, 2)), CAST(N'2025-04-28T00:00:00.000' AS DateTime), N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (7, N'Doctor Edgar', N'Bodeguero', CAST(7500.00 AS Decimal(10, 2)), CAST(N'2025-02-04T00:00:00.000' AS DateTime), N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (8, N'David Fuentes', N'Mesero', CAST(6000.00 AS Decimal(10, 2)), CAST(N'2024-08-13T00:00:00.000' AS DateTime), N'Suspendido', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (9, N'Sara Pineda', N'Cajero', CAST(7000.00 AS Decimal(10, 2)), CAST(N'2024-08-12T00:00:00.000' AS DateTime), N'Suspendido', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_empleados] ([CodigoEmpleado], [Nombre], [Cargo], [Salario], [FechaContratacion], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (10, N'Luis fuentes', N'Cajero', CAST(7000.00 AS Decimal(10, 2)), CAST(N'2023-03-07T00:00:00.000' AS DateTime), N'Despedido', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_EncabezadoOrdenes] ON 

INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (1, 2, 2, 3, CAST(N'2025-05-31T22:54:53.507' AS DateTime), CAST(250.00 AS Decimal(10, 2)), N'Entregado', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (2, 2, 2, 2, CAST(N'2025-05-31T22:55:10.770' AS DateTime), CAST(300.00 AS Decimal(10, 2)), N'Preparacion', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (3, 3, 1, 4, CAST(N'2025-05-31T22:55:18.063' AS DateTime), CAST(140.00 AS Decimal(10, 2)), N'Creado', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (4, 2, 8, 6, CAST(N'2025-05-31T22:58:04.033' AS DateTime), CAST(350.00 AS Decimal(10, 2)), N'Entregado', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (5, 4, 2, 2, CAST(N'2025-05-31T23:05:09.380' AS DateTime), CAST(200.00 AS Decimal(10, 2)), N'Finalizado', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (6, 3, 3, 9, CAST(N'2025-05-31T23:05:09.000' AS DateTime), CAST(300.00 AS Decimal(10, 2)), N'Cancelado', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (7, 3, 7, 8, CAST(N'2025-05-31T22:55:18.000' AS DateTime), CAST(600.00 AS Decimal(10, 2)), N'Preparacion', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (8, 9, 1, 10, CAST(N'2025-05-31T23:05:51.903' AS DateTime), CAST(75.00 AS Decimal(10, 2)), N'Cancelado', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (9, 2, 2, 9, CAST(N'2025-05-31T23:06:00.597' AS DateTime), CAST(350.00 AS Decimal(10, 2)), N'Finalizado', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc], [CodigoCliente], [CodigoMesa], [CodigoEmpleado], [FechaOrden], [MontoTotalOrd], [Estado], [UsuarioSistema], [FechaSistema], [CodigoOrdenDet]) VALUES (10, 3, 7, 3, CAST(N'2025-05-31T23:06:10.587' AS DateTime), CAST(25.00 AS Decimal(10, 2)), N'Creado', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[tbl_EncabezadoOrdenes] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Inventarios] ON 

INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (1, 1, N'Desayunos', 10, CAST(N'2025-05-01T22:40:51.000' AS DateTime), CAST(N'2025-05-15T22:40:51.000' AS DateTime), 14, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (2, 2, N'Postres', 9, CAST(N'2025-05-02T22:41:04.000' AS DateTime), CAST(N'2025-05-15T22:41:04.000' AS DateTime), 13, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (3, 3, N'Bebidas', 8, CAST(N'2025-05-03T22:41:14.000' AS DateTime), CAST(N'2025-05-15T22:41:14.000' AS DateTime), 12, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (4, 4, N'Cenas', 7, CAST(N'2025-05-04T22:41:24.000' AS DateTime), CAST(N'2025-05-15T22:41:24.000' AS DateTime), 11, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (5, 5, N'Almuerzos', 6, CAST(N'2025-05-05T22:41:37.000' AS DateTime), CAST(N'2025-05-15T22:41:37.000' AS DateTime), 10, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (6, 6, N'Desayunos', 5, CAST(N'2025-05-06T22:41:53.000' AS DateTime), CAST(N'2025-05-15T22:41:53.000' AS DateTime), 9, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (7, 7, N'Almuerzos', 4, CAST(N'2025-05-07T22:42:14.000' AS DateTime), CAST(N'2025-05-15T22:42:14.000' AS DateTime), 8, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (8, 8, N'Bebidas', 3, CAST(N'2025-05-08T22:42:38.000' AS DateTime), CAST(N'2025-05-15T22:42:38.000' AS DateTime), 7, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (9, 9, N'Postres', 2, CAST(N'2025-05-09T22:42:51.000' AS DateTime), CAST(N'2025-05-15T22:42:51.000' AS DateTime), 6, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Inventarios] ([CodigoInventario], [CodigoMenu], [Categoria], [Cantidad], [FechaEntrada], [FechaVencimiento], [DiasVigencia], [UsuarioSistema], [FechaSistema]) VALUES (10, 10, N'Desayunos', 1, CAST(N'2025-05-10T22:43:03.000' AS DateTime), CAST(N'2025-05-15T22:43:03.000' AS DateTime), 5, N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_Inventarios] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Menus] ON 

INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (1, N'Pan Francés', N'Harina, agua, sal, levadura', N'Desayunos', CAST(50.00 AS Decimal(10, 2)), N'Activo', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (2, N'Croissant', N'Harina, mantequilla, azúcar, levadura', N'Postres', CAST(35.00 AS Decimal(10, 2)), N'Especial', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (3, N'Café Americano', N'Café molido, agua caliente', N'Bebidas', CAST(25.00 AS Decimal(10, 2)), N'Activo', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (4, N'Pastel de Fresa', N'Harina, huevo, azúcar, fresas, crema', N'Cenas', CAST(75.00 AS Decimal(10, 2)), N'Temporada', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (5, N'Empanada de Pollo', N'Harina, pollo, cebolla, especias', N'Almuerzos', CAST(100.00 AS Decimal(10, 2)), N'Inactivo', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (6, N'Galletas de Avena', N'Avena, azúcar, mantequilla, huevo', N'Desayunos', CAST(50.00 AS Decimal(10, 2)), N'Especial', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (7, N'Pan Integral', N'Harina integral, agua, levadura, sal', N'Almuerzos', CAST(100.00 AS Decimal(10, 2)), N'Temporada', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (8, N'Capuchino', N'Café, leche, espuma de leche', N'Bebidas', CAST(25.00 AS Decimal(10, 2)), N'Activo', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (9, N'Tarta de Manzana', N'Harina, manzana, azúcar, mantequilla', N'Postres', CAST(35.00 AS Decimal(10, 2)), N'Especial', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_Menus] ([CodigoMenu], [Nombre], [Ingredientes], [Categoria], [Precio], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (10, N'Sándwich de Jamón', N'Pan, jamón, queso, lechuga, tomate, mayonesa', N'Desayunos', CAST(50.00 AS Decimal(10, 2)), N'Activo', N'AugustoM', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_mesas] ON 

INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (1, 1, 2, N'Adelante', N'Interior', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (2, 2, 3, N'Arriba', N'Exterior', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (3, 3, 2, N'Entrada', N'Interior', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (4, 4, 5, N'Centro', N'Interior', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (5, 5, 1, N'Entrada', N'Exterior', N'Inactivo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (6, 6, 2, N'Terraza', N'Exterior', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (7, 7, 2, N'Balcon', N'Privadas', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (8, 8, 4, N'Terraza', N'Exterior', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (9, 9, 4, N'Afuera', N'Exterior', N'Inactivo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_mesas] ([CodigoMesa], [NumeroMesa], [CantidadSillas], [Ubicacion], [TipoMesa], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (10, 10, 3, N'Arriba', N'Privadas', N'Inactivo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_mesas] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_PagoOrdenes] ON 

INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (1, 1, CAST(250.00 AS Decimal(10, 2)), CAST(25.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), CAST(297.50 AS Decimal(10, 2)), N'Efectivo', N'Pendiente', CAST(N'2025-05-30T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (2, 2, CAST(300.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), CAST(36.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), CAST(357.00 AS Decimal(10, 2)), N'Tarjeta', N'Parcial', CAST(N'2025-05-30T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (3, 3, CAST(140.00 AS Decimal(10, 2)), CAST(14.00 AS Decimal(10, 2)), CAST(16.80 AS Decimal(10, 2)), CAST(4.20 AS Decimal(10, 2)), CAST(166.60 AS Decimal(10, 2)), N'Transferencia', N'Completado', CAST(N'2025-05-30T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (4, 4, CAST(350.00 AS Decimal(10, 2)), CAST(35.00 AS Decimal(10, 2)), CAST(42.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(427.00 AS Decimal(10, 2)), N'Efectivo', N'Rechazado', CAST(N'2025-05-30T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (5, 5, CAST(200.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), CAST(24.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), CAST(238.00 AS Decimal(10, 2)), N'Tarjeta', N'Pendiente', CAST(N'2025-05-30T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (6, 6, CAST(300.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), CAST(36.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), CAST(357.00 AS Decimal(10, 2)), N'Transferencia', N'Parcial', CAST(N'2025-05-31T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (7, 7, CAST(600.00 AS Decimal(10, 2)), CAST(60.00 AS Decimal(10, 2)), CAST(72.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), CAST(702.00 AS Decimal(10, 2)), N'Efectivo', N'Completado', CAST(N'2025-05-31T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (8, 8, CAST(75.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(90.00 AS Decimal(10, 2)), N'Tarjeta', N'Rechazado', CAST(N'2025-05-31T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (9, 9, CAST(350.00 AS Decimal(10, 2)), CAST(35.00 AS Decimal(10, 2)), CAST(42.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(427.00 AS Decimal(10, 2)), N'Transferencia', N'Pendiente', CAST(N'2025-05-31T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoOrdenes] ([CodigoPago], [CodigoOrdenEnc], [MontoOrden], [Propina], [Impuesto], [Descuento], [TotalPago], [MetodoPago], [Estado], [FechaPago], [UsuarioSistema], [FechaSistema]) VALUES (10, 10, CAST(25.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(0.50 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), N'Efectivo', N'Parcial', CAST(N'2025-05-31T23:07:05.000' AS DateTime), N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_PagoOrdenes] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_PagoPlanillas] ON 

INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (1, 1, CAST(N'2025-05-30T22:47:48.000' AS DateTime), CAST(25000.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(10, 2)), 10, CAST(27650.00 AS Decimal(10, 2)), N'Pendiente', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (2, 2, CAST(N'2025-05-30T22:47:48.000' AS DateTime), CAST(6000.00 AS Decimal(10, 2)), CAST(600.00 AS Decimal(10, 2)), 9, CAST(6735.00 AS Decimal(10, 2)), N'Proceso', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (3, 3, CAST(N'2025-05-30T22:47:48.000' AS DateTime), CAST(25000.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(10, 2)), 8, CAST(27620.00 AS Decimal(10, 2)), N'Pagado', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (4, 4, CAST(N'2025-05-30T22:47:48.000' AS DateTime), CAST(25000.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(10, 2)), 7, CAST(27605.00 AS Decimal(10, 2)), N'Rechazado', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (5, 5, CAST(N'2025-05-30T22:47:48.000' AS DateTime), CAST(7000.00 AS Decimal(10, 2)), CAST(700.00 AS Decimal(10, 2)), 6, CAST(7790.00 AS Decimal(10, 2)), N'Pendiente', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (6, 6, CAST(N'2025-05-31T22:47:48.463' AS DateTime), CAST(25000.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(10, 2)), 5, CAST(27575.00 AS Decimal(10, 2)), N'Proceso', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (7, 7, CAST(N'2025-05-31T22:47:48.463' AS DateTime), CAST(7500.00 AS Decimal(10, 2)), CAST(750.00 AS Decimal(10, 2)), 4, CAST(8310.00 AS Decimal(10, 2)), N'Pagado', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (8, 8, CAST(N'2025-05-31T22:47:48.463' AS DateTime), CAST(6000.00 AS Decimal(10, 2)), CAST(600.00 AS Decimal(10, 2)), 3, CAST(6645.00 AS Decimal(10, 2)), N'Rechazado', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (9, 9, CAST(N'2025-05-31T22:47:48.463' AS DateTime), CAST(7000.00 AS Decimal(10, 2)), CAST(700.00 AS Decimal(10, 2)), 2, CAST(7730.00 AS Decimal(10, 2)), N'Pendiente', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_PagoPlanillas] ([CodigoPagoPlanilla], [CodigoEmpleado], [FechaPago], [Salario], [Bono], [HorasExtras], [MontoTotal], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (10, 10, CAST(N'2025-05-31T22:47:48.463' AS DateTime), CAST(7000.00 AS Decimal(10, 2)), CAST(700.00 AS Decimal(10, 2)), 1, CAST(7715.00 AS Decimal(10, 2)), N'Proceso', N'FernandoF', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_PagoPlanillas] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_usuarios] ON 

INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (1, 1, N'MarioL', N'1234', N'Admin', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (2, 2, N'FernandoF', N'123456', N'Admin', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (3, 3, N'GerberC', N'123456', N'Admin', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (4, 4, N'AugustoM', N'123456', N'Admin', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (5, 5, N'ElmerF', N'Pass$2025', N'Caja', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (6, 6, N'AugustEl', N'4321', N'Bodega', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (7, 7, N'DrEdgar', N'2314', N'Caja', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (8, 8, N'DavidF', N'4567', N'Cocina', N'Inactivo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (9, 9, N'SaraP', N'23456', N'Bodega', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_usuarios] ([CodigoUsuario], [CodigoEmpleado], [NombreUsuario], [Contrasenia], [Rol], [Estado], [UsuarioSistema], [FechaSistema]) VALUES (10, 10, N'LuisF', N'7654', N'Mesa', N'Activo', N'GerberC', CAST(N'2025-05-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_usuarios] OFF
GO
ALTER TABLE [dbo].[tbl_DetallesOrdenes]  WITH CHECK ADD FOREIGN KEY([CodigoMenu])
REFERENCES [dbo].[tbl_Menus] ([CodigoMenu])
GO
ALTER TABLE [dbo].[tbl_EncabezadoOrdenes]  WITH CHECK ADD FOREIGN KEY([CodigoCliente])
REFERENCES [dbo].[tbl_clientes] ([CodigoCliente])
GO
ALTER TABLE [dbo].[tbl_EncabezadoOrdenes]  WITH CHECK ADD FOREIGN KEY([CodigoMesa])
REFERENCES [dbo].[tbl_mesas] ([CodigoMesa])
GO
ALTER TABLE [dbo].[tbl_EncabezadoOrdenes]  WITH CHECK ADD FOREIGN KEY([CodigoEmpleado])
REFERENCES [dbo].[tbl_empleados] ([CodigoEmpleado])
GO
ALTER TABLE [dbo].[tbl_EncabezadoOrdenes]  WITH CHECK ADD FOREIGN KEY([CodigoOrdenDet])
REFERENCES [dbo].[tbl_DetallesOrdenes] ([CodigoOrdenDet])
GO
ALTER TABLE [dbo].[tbl_Inventarios]  WITH CHECK ADD FOREIGN KEY([CodigoMenu])
REFERENCES [dbo].[tbl_Menus] ([CodigoMenu])
GO
ALTER TABLE [dbo].[tbl_PagoOrdenes]  WITH CHECK ADD FOREIGN KEY([CodigoOrdenEnc])
REFERENCES [dbo].[tbl_EncabezadoOrdenes] ([CodigoOrdenEnc])
GO
ALTER TABLE [dbo].[tbl_PagoPlanillas]  WITH CHECK ADD FOREIGN KEY([CodigoEmpleado])
REFERENCES [dbo].[tbl_empleados] ([CodigoEmpleado])
GO
ALTER TABLE [dbo].[tbl_usuarios]  WITH CHECK ADD FOREIGN KEY([CodigoEmpleado])
REFERENCES [dbo].[tbl_empleados] ([CodigoEmpleado])
GO
ALTER DATABASE [db_restaurante] SET  READ_WRITE 
GO
