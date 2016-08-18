#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import time
import sys
import subprocess
import os
import re

ICONS = ""
FG_ACTIVE="#628b87"
FG_INACTIVE="#777777"
UNDERLINE="#628b87"
BG="#C8000000"
WORKSPACE_BUTTON="%{{A:wmctrl -s {0}:}}   {1}   %{{A}}"

def get_current_workspace():
    output = subprocess.run(["wmctrl", "-d"], stdout=subprocess.PIPE,
                            universal_newlines=True).stdout.split("\n")
    i = 0
    for s in output:
        if "*" in s:
            return i
        i += 1
    return i


def workspace_bar(count):
    current = get_current_workspace()
    for i in range(count):
        if current == i:
            print("%{B#BE09131A}%{+u}", end="")
            print("%{F" + FG_INACTIVE + "}", end="")
        else:
            print("%{F" + FG_INACTIVE + "}", end="")
        print(WORKSPACE_BUTTON.format(i, ICONS[i]), end="")
        print("%{-u}%{B" + BG + "}", end="")


def time_bar():
    print("%{F" + FG_ACTIVE + "}", end="")
    print(" ", end="")
    print("%{F" + FG_INACTIVE + "}", end="")
    print(subprocess.run(["date"], stdout=subprocess.PIPE,
           universal_newlines=True).stdout[:15], end=" %{O5}")


def volume_bar():
    print("%{F" + FG_ACTIVE + "}", end="")
    print(" ", end="")
    print("%{F" + FG_INACTIVE + "}", end="")
    output = subprocess.run(["amixer", "-D", "pulse", "sget", "Master"],
            stdout=subprocess.PIPE, universal_newlines=True).stdout
    print(re.findall("\d*%", output)[0] +"%{O10}" , end="")


def music_bar():
    output = subprocess.run(["deadbeef", "--nowplaying-tf", 
                            "%artist% - %title%"], stdout=subprocess.PIPE, 
                            stderr=subprocess.PIPE,
                            universal_newlines=True).stdout
    if output != " - ":
        print("%{F" + FG_ACTIVE + "}", end="")
        print("%{A4:deadbeef --next:}%{A5:deadbeef --prev:} ", end="")
        print("%{F" + FG_INACTIVE + "}", end="")
        print(output + "%{A}%{A}", end=" %{O5}")

while True:
    print("%{{U{}}}%{{B{}}}".format(UNDERLINE, BG), end="")
    workspace_bar(len(ICONS))
    print("%{r}", end="")
    music_bar()
    volume_bar()
    time_bar()
    print("")
    sys.stdout.flush()
    time.sleep(0.05)
