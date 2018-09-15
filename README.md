This image is based on *firebird2-super-server_1.5.3.4870-12_amd64.deb* package from Debian Etch for amd64 architecture. It is not intended to be used directly, but rater to serve as a *FROM* image in the final deployment image.
The default password for the __*sysdba*__ user is __*masterkey*__.
The image exports volumes __*/var/log*__ and __*/var/lib/firebird2/system*__. Note that you MUST have *security.fdb* located in the system directory or the server will fail to start.
If you don't plan to change any *security.fdb* entries after deployment it is best to make a new image from this one and do the appropriate changes with *RUN* statements in Dockerfile.
Note that you will need to export a data volume as well.

__Security note: *This image is based on deprecated software, and is no longer supported by Debian. Use with caution!*__