# Use the official Microsoft SQL Server 2019 image from the Docker Hub
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set environment variables from the .env file
ENV ACCEPT_EULA=${ACCEPT_EULA}
ENV SA_PASSWORD=${SA_PASSWORD}
ENV MSSQL_PID=${MSSQL_PID}

# Expose the SQL Server port
EXPOSE 1433

# Run SQL Server process
CMD ["/opt/mssql/bin/sqlservr"]
