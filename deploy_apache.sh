#!/usr/bin/env bash

trap func SIGTERM SIGINT

function func() {
  rm -r /var/www/html/*
  echo leared server
}

# if we are in parent directory, climb down into src directory
if [ -d "src" ]; then
    cd src
fi

# Deploy once initially
touch '/var/www/html/~tmp_from_deployment_script__shouldnt_be_here~' # avoid problems with * not expanding if directory is empty
rm -r /var/www/html/* && cp -r ./* /var/www/html && echo Deployed Successfully
# Deploy on file changes
inotifywait -e close_write,delete,move -m ./ |
while read -r directory events filename; do #detect file changes
  rm -r /var/www/html/* && cp -r ./* /var/www/html && echo Deployed Successfully
done

