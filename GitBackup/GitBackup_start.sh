#!/bin/bash
cd /home/pi/pyvirtualenv/env27/bin/
source activate && python /home/pi/pyworkspace/GitBackup/main.py >> /var/log/GitBackup.log
