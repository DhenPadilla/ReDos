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

# runAjv
# runCharset
# runContentTypeParser
# runContent
# runDebug
# runDnsSync
# runForwarded
# runFresh
# runHtmlParser
# runIsMobileJs
# runLodash
# runMime
# runMobileDetect
# runMoment
# runNoCase 
# runParsejson 
# runPlatform 
# runSlug 
# runString 
# runToughCookie 
# runTimespan 
# runUnderscoreString 
# runMarked

# runAjvDos
# runCharsetDos
# runContentTypeParserDos
# runContentDos
# runDebugDos
# runDnsSyncDos
# runForwardedDos
# runFreshDos
# runHtmlParserDos
# runIsMobileJsDos
# runLodashDos
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
# runMarkedDos
