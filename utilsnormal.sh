#!/bin/bash
set +x

runAjv() {
    curl -d "@./data/ajvdata.json" -H "Content-Type: application/json" -X POST ${URL}/ajv/dos
    printf "\n"
}

runCharset() {
    curl -d "@./data/charsetdata.json" -H "Content-Type: application/json" -X POST ${URL}/charset/dos
    printf "\n"
}

runContentTypeParser() {
    curl -d "@./data/contenttypeparserdata.json" -H "Content-Type: application/json" -X POST ${URL}/content-type-parser/dos
    printf "\n"
}

runContent() {
    curl -d "@./data/contentdata.json" -H "Content-Type: application/json" -X POST ${URL}/content/dos
    printf "\n"
}

runDebug() {
    curl -d "@./data/debugdata.json" -H "Content-Type: application/json" -X POST ${URL}/debug/dos
    printf "\n"
}

runDnsSync() {
    curl -d "@./data/dnssyncdata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
    printf "\n"
}

runForwarded() {
    curl -d "@./data/forwardeddata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
    printf "\n"
}

runFresh() {
    curl -d "@./data/freshdata.json" -H "Content-Type: application/json" -X POST ${URL}/fresh/dos
    printf "\n"
}

runHtmlParser() {
    curl -d "@./data/htmlparserdata.json" -H "Content-Type: application/json" -X POST ${URL}/htmlparser/dos
    printf "\n"
}

runIsMobileJs() {
    curl -d "@./data/ismobilejsdata.json" -H "Content-Type: application/json" -X POST ${URL}/ismobilejs/dos
    printf "\n"
}

runLodash() {
    curl -d "@./data/lodashdata.json" -H "Content-Type: application/json" -X POST ${URL}/lodash/dos
    printf "\n"
}

runMime(){
    curl -d "@./data/mimedata.json" -H "Content-Type: application/json" -X POST ${URL}/mime/dos
    printf "\n"
}

runMobileDetect(){
    curl -d "@./data/mobiledetectdata.json" -H "Content-Type: application/json" -X POST ${URL}/mobile_detect/dos
    printf "\n"
}

runMoment(){
    curl -d "@./data/momentdata.json" -H "Content-Type: application/json" -X POST ${URL}/moment/dos
    printf "\n"
}

runNoCase(){
    curl -d "@./data/nocasedata.json" -H "Content-Type: application/json" -X POST ${URL}/no_case/dos
    printf "\n"
}

runParsejson(){
    curl -d "@./data/parsejsondata.json" -H "Content-Type: application/json" -X POST ${URL}/parsejson/dos
    printf "\n"
}

runPlatform(){
    curl -d "@./data/platformdata.json" -H "Content-Type: application/json" -X POST ${URL}/platform/dos
    printf "\n"
}

runSlug(){
    curl -d "@./data/slugdata.json" -H "Content-Type: application/json" -X POST ${URL}/slug/dos
    printf "\n"
}

runString(){
    curl -d "@./data/stringdata.json" -H "Content-Type: application/json" -X POST ${URL}/string/dos
    printf "\n"
}

runToughCookie(){
    curl -d "@./data/toughcookiedata.json" -H "Content-Type: application/json" -X POST ${URL}/tough_cookie/dos
    printf "\n"
}

runTimespan(){
    curl -d "@./data/timespandata.json" -H "Content-Type: application/json" -X POST ${URL}/timespan/dos
    printf "\n"
}

runUnderscoreString(){
    curl -d "@./data/underscorestringdata.json" -H "Content-Type: application/json" -X POST ${URL}/underscore_string/dos
    printf "\n"
}
#how do I generate multiple text?
runMarked() {
    curl -d "@./data/markeddata.json" -H "Content-Type: application/json" -X POST ${URL}/marked/dos
    printf "\n"
}
