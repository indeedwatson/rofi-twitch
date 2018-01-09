#!/bin/bash
# Shortcuts for livestreamer channels and quality
twitch=http://www.twitch.tv/

# Some channel names are too long, so you can alias
# your most visited channels, I'm using teamfortresstv
# as an example but you can do as many as you want

case "$1" in
    tftv) channel=teamfortresstv;;
    $1) channel=$1;;
esac

# Choose quality, best by default
case "${2:-b}" in
    b*) quality=best;;
    l*) quality=low;;
    m*) quality=medium;;
    *)
        echo '%s: unkown quality option: %s. Choose one of
        [l]ow
        [m]edium
        [b]est)'"$0" "$2" >&2
        exit 1
        ;;
esac

# Exit if there's no channel input
if [ -z $channel ]; then
    exit
fi

# Exec livestreamer
streamlink $twitch$channel $quality

# Optionally, you can also launch twitch chat for the channel,
# just add a "&" at the end of the streamlink line and uncomment
# the lines below:

# browser=firefox-nightly
# $browser --new-window $twitch$channel/chat?popout= &
