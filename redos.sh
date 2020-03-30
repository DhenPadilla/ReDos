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

runMimeDos
runMobileDetectDos
runMomentDos
runNoCaseDos