#!/usr/bin/python
import subprocess, keyring

MOUNT_POINT="/media"
SHARE="//sv005/share"
DOMAIN="TOSCA7"
USERNAME="sjors"
PASSWORD=(keyring.get_password("gmail", "jls"))

myList = [SHARE, MOUNT_POINT, USERNAME, PASSWORD, DOMAIN]

print('Executing python script')
subprocess.call(['bash', '-c', 'mount ' + " ".join(myList)])
print('Executing python script')

