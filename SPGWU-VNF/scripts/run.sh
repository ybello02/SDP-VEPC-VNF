#!/usr/bin/env bash

nohup tshark -i eth0 -w /tmp/spgwu_check_run.pcap 2>&1 > /dev/null
nohup /openair-spgwu/bin/oai_spgwu -o -c /openair-spgwu/etc/spgw_u.conf > spgwu_check_run.log 2>&1
