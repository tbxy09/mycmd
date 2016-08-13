set dpath1=D:\BrowserBackup\HistoryUrl3_%date:~0,4%%date:~5,2%%date:~8,2%
copy C:\Users\Administrator.SKY-20150108YSF\AppData\Roaming\SogouExplorer\97c453e093016b2ffdcdaa76ab0c0eb0\HistoryUrl3.db %dpath1%.db
copy C:\Users\Administrator.SKY-20150108YSF\AppData\Roaming\SogouExplorer\97c453e093016b2ffdcdaa76ab0c0eb0\HistoryUrl3.db_base.db %dpath1%_base.db
C:
cd C:\Users\Administrator.SKY-20150108YSF\AppData\Local\Google\Chrome\User Data\Default
set dpath2=D:\BrowserBackup\chromehistory_%date:~0,4%%date:~5,2%%date:~8,2%
copy History %dpath2%
