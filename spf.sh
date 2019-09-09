#!/bin/bash
#
# Script for quickly running different parts of SPF pipeline

# Binary directory
DIRBIN=./bin

# Config directory
DIRCNF=./setting_hillman

# Ouput directory
DIROUT=./output

# Output file prefix
PFXOUT=${DIROUT}/data

run_convert() {
    ${DIRBIN}/spf-convert ${DIRCNF}/conf-convert.txt ${PFXOUT}
};

run_detect() {
    ${DIRBIN}/spf-detect ${DIRCNF}/conf-detect.txt ${PFXOUT}
};

run_track() {
    ${DIRBIN}/spf-track ${DIRCNF}/conf-track.txt ${PFXOUT}
};

run_view() {
    ${DIRBIN}/spf-view ${DIRCNF}/conf-view.txt ${PFXOUT} ${PFXOUT}.trk
};

run_all() {
    run_convert
    run_detect
    run_track
    run_view
};


set -e

case $1 in

    "convert")
        run_convert
        ;;

    "detect")
        run_detect
        ;;

    "track")
        run_track
        ;;

    "view")
        run_view
        ;;

    "all")
        run_all
        ;;

    *)
        echo "'$1' not valid command"
        ;;

esac
