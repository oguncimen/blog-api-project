FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY ./TasksApi/*.csproj ./TasksApi/
RUN dotnet restore ./TasksApi/TasksApi.csproj

COPY . .
RUN dotnet publish ./TasksApi/TasksApi.csproj -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app .
ENV ASPNETCORE_URLS=http://0.0.0.0:${PORT}
ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["dotnet", "TasksApi.dll"]   
