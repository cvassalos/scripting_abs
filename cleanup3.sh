#!/bin/bash
# Cleanup, version 3
# Warning:
# --------
# This script uses quite a number of feature that will be explained
#+ later on.
# By the time you've finished the first half of the book,
#+ there should be nothing mysterious about it.



LOG_DIR=/var/log
ROOT_UID=0    # Only users with $UID 0 have root privileges
LINES=50      # Default number of lines saved
E_XCD=86      # Can't change directory?
E_NOTROOT=87  # Non-root exit error

# Run as root, of course
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

if [ -n "$1" ]
# Test whether command-line argument is present (non-empty).
then
  lines=$1
else
  lines=$LINES  # Default, if not specified on command-line.
