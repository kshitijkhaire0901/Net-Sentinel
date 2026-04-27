#!/bin/bash

# ---- THE NETWORK SENTINEL ----
# Purpose : Monitor Infrastructure Connectivity 

TARGET="8.8.8.8"
DOMAIN="google.com"
LOGFILE="network_issues.log"

echo  "----- NETWORK AUDIT: $(date) -----"

#1. Check Gateway Connectivity
if ping -c 1 $TARGET &> /dev/null
then 
   LATENCY=$(ping -c 1 $TARGET | grep 'time=' | awk -F'time=' '{print $2}' | cut -d' '  -f1)
   echo "[PASS] Gateway $TARGET is REACHABLE. Latency: ${LATENCY}ms" 
else 
   echo "[FAIL] Gateway $TARGET is UNREACHABLE!!" | tee -a $LOGFILE
fi 

    
#2. Check DNS Resolution 
if host $DOMAIN &> /dev/null
then 
   echo "[PASS] DNS Resolution for $DOMAIN is functional." 
else 
   echo "[FAIL] DNS Resolution FAILED!!" | tee -a $LOGFILE
fi

echo "-----AUDIT COMPLETE-----"                                      