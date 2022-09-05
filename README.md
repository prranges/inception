# Inception

## This project aims to broaden my knowledge of system administration by using Docker. I will virtualize several Docker images and creating them in new virtual machine.

- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (installed and configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains WordPress database.
- A second volume that contains WordPress website files.
- A docker-network that establishes the connection between containers. Containers have to restarting in case of a crash.
- WordPress database, with two users, one of them being the administrator.
- Redis cache for WordPress website in order to properly manage the cache.
- FTP server container pointing to the volume of WordPress website.
- Simple static website in the HTML/CSS.
- An Adminer container.

![inception](https://raw.githubusercontent.com/prranges/readme_files/main/inception_01.png "inception")
![inception](https://raw.githubusercontent.com/prranges/readme_files/main/inception_02.png "inception")
