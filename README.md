Heroku buildpack: ODBC Driver 18 for SQL Server
=======================

Here is used `msodbcsql18_18.2.1.1` driver. If you need to use another version go to the
[Microsoft packages](https://packages.microsoft.com/ubuntu/20.04/prod/pool/main/), update links in `Aptfile` 
and change `libmsodbcsql` version in `.profile.d/configure-odbc.sh` 

# Installation steps
- Copy `Aptfile` to your project in the root folder and push
- The first buildpack should be heroku-buildpack-apt:
  `heroku buildbpacks:add https://github.com/heroku/heroku-buildpack-apt.git -a <app name>`
- The second buildpack should be heroku/python:
  `heroku buildbpacks:add https://github.com/heroku/heroku-buildpack-python.git -a <app name>`
- Add current buildpack:
  `heroku buildbpacks:add https://github.com/AndriiRomanenko/pyodbc-for-sql-server.git -a <app name>`
- Rebuild your project for creating a new release using these buildpacks
