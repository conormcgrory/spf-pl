#!/bin/bash
#
# Script for running full SPF pipeline

# Config path prefix
DIRCNF=./setting_hillman/conf

# Output path prefix
DIROUT=./output/data

# Directory containing executables
DIRBIN=./bin

# Run pipeline
${DIRBIN}/spf-convert ${DIRCNF}-convert.txt ${DIROUT} 
${DIRBIN}/spf-detect  ${DIRCNF}-detect.txt  ${DIROUT}
${DIRBIN}/spf-track   ${DIRCNF}-track.txt   ${DIROUT}
${DIRBIN}/spf-view    ${DIRCNF}-view.txt    ${DIROUT} ${DIROUT}.trk
