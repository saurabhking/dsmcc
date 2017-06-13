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





vi /opt/ericsson/gvto/dsmcc_tool/bin/lab1_setup_mystro.sh
  244  /opt/ericsson/gvto/dsmcc_tool/bin/lab1_setup_mystro.sh  00:21:BE:95:26:36 STLO-hbo.com-HHST0000000000182586-1514807940000
  
  
  
rpm -i dsmcc_tool-1.0.011-1.x86_64.rpm
cd /opt/ericsson/gvto/dsmcc_tool/bin
/opt/ericsson/gvto/dsmcc_tool/bin/lab1_setup_mystro.sh 00:21:BE:95:26:36 mystroHE-indemand.com-INTL0514000006719832-1399960800000
/opt/ericsson/gvto/dsmcc_tool/bin/lab1_setup_mystro.sh --help

