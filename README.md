# webpack-wordpress-docker
webpack-wordpress-docker
How to start the process of building the environment
In the created docker-wordpress folder there is docker-compose.yml
Start the console and ...

# docker-compose up 
all dependencies will be incurred, this may take a while.

# yarn down
all docker containers will be removed

# yarn dev
runs the development environment at http://localhost:3000,
js/css files are generated and loaded into wordpress in the folder wp-content/themes/assets/(css|js)

# yarn prod
finally generated css/js files with separate portions, in the same folder as dev wp-content/themes/assets/(css|js), but this time they are compressed

# yarn dump
dumps the database,

# Additional information
wordpress http://localhost:3000
wp-admin http://localhost/wp-admin (user/password test)
phpMyAdmin http://localhost:8001 (user root, password test)
