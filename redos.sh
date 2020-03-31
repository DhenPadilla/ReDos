#!/bin/bash

source ./utils.sh

set +x

URL=""
if [ $1 == "-l" ]
then
  URL="http://localhost:3000"
elif [ $1 == "-r" ]
then
  URL="http://redos.westeurope.cloudapp.azure.com:3000"
fi

#runAjvDos
#runCharsetDos
#runContentTypeParserDos
#runContentDos
#runDebugDos
#runDnsSyncDos
#runForwardedDos
#runHtmlParserDos
#runIsMobileJsDos
#runLodashDos
#runFreshDos
#runMimeDos
runMobileDetectDos
runMomentDos
runNoCaseDos
runParsejsonDos
runPlatformDos
runSlugDos
runStringDos
runToughCookieDos
runTimespanDos
runUnderscoreStringDos
