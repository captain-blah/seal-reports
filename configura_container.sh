apt update && apt install -y wget npm libgdiplus curl zip
npm install gulp
npm install bower
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
apt update && ACCEPT_EULA=Y apt install -y msodbcsql17
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
chmod -R 777 /seal/*
apt install apt-transport-https
apt update && apt install -y dotnet-sdk-3.1
apt install aspnetcore-runtime-3.1
apt install dotnet-runtime-3.1