#!/bin/bash

geom='1910x35+5+5'
font_text='Cantarell:size=14'
font_image='FontAwesome:size=18'
underline_width=3

~/dotfiles/scripts/lemonbar.py | lemonbar -g ${geom} -f ${font_image} -f ${font_text} -u ${underline_width} | bash 
