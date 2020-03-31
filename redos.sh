#!/bin/bash

source ./utils.sh
source ./utilsnormal.sh

set +x

URL=""
if [ $1 == "-l" ]
then
  URL="http://localhost:3000"
elif [ $1 == "-r" ]
then
  URL="http://redos.westeurope.cloudapp.azure.com:3000"
fi

runCharset
# runLodashDos
# runCharsetDos
# runMimeDos
# runMobileDetectDos
# runMomentDos
# runNoCaseDos
# runParsejsonDos
# runPlatformDos
# runSlugDos
# runStringDos
# runToughCookieDos
# runTimespanDos
# runUnderscoreStringDos
