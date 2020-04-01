#!/bin/bash

set +x

URL=""
if [ $1 == "-l" ]
then
  URL="http://localhost:3000"
elif [ $1 == "-r" ]
then
  URL="http://redos.westeurope.cloudapp.azure.com:3000"
fi

start=`date +%s`
for ((i = 0; i <= 100; i++))
do
    curl -H "Content-Type: application/json" -X GET ${URL}/echo
done
end=`date +%s`
runtime=$((end-start))
echo "All done!" 
echo "Took: ${runtime}s"