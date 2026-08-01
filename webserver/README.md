# Nginx + PHP Webserver
> Simple Nginx and PHP webserver egg for hosting PHP sites and apps.

Use this egg to run a lightweight webserver with PHP support.

 Optional install/startup features:
 - WORDPRESS=1 downloads and unpacks WordPress into /home/container/www during installation.
 - COMPOSER_STATUS=1 runs Composer on startup (optionally using COMPOSER_MODULES if no composer.json is present).

Base scripts credit: https://github.com/Ym0T/pterodactyl-nginx-egg