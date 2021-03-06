#!/usr/bin/env bash

country=CA
state=ON
locality=London
organization=UWO
organizationalunit=SE
email=abc@xyz.com
password=controller
# generate the root certificates
openssl genrsa -des3 -passout pass:$password -out ca.key 4096
openssl req -new -x509 -days 365 -key ca.key -out ca.crt -passin pass:$password \
    -subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"
service mysql start
sudo node ./SDPController/genCredentials.js 1
sudo node ./SDPController/genCredentials.js 2
sudo node ./SDPController/genCredentials.js 3
