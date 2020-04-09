# Testes efetuados no Ubuntu 18.04 LTS

# Baixar o .NET Core no host (maquina local):
wget https://packages.microsoft.com/config/ubuntu/19.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-3.1

# Configurar certificado HTTPS no host
sudo dotnet dev-certs https -ep ${HOME}/.aspnet/https/aspnetapp.pfx -p crypticpassword
sudo chmod 777 ${HOME}/.aspnet/https/aspnetapp.pfx
sudo chmod -R 777 ./server