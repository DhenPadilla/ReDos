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
    printf "\n"
}

runCharsetDos() {
    curl -d "@./data/charsetdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/charset/dos
    printf "\n"
}

runContentTypeParserDos() {
    curl -d "@./data/contenttypeparserdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/content-type-parser/dos
    printf "\n"
}

runContentDos() {
    curl -d "@./data/contentdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/content/dos
    printf "\n"
}

runDebugDos() {
    curl -d "@./data/debugdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/debug/dos
    printf "\n"
}

runDnsSyncDos() {
    curl -d "@./data/dnssyncdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
    printf "\n"
}

runForwardedDos() {
    curl -d "@./data/forwardeddosdata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
    printf "\n"
}

runFreshDos() {
    curl -d "@./data/freshdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/fresh/dos
    printf "\n"
}

runHtmlParserDos() {
    curl -d "@./data/htmlparserdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/htmlparser/dos
    printf "\n"
}

runIsMobileJsDos() {
    curl -d "@./data/ismobilejsdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/ismobilejs/dos
    printf "\n"
}

runLodashDos() {
    curl -d "@./data/lodashdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/lodash/dos
    printf "\n"
}

runLodashMitigation() {
    curl -d "@./data/lodashdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/lodash/mitigation
    printf "\n"
}

runMimeDos(){
    curl -d "@./data/mimedosdata.json" -H "Content-Type: application/json" -X POST ${URL}/mime/dos
    printf "\n"
}

runMobileDetectDos(){
    curl -d "@./data/mobiledetectdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/mobile_detect/dos
    printf "\n"
}

runMomentDos(){
    curl -d "@./data/momentdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/moment/dos
    printf "\n"
}

runNoCaseDos(){
    curl -d "@./data/nocasedosdata.json" -H "Content-Type: application/json" -X POST ${URL}/no_case/dos
    printf "\n"
}

runParsejsonDos(){
    curl -d "@./data/parsejsondosdata.json" -H "Content-Type: application/json" -X POST ${URL}/parsejson/dos
    printf "\n"
}

runPlatformDos(){
    curl -d "@./data/platformdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/platform/dos
    printf "\n"
}

runSlugDos(){
    curl -d "@./data/slugdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/slug/dos
    printf "\n"
}

runStringDos(){
    curl -d "@./data/stringdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/string/dos
    printf "\n"
}

runToughCookieDos(){
    curl -d "@./data/toughcookiedosdata.json" -H "Content-Type: application/json" -X POST ${URL}/tough_cookie/dos
    printf "\n"
}

runTimespanDos(){
    curl -d "@./data/timespandosdata.json" -H "Content-Type: application/json" -X POST ${URL}/timespan/dos
    printf "\n"
}

runUnderscoreStringDos(){
    curl -d "@./data/underscorestringdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/underscore_string/dos
    printf "\n"
}
#how do I generate multiple text?
runMarkedDos() {
    curl -d "@./data/markeddosdata.json" -H "Content-Type: application/json" -X POST ${URL}/marked/dos
    printf "\n"
}
