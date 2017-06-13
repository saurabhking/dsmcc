#!/bin/bash

# the following are not likely to need varying that much in lab1
SERVER="10.116.18.101";
PROCIP="10.240.20.3";
CATID="175850";
SVCAREA="1";
#

# these will very often
STBADDR=$1
DELIVID=$2;

# remove args 1 and 2, leaving any remaining to be passed thru
params=( $* )
unset params[0]
unset params[1]
set -- "${params[@]}"


/opt/ericsson/gvto/dsmcc_tool/bin/dsmcc_tool \
mode=setup \
stbaddr=$STBADDR \
processingip=$PROCIP \
serverip=$SERVER \
catId=$CATID \
serviceArea=$SVCAREA \
deliveryId=$DELIVID \
videoDecodeType=000b \
$@
