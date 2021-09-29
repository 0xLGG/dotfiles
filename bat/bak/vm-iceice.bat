@echo off
:: hack to start backgrounded
:: https://stackoverflow.com/a/4666485
if not defined FOO (
  set FOO=1
  start /min "" %~0
  exit /b
)

:: copy to other disk
:: https://stackoverflow.com/a/203116
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
::For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%b%%a)
::echo %mydate%_%mytime%
::mkdir F:\vm\%mydate%_%mytime%
mkdir F:\vm\%mydate%
::xcopy D:\vm\ F:\vm\%mydate%_%mytime%\ /E/H
xcopy D:\vm\ F:\vm\%mydate%\ /E/H


:: cleanup - keep only last MAXBACKUPS recent backups
:: https://stackoverflow.com/questions/28466638/batch-script-to-delete-oldest-folder-in-a-given-folder
set MAXBACKUPS=3
set "delMsg="
:: Preserve only the %MAXBACKUPS% most recent backups.
set "delMsg="
for /f "skip=%MAXBACKUPS% delims=" %%a in (
  'dir "F:\vm\*" /t:c /a:d /o:-d /b'
) do (
  if not defined delMsg (
    set delMsg=1
    echo More than %MAXBACKUPS% found - only the %MAXBACKUPS% most recent folders will be preserved.
  )
  rd /s /q "F:\vm\%%a"
)