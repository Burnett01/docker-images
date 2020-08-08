#!/bin/bash

if [ -d /src ]; then
    php -S 0.0.0.0:80 -t /src
fi
