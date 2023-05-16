WORKDIR /var/lib/mysql

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=my_portfolio_db
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=Samukele1997

# Make MySQL listen on all interfaces
RUN echo "[mysqld]" >> /etc/mysql/my.cnf
RUN echo "bind-address = 127.0.0.1" >> /etc/mysql/my.cnf

# Expose port 3306
EXPOSE 3306

# Run mysqld
CMD ["mysqld"]
