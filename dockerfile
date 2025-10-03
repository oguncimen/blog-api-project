# Dockerfile (.NET 8 API)
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app .
# Railway dinamik PORT verir, ASPNETCORE_URLS onu dinlemeli
ENV ASPNETCORE_URLS=http://0.0.0.0:${PORT}
# Lokal çalıştırırken 8080’e fallback:
ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["dotnet", "TasksApi.dll"]   # projenin dll adı
