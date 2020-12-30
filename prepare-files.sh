#!/bin/bash

target="$1"

if [ "$target" == "local-lua" ]; then
  downloadUrl="https://github.com/wesen1/AC-Lua/releases/download/v1.1.0/AC-Lua-local-lua.zip"
else
  downloadUrl="https://github.com/wesen1/AC-Lua/releases/download/v1.1.0/AC-Lua-lib-lua.zip"
fi


if [ -f "./release.zip" ]; then
  rm "./release.zip"
fi

wget "$downloadUrl" -O "./release.zip"

tmpOutputDirectory="./$target/ac-lua-server"
if [ -d "$tmpOutputDirectory" ]; then
  rm -r "$tmpOutputDirectory"
fi
mkdir "$tmpOutputDirectory"

unzip "release.zip" -d "$tmpOutputDirectory"
