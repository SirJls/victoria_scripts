#! /bin/bash
# Check for connection file share (silently)
ping -c 1 10.0.0.25 >&-
result=$?
if [[ $result == 0 ]]; then
    bash /home/jls/documents/scripts/auto-mount.sh
else
    echo "failed to mount share, you're not at home!"
fi
