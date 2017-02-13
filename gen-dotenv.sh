#!/bin/bash

echo 'SSK='$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c50) > .env
echo 'DBPW='$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c16) >> .env
echo "OK! Generated a .env file."
