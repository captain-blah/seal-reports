# seal-reports
Testes com o Seal Reports Server no Docker.

O Seal Report é um framework Open-Source para criar relatórios e dashboards de qualquer database, escrito em C#.

IMPORTANTE: Testes efetuados no Ubuntu 18.04 LTS.

## Pré-requisitos:
* Docker;
* Docker-compose.

## Utilização:
* Clonar o projeto; 
* Dar permissão para execução do arquivo instalar.sh; 
* Executar o script instalar.sh;
* O script irá instalar todos os pré-requisitos local para que o container possa rodar o .NET Core 1.3 com HTTPS. Irá também executar o "docker-compose up" para fazer o build da imagem e iniciar o container com o Seal Report Server;
* Depois de instalado, quando for necessário iniciar a estrutura novamente, basta rodar um "docker-compose up";
* Para verificar se o serviço está funcionando corretamente, o log do container (docker logs sealreport) deverá apresentar a seguinte informação:

```bash
info: Microsoft.Hosting.Lifetime[0]
      Now listening on: https://[::]:443
info: Microsoft.Hosting.Lifetime[0]
      Now listening on: http://[::]:80
info: Microsoft.Hosting.Lifetime[0]
      Application started. Press Ctrl+C to shut down.
info: Microsoft.Hosting.Lifetime[0]
      Hosting environment: Production
info: Microsoft.Hosting.Lifetime[0]
      Content root path: /seal
```

## Links:
[Seal Report](https://sealreport.org/)
[Seal Report demo](https://sealreport.org/demo)
[Instalação do server via .NET Core 1.3](https://github.com/ariacom/Seal-Report/releases/tag/v5.5)
[[Docker container](https://hub.docker.com/_/microsoft-dotnet-core-aspnet/)
[Configuração container com HTTPS](https://github.com/dotnet/dotnet-docker/blob/master/samples/host-aspnetcore-https.md)
[Instalação .NET Core SDK](https://docs.microsoft.com/en-us/dotnet/core/install/linux-package-manager-ubuntu-1910)
