#!/bin/sh

for REPO in "$@"
do

    cd ${REPO}

    if [ ! -d data ]
    then
	continue
    fi

    echo ${REPO}
    make concordances

    cd -
done

exit 0
