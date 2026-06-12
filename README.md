# IPL Tournament Management System

Java Dynamic Web Project for Tomcat 10.

## Project Layout

- `src/controller` - servlets and web app listener
- `src/dao` - database connection and SQL access classes
- `src/model` - Java model classes
- `WebContent` - JSP pages and static web files
- `WebContent/WEB-INF/web.xml` - servlet mappings and app startup config
- `WebContent/WEB-INF/lib` - JDBC driver libraries
- `WebContent/WEB-INF/classes` - compiled Java classes
- `database/ipl_db.sql` - MySQL database setup script

Run with Tomcat and open:

`http://localhost:8081/IPL_Tournament_System_Full/`

## Quick Run

1. Run `setup_database.bat` once to create/update the MySQL tables.
2. Run `run_project.bat` to compile Java and start Tomcat.
3. Open `http://localhost:8081/IPL_Tournament_System_Full/`.

Login:

- Username: `admin`
- Password: `admin`

Use `stop_project.bat` to stop Tomcat from another terminal.
