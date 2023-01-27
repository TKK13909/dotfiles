#!/bin/bash

[ -z $1 ] && echo "Error: BAR_NAME is not supplied." && exit 1

#Get config values for script
source "${0%/*}/options.cfg"

#Call the get_status script with the supplied BAR_NAME in polybar's config.ini (therefore, running get_status icon supplies icon as arg 2)

get_status() {
    ${0%/*}/get_status.sh $1 $2
}

prepend() {
    echo "$1$(get_status $1)"
    if [ -n $wait_time ]; then
    	sleep $wait_time
    fi
}

case "$(get_status $1 icon)" in
    "none"|"") prepend '';;
    "browser") prepend ' ';;
    "netflix") prepend 'ﱄ ';;
    "youtube") prepend ' ';;
    "prime") prepend ' ';;
    "spotify") prepend ' ';;
    "vlc") prepend '嗢 ';;
    "mpv") prepend ' ';;
    "kdeconnect") prepend ' ';;
    "corridor") prepend ' ';;
    "rhythmbox") prepend '蓼 ';;
esac

