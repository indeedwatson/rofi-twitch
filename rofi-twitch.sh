#!/bin/bash
user="tacticcarrotcake"
twitch $(twitchnotifier -c $user -n | rofi -dmenu -markup-rows -i -p "" | grep -Po '.+?(?=\:)')
