#!/bin/bash
# Dylan's lemonbar workspace script

# Variables that don't need to be in the loop.
focus="~/.config/lemonbar/focus.sh"
bg=$blue
bgfoc=$cyan

startbutton() {
	echo "%{A:~/dotfiles/scripts/openbox/startbutton.sh:}    %{A}"
}

workspace() {
    query=$(wmctrl -d | awk '/\*/ {printf $1}')

	case $query in
		0 )
			echo "%{B#$bgfoc}  www  %{B}%{B#$bg}%{A:$focus 1:}  misc  %{A}%{B}%{B#$bg}%{A:$focus 2:}  dev  %{A}%{B}%{B#$bg}%{A:$focus 3:}  ent  %{A}%{B}%{B#$bg}%{A:$focus 4:}  mus  %{A}%{B}%{B#$bg}%{A:$focus 5:}  art2d  %{A}%{B}%{B#$bg}%{A:$focus 6:}  art3d  %{A}%{B}" ;;
		1 )
			echo "%{B#$bg}%{A:$focus 0:}  www  %{A}%{B}%{B#$bgfoc}  misc  %{B}%{B#$bg}%{A:$focus 2:}  dev  %{A}%{B}%{B#$bg}%{A:$focus 3:}  ent  %{A}%{B}%{B#$bg}%{A:$focus 4:}  mus  %{A}%{B}%{B#$bg}%{A:$focus 5:}  art2d  %{A}%{B}%{B#$bg}%{A:$focus 6:}  art3d  %{A}%{B}" ;;
		2 )
			echo "%{B#$bg}%{A:$focus 0:}  www  %{A}%{B}%{B#$bg}%{A:$focus 1:}  misc  %{B}%{B#$bgfoc}  dev  %{A}%{B}%{B#$bg}%{A:$focus 3:}  ent  %{A}%{B}%{B#$bg}%{A:$focus 4:}  mus  %{A}%{B}%{B#$bg}%{A:$focus 5:}  art2d  %{A}%{B}%{B#$bg}%{A:$focus 6:}  art3d  %{A}%{B}" ;;
		3 )
			echo "%{B#$bg}%{A:$focus 0:}  www  %{A}%{B}%{B#$bg}%{A:$focus 1:}  misc  %{A}%{B}%{B#$bg}%{A:$focus 2:}  dev  %{B}%{B#$bgfoc}  ent  %{A}%{B}%{B#$bg}%{A:$focus 4:}  mus  %{A}%{B}%{B#$bg}%{A:$focus 5:}  art2d  %{A}%{B}%{B#$bg}%{A:$focus 6:}  art3d  %{A}%{B}" ;;
		4 )
			echo "%{B#$bg}%{A:$focus 0:}  www  %{A}%{B}%{B#$bg}%{A:$focus 1:}  misc  %{A}%{B}%{B#$bg}%{A:$focus 2:}  dev  %{A}%{B}%{B#$bg}%{A:$focus 3:}  ent  %{B}%{B#$bgfoc}  mus  %{A}%{B}%{B#$bg}%{A:$focus 5:}  art2d  %{A}%{B}%{B#$bg}%{A:$focus 6:}  art3d  %{A}%{B}" ;;
	  5 )
			echo "%{B#$bg}%{A:$focus 0:}  www  %{A}%{B}%{B#$bg}%{A:$focus 1:}  misc  %{A}%{B}%{B#$bg}%{A:$focus 2:}  dev  %{A}%{B}%{B#$bg}%{A:$focus 3:}  ent  %{A}%{B}%{B#$bg}%{A:$focus 4:}  mus  %{B}%{B#$bgfoc}  art2d  %{A}%{B}%{B#$bg}%{A:$focus 6:}  art3d  %{A}%{B}" ;;
		6 )
			echo "%{B#$bg}%{A:$focus 0:}  www  %{A}%{B}%{B#$bg}%{A:$focus 1:}  misc  %{A}%{B}%{B#$bg}%{A:$focus 2:}  dev  %{A}%{B}%{B#$bg}%{A:$focus 3:}  ent  %{A}%{B}%{B#$bg}%{A:$focus 4:}  mus  %{A}%{B}%{B#$bg}%{A:$focus 5:}  art2d  %{B}%{B#$bgfoc}  art3d  %{A}%{B}" ;;
		* )
			echo "%{B#$bg}%{A:$focus 0:}  www  %{A}%{B}%{B#$bg}%{A:$focus 1:}  misc  %{A}%{B}%{B#$bg}%{A:$focus 2:}  dev  %{A}%{B}%{B#$bg}%{A:$focus 3:}  ent  %{A}%{B}%{B#$bg}%{A:$focus 4:}  mus  %{A}%{B}%{B#$bg}%{A:$focus 5:}  art2d  %{A}%{B}%{B#$bg}%{A:$focus 6:}  art3d  %{A}%{B}" ;;
	esac
}

windowtitle() {
	title=$(xdotool getactivewindow getwindowname | cut -c 1-75)
	echo "$title"
}

while :; do
	echo "$(workspace)"
	sleep .03s
done |

lemonbar -g "840x$barheight" -f "boxxy" -B "#00$black" -F "#$white" | bash
