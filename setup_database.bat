@echo off
setlocal

set "PROJECT_DIR=%~dp0"
cd /d "%PROJECT_DIR%"

echo Setting up MySQL database ipl_db...
mysql -uroot -ppassword < database\ipl_db.sql
if errorlevel 1 (
  echo Database setup failed. Check that MySQL is running and root/password is correct.
  pause
  exit /b 1
)

echo Database setup completed.
pause
