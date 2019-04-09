FROM mcr.microsoft.com/dotnet/core/sdk:2.2
RUN apt-get update && apt-get install ca-certificates apt-transport-https -y
RUN apt-key adv --fetch-keys https://dl.yarnpkg.com/debian/pubkey.gpg && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn=1.15.2-1 -y
