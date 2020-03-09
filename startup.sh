#!/bin/sh
# If the application folder is empty run expo init, otherwise just start.
if [ -z "$(ls -A /$@)" ] || [ ! -d /$@ ]; then
    expo init $@ --template blank --name $@ && cd ./$@ && expo start
else
    cd ./$@ && expo start
fi