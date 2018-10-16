#!/bin/bash
cd /home/pi/pyvirtualenv/env27/bin/
source activate && python /home/pi/pyworkspace/ipsniffer/main.py >> /var/log/ipsniffer.log 
