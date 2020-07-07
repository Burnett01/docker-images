#!/bin/bash

if [ ! -d /lumen/app ]; then
    rm lumen/.gitkeep
    echo "Lumen first-time setup..."
    composer create-project --prefer-dist laravel/lumen lumen
fi

cd /lumen
php -S 0.0.0.0:80 -t public
