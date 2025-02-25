# Microsoft SQL Server Guide

## Table of Contents
1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Connecting to SQL Server](#connecting-to-sql-server)
4. [Managing SQL Server](#managing-sql-server)

## Introduction
Microsoft SQL Server is a relational database management system developed by Microsoft. This guide will help you install, connect, and manage SQL Server.

## Installation

### Windows
1. Download the SQL Server installer from the [Microsoft website](https://www.microsoft.com/en-us/sql-server/sql-server-downloads).
2. Run the installer and follow the setup wizard.
3. Choose the edition you want to install.
4. Follow the prompts to complete the installation.

### Linux
1. Import the public repository GPG keys:
    ```sh
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    ```
2. Register the Microsoft SQL Server Ubuntu repository:
    ```sh
    sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/mssql-server-2019.list)"
    ```
3. Install SQL Server:
    ```sh
    sudo apt-get update
    sudo apt-get install -y mssql-server
    ```
4. Run the setup script:
    ```sh
    sudo /opt/mssql/bin/mssql-conf setup
    ```

## Connecting to SQL Server

### Using SQL Server Management Studio (SSMS)
1. Open SSMS.
2. In the "Connect to Server" dialog box, enter the server name and authentication details.
3. Click "Connect".

### Using Command Line
1. Open a terminal.
2. Use the `sqlcmd` utility to connect:
    ```sh
    sqlcmd -S <server_name> -U <username> -P <password>
    ```

## Managing SQL Server

### Creating a Database
1. Connect to the SQL Server instance.
2. Run the following SQL command:
    ```sql
    CREATE DATABASE MyDatabase;
    ```

### Backing Up a Database
1. Connect to the SQL Server instance.
2. Run the following SQL command:
    ```sql
    BACKUP DATABASE MyDatabase TO DISK = '/path/to/backup/file.bak';
    ```

### Restoring a Database
1. Connect to the SQL Server instance.
2. Run the following SQL command:
    ```sql
    RESTORE DATABASE MyDatabase FROM DISK = '/path/to/backup/file.bak';
    ```

For more detailed information, refer to the [official documentation](https://docs.microsoft.com/en-us/sql/sql-server/).
