#!/usr/bin/env bash

nohup tshark -i eth0 -i lo:s10 -w /tmp/mme_check_run.pcap 2>&1 > /dev/null
nohup /openair-mme/bin/oai_mme -c /openair-mme/etc/mme.conf > mme_check_run.log 2>&1


