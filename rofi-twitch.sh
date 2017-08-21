#!/bin/bash
twitch "$(twitchnotifier -c tacticcarrotcake -n | rofi -dmenu -markup-rows -i -p "twitch:")"
