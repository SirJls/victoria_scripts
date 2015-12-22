#!/usr/bin/env bash
# Script to open Vimprobable instances in tabbed

exec chromium -e $(</tmp/tabbed.xid) "$1" &

