#!/bin/bash
if [ -z $BOT_USER ] || [ -z $BOT_PASSWORD ] ; then
    echo "Missing BOT_USER or BOT_PASSWORD Environment variable"
    echo "Skiping Tests"
    exit
fi
echo "Run the testing OAUTH BLAZEMETER TEST"

pip install --upgrade pip wheel
pip install bzt
bzt blazemeter/testing_auth.yml -o modules.blazemeter.report-name="CircleCI Build Jmeter ${CIRCLE_BUILD_NUM}" -o modules.blazemeter.token=${BLAZZE_API_KEY}
bzt blazemeter/testing_blazem_demo.yml -o modules.blazemeter.report-name="CircleCI Build blaze demo ${CIRCLE_BUILD_NUM}" -o modules.blazemeter.token=${BLAZZE_API_KEY}
