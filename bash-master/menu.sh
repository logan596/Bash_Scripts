#!/bin/bash

OPTIONS="Hello Quit"
select opt in $OPTIONS; do
    if [ "$opt" = "Quit" ]; then
        echo done
        exit
    elif[ "$opt" = "Hello" ];
        echo Hello World
    else
        clear
        echo bad option
    fi
done
