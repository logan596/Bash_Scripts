#!/usr/bin/env bash

# (( expression ))

val1=$1

if (( $val1 ** 2 > 90 )); then
    (( val2 = $val1 ** 2))

    echo "The square of ${val1} is ${val2}."
fi
