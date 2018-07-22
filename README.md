# firebird25
Docker file for building docker image with Firebird 2.5 database, based on Ubuntu 16.04 LTS.
Before usage you need to create 2 volumes for the logs and the system2.fdb.
The default admin user is "sysdba" with password "masterkey".
You need to import the database from the base system using bind mounts.
