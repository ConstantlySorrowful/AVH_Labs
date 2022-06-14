#!/bin/bash
cd /home/studio/workspace/avh_labs/certs/
export LD_LIBRARY_PATH=.
export PATH=/home/studio/workspace/avh_labs/certs:$PATH
echo $PATH
./edit-creds.sh
