#!/bin/bash
set +x

runAjv() {
    curl -d "@data/ajvdata.json" -H "Content-Type: application/json" -X POST ${URL}/ajv/dos
}

runCharset() {
    curl -d "@data/charsetdata.json" -H "Content-Type: application/json" -X POST ${URL}/charset/dos
}

runContentTypeParser() {
    curl -d "@data/contenttypeparserdata.json" -H "Content-Type: application/json" -X POST ${URL}/content-type-parser/dos
}

runContent() {
    curl -d "@data/contentdata.json" -H "Content-Type: application/json" -X POST ${URL}/content/dos
}

runDebug() {
    curl -d "@data/debugdata.json" -H "Content-Type: application/json" -X POST ${URL}/debug/dos
}

runDnsSync() {
    curl -d "@data/dnssyncdata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
}

runForwarded() {
    curl -d "@data/forwardeddata.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
}

runFresh() {
    curl -d "@data/freshdata.json" -H "Content-Type: application/json" -X POST ${URL}/fresh/dos
}

runHtmlParser() {
    curl -d "@data/htmlparserdata.json" -H "Content-Type: application/json" -X POST ${URL}/htmlparser/dos
}

runIsMobileJs() {
    curl -d "@data/ismobilejsdata.json" -H "Content-Type: application/json" -X POST ${URL}/ismobilejs/dos
}

runLodash() {
    curl -d "@data/lodashdata.json" -H "Content-Type: application/json" -X POST ${URL}/lodash/dos
}

runMime(){
    curl -d "@data/mimedata.json" -H "Content-Type: application/json" -X POST ${URL}/mime/dos
}

runMobileDetect(){
    curl -d "@data/mobiledetectdata.json" -H "Content-Type: application/json" -X POST ${URL}/mobile_detect/dos
}

runMoment(){
    curl -d "@data/momentdata.json" -H "Content-Type: application/json" -X POST ${URL}/moment/dos
}

runNoCase(){
    curl -d "@data/nocasedata.json" -H "Content-Type: application/json" -X POST ${URL}/no_case/dos
}

runParsejson(){
    curl -d "@data/parsejsondata.json" -H "Content-Type: application/json" -X POST ${URL}/parsejson/dos
}

runPlatform(){
    curl -d "@data/platformdata.json" -H "Content-Type: application/json" -X POST ${URL}/platform/dos
}

runSlug(){
    curl -d "@data/slugdata.json" -H "Content-Type: application/json" -X POST ${URL}/slug/dos
}

runString(){
    curl -d "@data/stringdata.json" -H "Content-Type: application/json" -X POST ${URL}/string/dos
}

runToughCookie(){
    curl -d "@data/toughcookiedata.json" -H "Content-Type: application/json" -X POST ${URL}/tough_cookie/dos
}

runTimespan(){
    curl -d "@data/timespandata.json" -H "Content-Type: application/json" -X POST ${URL}/timespan/dos
}

runUnderscoreString(){
    curl -d "@data/underscorestringdata.json" -H "Content-Type: application/json" -X POST ${URL}/underscore_string/dos
}
#how do I generate multiple text?
runMarked() {
    curl -d "@data/markeddata.json" -H "Content-Type: application/json" -X POST ${URL}/marked/dos
}
