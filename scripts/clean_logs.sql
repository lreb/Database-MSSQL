-- check free space
EXEC master..xp_fixeddrives

-- lets recycle the SQL Errorlog a few times to claim some space back
EXEC sp_cycle_errorlog WAITFOR DELAY '00:00:02'
GO
EXEC sp_cycle_errorlog WAITFOR DELAY '00:00:02'
GO
EXEC sp_cycle_errorlog WAITFOR DELAY '00:00:02'
GO
EXEC sp_cycle_errorlog WAITFOR DELAY '00:00:02'
GO
EXEC sp_cycle_errorlog WAITFOR DELAY '00:00:02'
GO
EXEC sp_cycle_errorlog WAITFOR DELAY '00:00:02'
GO

EXEC sp_cycle_errorlog
GO


-- check free space again
EXEC master..xp_fixeddrives


SELECT * FROM sys.master_files WHERE type_desc = 'LOG'
        

USE [eKaizen_POC];
GO
-- Shrink the mdf file
DBCC SHRINKFILE(N'eKaizen_POC', 0);
GO
-- Shrink the log.ldf file
DBCC SHRINKFILE(N'eKaizen_POC_log', 0);
GO


SELECT DISTINCT dovs.logical_volume_name AS LogicalName,
dovs.volume_mount_point AS Drive,
CONVERT(INT,dovs.available_bytes/1048576.0) AS FreeSpaceInMB
FROM sys.master_files mf
CROSS APPLY sys.dm_os_volume_stats(mf.database_id, mf.FILE_ID) dovs
ORDER BY FreeSpaceInMB ASC
GO