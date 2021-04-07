#!/bin/bash

fping $1 >> NmapScanCommonPorts.txt

nmap -sS $1 >> NmapScan.txt

grep -m 2 22 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 25 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 80 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 110 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 113 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 135 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 139 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 143 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 443 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 445 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 465 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 587 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 993 NmapScan.txt >> NmapScanCommonPorts.txt
grep -m 2 995 NmapScan.txt >> NmapScanCommonPorts.txt

