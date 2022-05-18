FROM wordpress:php8.1

COPY ./config/db.php /var/www/html/wp-content/db.php
COPY ./config/wp-config.php /var/www/html/wp-config.php
RUN touch /var/www/html/wpsqlite.db
RUN chown www-data:www-data /var/www/html/wpsqlite.db
RUN chmod 644 /var/www/html/wpsqlite.db