

DEV - Central Standard Time
QA - Central Standard Time
STG - Central Standard Time
TRN - Central Standard Time
PRD - Central Standard Time




DECLARE @TimeZone VARCHAR(50)
EXEC MASTER.dbo.xp_regread 'HKEY_LOCAL_MACHINE',
'SYSTEM\CurrentControlSet\Control\TimeZoneInformation',
'TimeZoneKeyName',@TimeZone OUT
SELECT @TimeZone

select getdate()

 
select * from sys.time_zone_info

SELECT CURRENT_TIMEZONE();  
/* Returned:  
(UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna 
*/

select SYSDATETIMEOFFSET()
select current_timezone()

select systimestamp from dual;
select sessiontimezone from dual;