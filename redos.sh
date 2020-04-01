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

###
# Some tests are comment out by default since the dos input
# and the random input have little to no difference 

### Send random data to server
printf "Tests with random data\n"
runAjv
runCharset
runContentTypeParser
runContent
# runDebug             <<< little to no change
runDnsSync
# runForwarded         <<< little to no change
# runFresh             <<< little to no change
runHtmlParser
# runLodash            <<< little to no change
runMime
# runMobileDetect      <<< little to no change
runMoment
runNoCase 
runParsejson 
runPlatform 
runSlug 
runString 
runToughCookie 
runTimespan 
runUnderscoreString 
runMarked

printf "\n\n"

### send crafted(malicious) data to server
printf "Tests with malicious data\n"
runAjvDos
runCharsetDos
runContentTypeParserDos
runContentDos
# runDebugDos         <<< little to no change
runDnsSyncDos
# runForwardedDos     <<< little to no change
# runFreshDos         <<< little to no change
runHtmlParserDos
# runLodashDos        <<< little to no change
runMimeDos
# runMobileDetectDos  <<< little to no change
runMomentDos
runNoCaseDos
runParsejsonDos
runPlatformDos
runSlugDos
runStringDos
runToughCookieDos
runTimespanDos
runUnderscoreStringDos
runMarkedDos
