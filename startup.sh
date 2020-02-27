#!/bin/sh
# If the application folder is empty run expo init, otherwise just start.
if [ -z "$(ls -A /project/$@)" ]; then
    cd /project && expo init $@ --template blank --name $@ && cd ./$@ && expo start
else
    cd /project/$@ && expo start
fi