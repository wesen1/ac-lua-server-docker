#!/bin/bash

target="$1"
outputDirectory="/ac-server"

# Install the packages that are needed to download and extract the AC-Lua files
apt-get install -y wget
apt-get install -y unzip

# Find the download URL for the target AC-Lua release
if [ "$target" == "local-lua" ]; then
  downloadUrl="https://github.com/wesen1/AC-Lua/releases/download/v1.2.0/AC-Lua-local-lua.zip"
else
  downloadUrl="https://github.com/wesen1/AC-Lua/releases/download/v1.2.0/AC-Lua-lib-lua.zip"
fi

# Download AC-Lua
wget "$downloadUrl" -O "./release.zip"

# Extract the AC-Lua files
unzip -o "release.zip" -d "$outputDirectory"

# Remove the downloaded archive
rm release.zip

# Remove the temporary installed packages
apt-get autoremove -y wget
apt-get autoremove -y unzip
