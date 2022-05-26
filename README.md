# Gitpod + Oracle DB + Oracle DevTools Extension demo

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/gitpod-io/oracle-devtools-demo)

This is a repository for demoing connecting to Oracle Databases via their [DevTools Extension](https://marketplace.visualstudio.com/items?itemName=Oracle.oracledevtools).

The following is also installed when you open this repository in Gitpod:
- The Dotnet SDK (the extension requires it to work)
- The SQL*Plus CLI for debugging

## Connecting to the database

### Via the extension

1. Open the Command Palette and run `Oracle: New Connection`
2. Fill in the details with the following:
    - Connection Type: Basic
    - Database host name: localhost
    - Port number: 1521
    - Service name: `XEPDB1`
    - Role: `Default`
    - User name: `gitpod`
    - Password: `gitpod`
3. Hit `Create Connection`
4. You should see the Database connection in the sidebar


### Via SQL*Plus

Run the following in a terminal: 

```bash
sqlplus gitpod/gitpod@//localhost:1521/XEPDB1
```
