#!/bin/sh
# Dylan's Lemonbar Clock

# Source colors
#source ~/dotfiles/scripts/colors/output/colors.sh

battery () {
    battery="$(</sys/class/power_supply/BAT1/capacity)"
    charging="$(</sys/class/power_supply/BAT1/status)"

    case "$battery" in
        [0-9]|10)
            battery="${battery}%  "
        ;;

        1[0-9]|2[0-5])
            battery="${battery}%  "
        ;;

        2[6-9]|3[0-9]|4[0-9]|50)
            battery="${battery}%  "
        ;;

        5[1-9]|6[0-9]|7[0-5])
            battery="${battery}%  "
        ;;

        7[6-9]|8[0-9]|9[0-9]|100)
            battery="${battery}%  "
        ;;
    esac

    [ "$charging" == "Charging" ] && \
        battery="Charging  $battery"

    printf "%s" "$battery"
}

volume() {
	if [[ $(pulseaudio-ctl full-status | awk '{printf $2}') == "yes" ]]; then
		vol="Mute"
		icon=""
	else
		mastervol=$(pulseaudio-ctl full-status | egrep -o "[0-9]+")
		vol="$mastervol%"
		icon=""
	fi

	echo "%{A4:pulseaudio-ctl up:}%{A5:pulseaudio-ctl down:}%{A:pulseaudio-ctl mute:} $icon $vol %{A}%{A}%{A}"
}

music() {
	if [[ $(mpc status | grep -o "\[playing\]") == "[playing]" ]]; then
		song="$(mpc current)"
		playing=" ${song}"
	else
		playing=""
	fi

	echo "%{A:mpc toggle:}%{A4:mpc next:}%{A5:mpc prev:} $playing %{A}%{A}%{A}"
}

while :; do
    echo "       $(neofetch --stdout memory) %{c}$(date "+%a %d %b %H:%M %p")%{r}$(volume) $(music)       %{r}"
	sleep 2s
done |

lemonbar -d -b -g "700x${barheight}+610+15" -f "roboto-8" -o 0 -f "fontawesome-9" -o 0 -B "#F0F0F0" -F "#70838c"
