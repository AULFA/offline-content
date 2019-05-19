#!/bin/sh -e

rm -rfv out || exit 1
./offline.auth.sh > offline.auth || exit 1
exec java -jar bin/au.org.libraryforall.opdsget.cmdline-0.0.1-SNAPSHOT-main.jar @offline.txt
