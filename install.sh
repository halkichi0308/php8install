#!/bin/bash
# install php7
sudo apt install php7.4-cli  > /dev/null 2>&1
php -v

php7_source="echo htmlspecialchars('<script>alert(1)</script>', ENT_QUOTES, 'UTF-8');"
php8_source="echo htmlspecialchars('<script>alert(1)</script>', double_encode: false);"

php -r "$php7_source"
php -r "$php8_source"

# install php8
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update > /dev/null 2>&1
sudo apt install php8.0-common php8.0-cli -y

php -r "$php7_source"
php -r "$php8_source"

