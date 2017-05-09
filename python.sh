#!/bin/bash
clutch_lib_names=(`find . -name "*requirements.txt" -print0 | xargs -0 grep -h clutch`)

for lib in "${clutch_lib_names[@]}"
do
        pip download --index-url=https://$BINTRAY_USER:$BINTRAY_PASSWORD@driveclutch.bintray.com/clutch-python -d clutch_python_libs $lib
done