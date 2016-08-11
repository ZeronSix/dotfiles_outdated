#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import subprocess
import sys


def get_current_workspace():
    output = subprocess.run(["wmctrl", "-d"], stdout=subprocess.PIPE,
                            universal_newlines=True).stdout.split("\n")
    i = 0
    for s in output:
        if "*" in s:
            return i
        i += 1
    return i

ICONS = ""

workspace = int(sys.argv[1])
if workspace == get_current_workspace():
    print("True")
print(ICONS[workspace])

