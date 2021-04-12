# Demonstration of creating a shell script to launch

Launch a MySQL container:

* use the --name flag giving the name: mydb
* Using -e to configure:
* MYSQL_ROOT_PASSWORD (letmein)
* MYSQL_USER (worker)
* MYSQL_PASSWORD (for the user) (replicant)

Launch 3 WordPress Apache containers:

* add a tmp directory
* add -v flag for writable volume at /run/apache2
* add a flag for a read-only filesystem
* add a --link flag to mydb
* add -e flags for:
      WORDPRESS_DB_USER (worker)
      WORDPRESS_DB_PASSWORD (replicant)
      WORDPRESS_DB_NAME (appdb1,appdb2,appdb3) (one database for each webserver)
      WORDPRESS_DB_HOST (mydb, the name of the mysql container)
* Use the -p flag to pass port 80 guest to 8000, 8001, and 8002 host: -p 8001:80
