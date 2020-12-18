#!/bin/bash

./prepare-files.sh "lib-lua"
(cd ./lib-lua && docker build -t ac-lua-server-lib-lua .)

./prepare-files.sh "local-lua"
(cd ./local-lua && docker build -t ac-lua-server-local-lua .)
