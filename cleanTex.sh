#!/bin/bash

if [ $# -eq 0 ]; then
    rm *.aux *.log *.nav *.out *.snm *~ *.toc *.vrb 2> /dev/null
    rm -fr auto
elif [[ $# == 1 && $1 == "-a" ]]; then
    dirs=($(ls -d */))
    for dir in "${dirs[@]}"; do
        cd $dir
        rm *.aux *.log *.nav *.out *.snm *~ *.toc *.vrb 2> /dev/null
        rm -fr auto
        cd ..
    done
else
    echo "Use ./$0 [-a]" >&2
fi

