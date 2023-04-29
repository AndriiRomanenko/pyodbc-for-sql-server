#!/bin/bash

export ODBCSYSINI=$HOME/.apt/usr/lib/odbc/conf

echo "[ODBC Driver 18 for SQL Server]
Description=Microsoft ODBC Driver 18 for SQL Server
Driver=${HOME}/.apt/opt/microsoft/msodbcsql18/lib64/libmsodbcsql-18.2.so.1.1
UsageCount=1
" > $ODBCSYSINI/odbcinst.ini
