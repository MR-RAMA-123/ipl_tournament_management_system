@echo off
setlocal

set "PROJECT_DIR=%~dp0"
cd /d "%PROJECT_DIR%"

set "CATALINA_HOME=C:\Users\duggi\OneDrive\Documents\programsss\apache-tomcat-10.1.36"
set "CATALINA_BASE=%PROJECT_DIR%.tomcat-run"
set "JAVA_HOME=C:\Program Files\Java\jdk-25.0.2"

echo Compiling Java files...
if not exist "WebContent\WEB-INF\classes" mkdir "WebContent\WEB-INF\classes"

dir /s /b src\*.java > "%TEMP%\ipl_sources.txt"
javac -cp "%CATALINA_HOME%\lib\servlet-api.jar;WebContent\WEB-INF\lib\mysql-connector-j-9.6.0.jar" -d WebContent\WEB-INF\classes @"%TEMP%\ipl_sources.txt"
if errorlevel 1 (
  echo Compile failed. Fix the errors above and run this file again.
  pause
  exit /b 1
)

echo.
echo Starting Tomcat...
echo Open: http://localhost:8081/IPL_Tournament_System_Full/
echo Login: admin / admin
echo.

call "%CATALINA_HOME%\bin\catalina.bat" run
