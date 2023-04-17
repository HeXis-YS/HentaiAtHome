#!/bin/bash -e

if [ ! -d build ]; then
mkdir build
fi

cd src
find . -type f -name "*.java" -printf "$PWD/%h/%f\n" > ../build/srcfiles.txt
cd ..
javac -source 1.8 -target 1.8 -encoding utf-8 -d ./build "@build/srcfiles.txt" -cp junixsocket-server-2.6.2.jar -cp junixsocket-common-2.6.2.jar
