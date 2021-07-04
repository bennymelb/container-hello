#!/usr/bin/env bash

# Echo out environment variable HELLO if it exist, if not tell the caller it doesn't exist and exit with error
if [ -z "$HELLO" ]
then
    echo "Environment variable HELLO does not exist, exiting the program..."
    exit 1
else
    echo $HELLO
fi

