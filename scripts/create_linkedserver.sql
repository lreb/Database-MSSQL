USE [master]
GO
/****** Object: LinkedServer [USPLND0QSSRPT01] Script Date: 12/15/2021 3:04:10 PM ******/

EXEC master.dbo.sp_addlinkedserver @server = N'USPLND0QSSRPT01', @srvproduct=N'SQL Server'
/* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'USPLND0QSSRPT01',@useself=N'False',@locallogin=NULL,@rmtuser=N'EkaizenETL',@rmtpassword='QGM1MmITK97cs5QMlFWs'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'sub', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'USPLND0QSSRPT01', @optname=N'remote proc transaction promotion', @optvalue=N'false'
GO