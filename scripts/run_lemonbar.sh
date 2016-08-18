#!/bin/bash

geom='1910x27+5+5'
font_text='Cantarell:size=11:style=semibold'
font_image='FontAwesome:size=13'
underline_width=2

~/dotfiles/scripts/lemonbar.py | lemonbar -g ${geom} -f ${font_image} -f ${font_text} -u ${underline_width} | bash 
