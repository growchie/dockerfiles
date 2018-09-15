# firebird25
Docker file for building docker image with Firebird 2.5 database, based on **Ubuntu 16.04 LTS**.

Before you run the image you need to create 2 volumes for the logs (container dir */var/log*) and for the system2.fdb (container dir */var/lib/firebird/2.5/system*) like:
>docker volume create FIREBIRD_LOGS
docker volume create FIREBIRD_SYSTEM

You need to import the database from the base system using bind mounts to the container dir */data*.

The default admin user is "***sysdba***" with password "***masterkey***". You may change it after that as you see fit.

The image exports port 3050.

Got to the Dockerfile dir and build the image with:
> docker build --compress .

Suggesting you have created two volumes *FIREBIRD_LOGS* and *FIREBIRD_SYSTEM* the run command should be like:
> docker run -itd --restart=always -v FIREBIRD_LOGS:/var/log -v FIREBIRD_SYSTEM:/var/lib/firebird/2.5/system -v /storage:/data -p 3050:3050 firebird25:latest
