#!/bin/bash
while :; do
	echo "%{c}$(date "+%a %d.%m.%y %H:%M %p")%{c}"
	sleep 1m
done |

lemonbar -g "1920x$barheight" -f "boxxy" -B "#E0$black" -F "#$white"
