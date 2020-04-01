#!/bin/bash

set +x

source ./utils.sh

URL=""
if [ $1 == "-l" ]
then
  URL="http://localhost:3000"
elif [ $1 == "-r" ]
then
  URL="http://redos.westeurope.cloudapp.azure.com:3000"
fi

start=`date +%s`
for ((i = 0; i <= 1000; i++))
do
    runLodashDos &> ./output/output_${i}.log & \
done
end=`date +%s`
runtime=$((end-start))
echo "All done!" 
echo "Took: ${runtime}s"