#!/bin/bash
set -x
if [ -z $BOT_USER ] || [ -z $BOT_PASSWORD ] ; then
    echo "Missing BOT_USER or BOT_PASSWORD Environment variable"
    echo "Skiping Tests"
    exit
fi
echo "Run the testing OAUTH BLAZEMETER TEST"

pip install --upgrade pip wheel
pip install bzt
pip install --upgrade bzt
bzt blazemeter/testing_auth.yml -o modules.blazemeter.eport-name="CircleCI Build ${CIRCLE_BUILD_NUM}" -o modules.blazemeter.token=${BLAZZE_API_KEY}
