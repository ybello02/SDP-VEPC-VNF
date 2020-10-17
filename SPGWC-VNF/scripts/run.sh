#!/usr/bin/env bash

nohup tshark -i eth0 -i lo:p5c -i lo:s5c -w /tmp/spgwc_check_run.pcap 2>&1 > /dev/null
nohup /openair-spgwc/bin/oai_spgwc -o -c /openair-spgwc/etc/spgw_c.conf > spgwc_check_run.log 2>&1
