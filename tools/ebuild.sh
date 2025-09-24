#!/bin/bash
 
rm -r build

flutter build web --csp --no-web-resources-cdn --profile  --pwa-strategy=none
 
# delete any existing destination directory
rm -r my_extension
mkdir my_extension

cp -r ./build/web/* my_extension/
 
 