#!/usr/bin/env bash

echo $sdpNetwork
service mysql start
node ./SDPController/sdpController.js 
