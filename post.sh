#!/bin/bash

rsync -a static/ public/
# sass --no-source-map sass:public
DARTSASS="$HOME/dart-sass/sass"
if [ -f "$DARTSASS" -a -x "$DARTSASS" ]; then
    $DARTSASS sass/site.scss public/site.css
else
    sassc sass/site.scss public/site.css
fi
