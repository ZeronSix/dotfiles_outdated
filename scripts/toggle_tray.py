#!/usr/bin/python
import subprocess

output = subprocess.getoutput('ps -A')
if 'tint2' in output:
    subprocess.run( ["killall", "tint2"] )
else:
    subprocess.run( "tint2" )
