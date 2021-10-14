# Docker + wordpress + xdebug + webpack live-reload (css,js,php)

Description of installation and use of Docker and Docker Compose to create a temporary environment for creating a new wordpress theme in vscode. 
The environment consist of:
- wordpress:latest
- XDebug
- mysql 5.7
- phpmyadmin
- webpack 5

## Build the application
Install the Docker, manual can be found here ->
[Docker](https://www.docker.com/get-started).
Linux users must also install Docker Compose separately.

### How to start the process of building the environment
In the created docker-wordpress folder there is docker-compose.yml
Start the console and ...

```bash
docker-compose up 
```
> all dependencies will be incurred, this may take a while.

```bash
yarn down
```
> all docker containers will be removed

```bash
yarn dev
```
> runs the development environment at `http://localhost:3000`, js/css files are generated and loaded into wordpress in the folder `wp-content/themes/assets/(css|js)`

```bash
yarn prod
```
> finally generated `css/js` files with separate portions, in the same folder as dev `wp-content/themes/assets/(css|js)`, but this time they are compressed

```bash
yarn dump
```
> dumps the database, 

### Additional information
* wordpress `http://localhost:3000`
* wp-admin `http://localhost/wp-admin` (user/password test)
* phpMyAdmin `http://localhost:8001` (user root, password test)
