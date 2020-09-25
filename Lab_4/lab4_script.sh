#!/bin/bash
# Authors : Andres Montealegre
# Date: 09/25/2020
cp /var/log/syslog .
grep -e "Error\|error\|ERROR" syslog | tee error_log_check.txt
sendmail anmo4276@colorado.edu < error_log_check.txt
