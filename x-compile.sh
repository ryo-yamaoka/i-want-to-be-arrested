#!/bin/bash

for OS in linux windows darwin
do
    for ARCH in amd64 386
    do
    if [ $OS = "windows" ]; then
        GOOS=$OS GOARCH=$ARCH go build -o i-want-to-be-arrested-$OS-$ARCH.exe
    else
        GOOS=$OS GOARCH=$ARCH go build -o i-want-to-be-arrested-$OS-$ARCH
    fi
    done
done
