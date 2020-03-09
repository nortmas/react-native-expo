#!/bin/sh
# If the application folder is empty run expo init, otherwise just start.
if [ -z "$(ls -A /home/node/$@)" ] || [ ! -d /home/node/$@ ]; then
    expo init $@ --template blank --name $@ && cd ./$@ && expo start
else
    cd /home/node/$@ && npm start
fi