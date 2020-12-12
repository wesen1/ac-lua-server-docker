#!/bin/bash

if [ ! -f "./release.zip" ]; then
  wget https://github.com/wesen1/AC-Lua/releases/download/v1.0.0/release.zip
fi

tmpOutputDirectory="./ac-lua-server"
if [ -d "$tmpOutputDirectory" ]; then
  rm -r "$tmpOutputDirectory"
fi
mkdir "$tmpOutputDirectory"

unzip "release.zip" -d "$tmpOutputDirectory"
