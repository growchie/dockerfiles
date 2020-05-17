# Brief description!

This image is **FROM [mcr.microsoft.com/dotnet/core/aspnet](https://hub.docker.com/_/microsoft-dotnet-core-aspnet/)**, and its tag corresponds to the one set by the original maintainer.

The image includes **libgdiplus** which is required for **namespace System.Drawings** ([Issue #2746](https://github.com/dotnet/core/issues/2746) ), and **fontconfig** and its dependencies that are required for **Magick.Net** ([Issue #247](https://github.com/dlemstra/Magick.NET/issues/247)).

## Build

Dockerfile uses:
>ARG=TIMEZONE

It has a defaut value set to Europe/Sofia. To build for other timezone run:

>docker build --build-arg=TIMEZONE=*YOUR_TIMEZONE* -t *YOUR_LABEL* .

from the dir where the *Dockerfile* is located.

## Usage

The image is intended do be used as runtimage image in *Dockerfile*, as described [here](https://docs.docker.com/engine/examples/dotnetcore/#create-a-dockerfile-for-an-aspnet-core-application).

## Notes

The image has been set for timezone Europe/Sofia. As this is most likely not your case, it is advised that you add the following:

>**RUN** ln  -sf  /usr/share/zoneinfo/{Continent}/{City}  /etc/localtime  && \
>dpkg-reconfigure  -f  noninteractive  tzdata

in your final image, or see **Build** for more info.
 
## Notes on fonts

If you use some unusual fonts you may still need to install them separately, as they might be needed by **Magick.Net** at runtime.
