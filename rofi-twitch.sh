#!/bin/bash
user=""
twitch $(twitchnotifier -c $user -n | rofi -dmenu -markup-rows -i -p "" | grep -Po '.+?(?=\:)')
