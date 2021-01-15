#! /bin/bash

set -e

if [ ! -d "./html" ]; then
  echo "Creating compile directory './html'"
  mkdir html
fi

echo "Compiling..."
emcc hello.c -s WASM=1 -o html/hello.html

echo "Starting web server..."
node app.js

# JOB=$!
# URL="http://localhost:8080"
#
# echo "Opening browser..."
# if which xdg-open >/dev/null; then
#   xdg-open $URL
# elif which gnome-open >/dev/null; then
#   gnome-open $URL
# fi
#
# echo "Forground job $JOB"
# sleep 3
# fg $JOB
