#!/bin/bash

geom='1900x35+10+8'
font_text='Cantarell:size=13'
font_image='FontAwesome:size=18'
underline_width=3

~/dotfiles/scripts/lemonbar.py | lemonbar -g ${geom} -f ${font_image} -f ${font_text} -u ${underline_width} | bash 
