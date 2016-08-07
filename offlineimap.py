#!/usr/bin/env python
import sys
from subprocess import check_output

def get_pass(account):
    return check_output("pass " + account, shell=True).splitlines()[0]

# vim:nu:ai:et:sw=4:ts=8:
