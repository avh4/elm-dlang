#!/bin/bash

set -ex

elm-make --yes --output simple.js tests/Simple.elm
mv simple.js simple.d
ls -l simple.d
dmd simple.d
