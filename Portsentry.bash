#!/bin/bash
sudo apt-get update
sudo apt-get install portsentry
sed -i 's/RESOLVE_HOST = "0"/RESOLVE_HOST = "1"/' /etc/portsentry/portsentry.conf
sed -i 's/BLOCK_UDP="0"/BLOCK_UDP="1"/' /etc/portsentry/portsentry.conf
sed -i 's/SCAN_TRIGGER="0"/SCAN_TRIGGER="1"/' /etc/portsentry/portsentry.conf   # trigger values 0 is most sensitive, 1 less senstive and 2 not very sensitive

