#!/bin/bash

CUR_IP=$($PWD/getpubip.sh)
PRV_IP=$(cat $PWD/IP)
DDNS_PAS= # Put your name cheap ddns password here
HOST= # put your subdomain here, wildcard put *, do not forget the escape sign if you put * here
DOMAIN= # Put your domain here

if [[ $CUR_IP = $PRV_IP ]]; then
    echo "Same"
else
    echo "Diff"
    curl https://dynamicdns.park-your-domain.com/update\?host\=$HOST\&domain\=$DOMAIN\&password\=$DDNS_PAS\&ip\=$CUR_IP
    rm $PWD/IP
    touch $PWD/IP
    echo $CUR_IP > $PWD/IP
fi
