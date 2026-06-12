@echo off
setlocal

set "PROJECT_DIR=%~dp0"
set "CATALINA_HOME=C:\Users\duggi\OneDrive\Documents\programsss\apache-tomcat-10.1.36"
set "CATALINA_BASE=%PROJECT_DIR%.tomcat-run"
set "JAVA_HOME=C:\Program Files\Java\jdk-25.0.2"

call "%CATALINA_HOME%\bin\catalina.bat" stop
pause
