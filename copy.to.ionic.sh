#!/bin/sh

cp -frp www/js/*.js ../turbo-vets/www/js
cp -frp www/templates/*.html ../turbo-vets/www/templates
cp -f www/index.html ../turbo-vets/www/
cp -f bower.json ../turbo-vets/bower.json
cp -f .project.turbo-vets ../turbo-vets/.project
